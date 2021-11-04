.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final ATTESTATION_BLOCK_PACKAGE_DIGESTS:B = 0x41t

.field private static final ATTESTATION_BLOCK_PACKAGE_DIGEST_COUNT:B = 0x40t

.field private static final ATTESTATION_BLOCK_PACKAGE_NAMES:B = 0x42t

.field private static final ATTESTATION_BLOCK_PACKAGE_VERSIONS:B = 0x43t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGESTS:B = 0x45t

.field private static final ATTESTATION_BLOCK_SIGNATURE_DIGEST_COUNT:B = 0x44t

.field private static final ATTESTATION_BLOCK_UCM_PLUGIN_SIGNATURE:B = 0x47t

.field private static final ATTESTATION_BLOCK_UCM_VENDOR_ID:B = 0x46t

.field private static final ATTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_VERSION:Ljava/lang/String; = "3.0"

.field private static final DEBUG:Z = true

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DEFAULT_DEVICE_CERTIFICATE_ALIAS:Ljava/lang/String; = "Samsung_default"

.field private static final ESE_CHIP_VENDOR:Ljava/lang/String; = ""

.field private static final ESE_CHIP_VERSION:Ljava/lang/String; = ""

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field public static final INTENT_KLMS_KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

.field public static final KAP_ID_FIRST_LICENSE_ACTIVATION:I = 0x1

.field public static final KAP_ID_LAST_LICENSE_DEACTIVATION:I = 0x2

.field public static final KAP_ID_LICENSE_STATUS_RESPONSE:I = 0x3

.field private static final KAP_KAP_MODE_PERSIST_STATUS:Ljava/lang/String; = "persist.sys.kap.status"

.field public static final KAP_LICENSE_STATUS_REQUEST:Ljava/lang/String; = "KAP_LICENSE_STATUS_REQUEST"

.field public static final KAP_MODE_STATUS:Ljava/lang/String; = "KAP_RP_MODE_STATUS"

.field public static final KAP_NOTIFICATION_ACTION:Ljava/lang/String; = "com.samsung.action.knox.kap.KAP_NOTIFICATION"

.field private static final KAP_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.kap.date"

.field public static final KNOX_ATTESTATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_CCM_CSR_PROFILES_DIR:Ljava/lang/String; = "/data/misc/tz_ccm/csr_profiles"

.field private static final TIMA_CCM_DB_FILE:Ljava/lang/String; = "/data/misc/tz_ccm/key_db"

.field private static final TIMA_CCM_DIR:Ljava/lang/String; = "/data/misc/tz_ccm"

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_ISV_APK_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_CERT_DIGEST_MAX:I = 0xa

.field private static final TIMA_ISV_PACKAGE_NAME_MAX:I = 0x32

.field private static final TIMA_KEYSTORE_20_MAX_KEY_LENGTH:I = 0x20

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_SERVICE_NAME:Ljava/lang/String; = "tima"

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsBuildUpdate:Z

.field private mIsLicenseActive:Z

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mODEEnabled:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;

.field private timaThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 121
    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 277
    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 209
    iput v0, p0, Lcom/android/server/TimaService;->mODEEnabled:I

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    .line 2444
    new-instance v0, Lcom/android/server/TimaService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 2489
    new-instance v0, Lcom/android/server/TimaService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$2;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

    .line 278
    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    .line 279
    const-string/jumbo v0, "ro.config.tima"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 280
    .local v0, "timaEnabled":Z
    const-string v1, "TimaService"

    if-eqz v0, :cond_ba

    .line 284
    iget-object v2, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    .line 285
    new-instance v2, Landroid/os/HandlerThread;

    invoke-direct {v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    .line 286
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 287
    iget-object v2, p0, Lcom/android/server/TimaService;->timaThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 288
    .local v2, "timaLooper":Landroid/os/Looper;
    if-eqz v2, :cond_b4

    .line 289
    new-instance v3, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v3, p0, v2}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    .line 295
    invoke-direct {p0}, Lcom/android/server/TimaService;->isCCMRedirectionModel()Z

    move-result v3

    if-nez v3, :cond_61

    .line 296
    const-string v3, "CCM"

    invoke-virtual {p0, v3}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 302
    :cond_61
    const-string v3, "ESECOMM"

    invoke-virtual {p0, v3}, Lcom/android/server/TimaService;->loadTlcServer(Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/android/server/TimaService;->initCCMDatabase()Z

    .line 307
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 308
    invoke-direct {p0}, Lcom/android/server/TimaService;->isLicenseActive()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 310
    const-string/jumbo v3, "ro.crypto.state"

    const-string/jumbo v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "unencrypted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 311
    const-string/jumbo v3, "vold.decrypt"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "trigger_restart_framework"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trigger_reset_main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 312
    :cond_a5
    invoke-direct {p0}, Lcom/android/server/TimaService;->handleBuildUpdate()V

    .line 315
    :cond_a8
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiver()V

    .line 316
    invoke-direct {p0}, Lcom/android/server/TimaService;->registerBroadcastReceiverForKap()V

    .line 317
    const-string v3, "TIMA: Start TimaService"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v2    # "timaLooper":Landroid/os/Looper;
    goto :goto_bf

    .line 291
    .restart local v2    # "timaLooper":Landroid/os/Looper;
    :cond_b4
    const-string v3, "Failed getting looper for TimaServiceHandler"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 321
    .end local v2    # "timaLooper":Landroid/os/Looper;
    :cond_ba
    const-string v2, "TIMA: Start TimaService, only available gettimaversion"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_bf
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TimaService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TimaService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/TimaService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->notifyKapEnabled()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TimaService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->setKapBuildProp()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/TimaService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->isCCMRedirectionModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/TimaService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->getCCMVersionBoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TimaService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/TimaService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/TimaService;->startAttestationBoot()V

    return-void
.end method

.method static native ccm_register_for_default_cert(II)J
.end method

.method private checkAttestationAccessPermission(I)Z
    .registers 13
    .param p1, "callerUid"    # I

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAttestationAccessPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-direct {p0}, Lcom/android/server/TimaService;->warnIfCallerUsingLegacyAttestation()V

    .line 565
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 566
    const-string v0, "Context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return v2

    .line 569
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/TimaService;->getUserId(I)I

    move-result v0

    .line 570
    .local v0, "userId":I
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "packageNames":[Ljava/lang/String;
    if-eqz v3, :cond_cd

    array-length v4, v3

    if-nez v4, :cond_39

    goto/16 :goto_cd

    .line 577
    :cond_39
    :try_start_39
    aget-object v4, v3, v2

    .line 578
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 579
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_a2

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-nez v6, :cond_4e

    goto :goto_a2

    .line 583
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caller SEInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const-string/jumbo v7, "spay"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_6d} :catch_b7

    const-string v7, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const/4 v8, 0x1

    const-string v9, "Need Permission : com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    if-nez v6, :cond_7a

    .line 586
    :try_start_74
    iget-object v6, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return v8

    .line 589
    :cond_7a
    const-string/jumbo v6, "request from platform signed app, so need to check license activation"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_80} :catch_b7

    .line 591
    :try_start_80
    iget-object v6, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v10, "checkAttestationAccessPermission"

    invoke-static {v6, v10}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/SecurityException; {:try_start_80 .. :try_end_87} :catch_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80 .. :try_end_87} :catch_b7

    .line 592
    return v8

    .line 593
    :catch_88
    move-exception v6

    .line 594
    .local v6, "e":Ljava/lang/SecurityException;
    :try_start_89
    const-string v10, "Need to check license activation"

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    nop

    .end local v6    # "e":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/TimaService;->isActivated(I)Z

    move-result v6
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_89 .. :try_end_93} :catch_b7

    if-eqz v6, :cond_a1

    .line 599
    :try_start_95
    iget-object v6, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/SecurityException; {:try_start_95 .. :try_end_9a} :catch_9c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_9a} :catch_b7

    .line 603
    nop

    .line 604
    return v8

    .line 600
    :catch_9c
    move-exception v6

    .line 601
    .restart local v6    # "e":Ljava/lang/SecurityException;
    :try_start_9d
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return v2

    .line 606
    .end local v6    # "e":Ljava/lang/SecurityException;
    :cond_a1
    return v2

    .line 580
    :cond_a2
    :goto_a2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get application info or seinfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_b6} :catch_b7

    .line 581
    return v2

    .line 609
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_b7
    move-exception v4

    .line 610
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v2

    .line 572
    :cond_cd
    :goto_cd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get package name of callerUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return v2
.end method

.method private static checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 499
    const-string v0, "TimaService"

    .line 500
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {p0, v1, v2, v0, p1}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 508
    const/4 v1, 0x0

    return v1

    .line 501
    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 506
    throw v1
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;

    .line 1297
    if-eqz p0, :cond_8

    .line 1298
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_8

    .line 1300
    :catch_6
    move-exception v0

    goto :goto_9

    .line 1302
    :cond_8
    :goto_8
    nop

    .line 1303
    :goto_9
    return-void
.end method

.method private enforcePermission()Z
    .registers 3

    .line 1022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1024
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    .line 1025
    const/4 v1, 0x1

    return v1

    .line 1028
    :cond_a
    const/4 v1, 0x0

    return v1
.end method

.method private getBlobVersion()I
    .registers 3

    .line 2523
    invoke-direct {p0}, Lcom/android/server/TimaService;->isSVBEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2524
    const/16 v0, 0x9

    return v0

    .line 2526
    :cond_9
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKnoxVersion()I

    move-result v0

    .line 2527
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_14

    .line 2528
    const/16 v1, 0x8

    return v1

    .line 2529
    :cond_14
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1a

    .line 2530
    const/4 v1, 0x7

    return v1

    .line 2532
    :cond_1a
    const/4 v1, 0x6

    return v1
.end method

.method private declared-synchronized getCCMVersionBoot()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 1107
    :try_start_1
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1110
    .local v0, "timaEnabled":Z
    const-string v1, "TimaService"

    const-string/jumbo v2, "in getCCMVersionBoot"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1115
    const-string v1, "3.0"
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_3f

    monitor-exit p0

    return-object v1

    .line 1120
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_2b
    :try_start_2b
    const-string v2, "TimaService"

    const-string/jumbo v3, "getCCMVersionBoot - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_3f

    .line 1121
    monitor-exit p0

    return-object v1

    .line 1125
    :cond_35
    :try_start_35
    const-string v2, "TimaService"

    const-string/jumbo v3, "getCCMVersionBoot - ro.config.tima is not ture"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3f

    .line 1126
    monitor-exit p0

    return-object v1

    .line 1106
    .end local v0    # "timaEnabled":Z
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCallerPackageName(I)Ljava/lang/String;
    .registers 6
    .param p1, "pid"    # I

    .line 2562
    const/4 v0, 0x0

    .line 2564
    .local v0, "packageName":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 2565
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    .line 2568
    .end local v1    # "am":Landroid/app/ActivityManager;
    goto :goto_19

    .line 2566
    :catch_11
    move-exception v1

    .line 2567
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TimaService"

    const-string v3, "Failed to getCallerPackageName"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_19
    return-object v0
.end method

.method private getCollectorApkDigest(Ljava/lang/String;I)[B
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculate APK Digest for package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :try_start_16
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    .line 2111
    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2113
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2114
    .local v2, "baseApkPath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/TimaService;->getDigestOfFile(Ljava/lang/String;)[B

    move-result-object v3

    .line 2115
    .local v3, "apkDigest":[B
    if-eqz v3, :cond_59

    .line 2116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK file MessageDigest: \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    .line 2118
    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2116
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISV apkDigest size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 2122
    :cond_59
    const-string v4, "ISV apkDigest is null"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_5e} :catch_5f

    .line 2125
    :goto_5e
    return-object v3

    .line 2126
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "baseApkPath":Ljava/lang/String;
    .end local v3    # "apkDigest":[B
    :catch_5f
    move-exception v0

    .line 2127
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2129
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCollectorBlob(I)[B
    .registers 21
    .param p1, "callerUid"    # I

    .line 2133
    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    .line 2134
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const-string v3, "TimaService"

    const/16 v4, 0x3e8

    if-ne v4, v0, :cond_1c

    .line 2135
    const-string v0, "This call was from System UID app."

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_1a8

    .line 2142
    .local v0, "systemUidBlob":[B
    return-object v0

    .line 2146
    .end local v0    # "systemUidBlob":[B
    :cond_1c
    iget-object v0, v1, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v4, p1

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 2147
    .local v5, "packageNames":[Ljava/lang/String;
    array-length v0, v5

    const/16 v6, 0xa

    if-le v0, v6, :cond_2e

    goto :goto_2f

    :cond_2e
    array-length v6, v5

    .line 2150
    .local v6, "digestCount":I
    :goto_2f
    mul-int/lit8 v0, v6, 0x20

    add-int/lit8 v7, v0, 0x8

    .line 2151
    .local v7, "blobSize":I
    new-array v8, v7, [B

    .line 2152
    .local v8, "blob":[B
    const/4 v0, 0x0

    .line 2155
    .local v0, "idx":I
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "idx":I
    .local v9, "idx":I
    const/16 v10, 0x40

    aput-byte v10, v8, v0

    .line 2156
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "idx":I
    .restart local v0    # "idx":I
    aput-byte v2, v8, v9

    .line 2157
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "idx":I
    .restart local v9    # "idx":I
    const/4 v10, 0x2

    aput-byte v10, v8, v0

    .line 2158
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "idx":I
    .restart local v0    # "idx":I
    ushr-int/lit8 v10, v6, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 2159
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "idx":I
    .restart local v9    # "idx":I
    int-to-byte v10, v6

    aput-byte v10, v8, v0

    .line 2162
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "idx":I
    .restart local v0    # "idx":I
    const/16 v10, 0x41

    aput-byte v10, v8, v9

    .line 2163
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "idx":I
    .restart local v9    # "idx":I
    mul-int/lit8 v10, v6, 0x20

    ushr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v0

    .line 2164
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "idx":I
    .restart local v0    # "idx":I
    mul-int/lit8 v10, v6, 0x20

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 2166
    invoke-direct/range {p0 .. p1}, Lcom/android/server/TimaService;->getUserId(I)I

    move-result v9

    .line 2168
    .local v9, "userId":I
    const/4 v10, 0x0

    move/from16 v18, v10

    move v10, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v10, "idx":I
    :goto_71
    if-ge v0, v6, :cond_a3

    .line 2169
    aget-object v11, v5, v0

    invoke-direct {v1, v11, v9}, Lcom/android/server/TimaService;->getCollectorApkDigest(Ljava/lang/String;I)[B

    move-result-object v11

    .line 2170
    .local v11, "apkDigest":[B
    if-eqz v11, :cond_9b

    .line 2171
    array-length v12, v11

    invoke-static {v11, v2, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2172
    array-length v12, v11

    add-int/2addr v10, v12

    .line 2173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ISV blob has been filled with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 2176
    :cond_9b
    const-string v12, "ISV apkDigest is null"

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    .end local v11    # "apkDigest":[B
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 2180
    .end local v0    # "i":I
    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ISV blob total size="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v8

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v11, v0

    .line 2186
    .local v11, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_be
    invoke-virtual {v11, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_c2

    .line 2189
    goto :goto_dd

    .line 2187
    :catch_c2
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 2188
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in getCollectorApkDigest : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_dd
    invoke-direct {v1, v11, v5, v6}, Lcom/android/server/TimaService;->writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V

    .line 2192
    invoke-direct {v1, v11, v5, v6, v9}, Lcom/android/server/TimaService;->writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;II)V

    .line 2193
    aget-object v0, v5, v2

    invoke-direct {v1, v11, v0, v6, v9}, Lcom/android/server/TimaService;->writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;II)V

    .line 2195
    const-string v0, "UCM ODE blob"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSPropertiesHelper;->getODESettingsConfiguration()Landroid/os/Bundle;

    move-result-object v12

    .line 2197
    .local v12, "odeData":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 2198
    .local v0, "odeVendorId":[B
    const/4 v13, 0x0

    .line 2199
    .local v13, "odeSignature":[B
    const/4 v14, 0x0

    .line 2200
    .local v14, "odeVendorIdLength":I
    const/4 v15, 0x0

    .line 2202
    .local v15, "odeSignatureLength":I
    if-eqz v12, :cond_174

    .line 2203
    const-string/jumbo v2, "odeEnabled"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v16, v0

    .end local v0    # "odeVendorId":[B
    .local v16, "odeVendorId":[B
    const/4 v0, 0x1

    if-ne v2, v0, :cond_159

    .line 2204
    iput v0, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    .line 2205
    const-string/jumbo v0, "id"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    .local v0, "tmp":Ljava/lang/String;
    if-eqz v0, :cond_12a

    .line 2207
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2208
    .end local v16    # "odeVendorId":[B
    .local v2, "odeVendorId":[B
    array-length v14, v2

    .line 2209
    move-object/from16 v17, v0

    .end local v0    # "tmp":Ljava/lang/String;
    .local v17, "tmp":Ljava/lang/String;
    const/16 v0, 0x46

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2210
    ushr-int/lit8 v0, v14, 0x8

    int-to-byte v0, v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2211
    int-to-byte v0, v14

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2212
    const/4 v4, 0x0

    invoke-virtual {v11, v2, v4, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object v0, v2

    goto :goto_134

    .line 2214
    .end local v2    # "odeVendorId":[B
    .end local v17    # "tmp":Ljava/lang/String;
    .restart local v0    # "tmp":Ljava/lang/String;
    .restart local v16    # "odeVendorId":[B
    :cond_12a
    move-object/from16 v17, v0

    .end local v0    # "tmp":Ljava/lang/String;
    .restart local v17    # "tmp":Ljava/lang/String;
    const-string/jumbo v0, "odeVendorId is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    .line 2217
    .end local v16    # "odeVendorId":[B
    .local v0, "odeVendorId":[B
    :goto_134
    const-string/jumbo v2, "odeSignature"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v13

    .line 2218
    if-eqz v13, :cond_152

    .line 2219
    array-length v15, v13

    .line 2220
    const/16 v2, 0x47

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2221
    ushr-int/lit8 v2, v15, 0x8

    int-to-byte v2, v2

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2222
    int-to-byte v2, v15

    invoke-virtual {v11, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2223
    const/4 v2, 0x0

    invoke-virtual {v11, v13, v2, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15b

    .line 2225
    :cond_152
    const-string/jumbo v2, "odeSignature is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 2203
    .end local v0    # "odeVendorId":[B
    .end local v17    # "tmp":Ljava/lang/String;
    .restart local v16    # "odeVendorId":[B
    :cond_159
    move-object/from16 v0, v16

    .line 2228
    .end local v16    # "odeVendorId":[B
    .restart local v0    # "odeVendorId":[B
    :goto_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ODESettingsConfiguration mODEEnabled : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/TimaService;->mODEEnabled:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v0

    goto :goto_17c

    .line 2230
    :cond_174
    move-object/from16 v16, v0

    .end local v0    # "odeVendorId":[B
    .restart local v16    # "odeVendorId":[B
    const-string/jumbo v0, "odeData is null"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :goto_17c
    :try_start_17c
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    move-object v2, v0

    .line 2234
    .local v2, "returnBytes":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimaService.getCollectorBlob() returnBytes.length "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_17c .. :try_end_196} :catchall_19f

    .line 2235
    nop

    .line 2237
    nop

    .line 2239
    :try_start_198
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19b} :catch_19c

    .line 2240
    :goto_19b
    goto :goto_19e

    :catch_19c
    move-exception v0

    goto :goto_19b

    .line 2235
    :goto_19e
    return-object v2

    .line 2237
    .end local v2    # "returnBytes":[B
    :catchall_19f
    move-exception v0

    move-object v2, v0

    .line 2239
    :try_start_1a1
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    .line 2240
    :goto_1a4
    goto :goto_1a7

    :catch_1a5
    move-exception v0

    goto :goto_1a4

    .line 2242
    :goto_1a7
    throw v2

    :array_1a8
    .array-data 1
        0x40t
        0x0t
        0x2t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x44t
        0x0t
        0x2t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
    .end array-data
.end method

.method private getDigestOfBytes([B)[B
    .registers 8
    .param p1, "inBytes"    # [B

    .line 2346
    const/4 v0, 0x0

    .line 2347
    .local v0, "dis":Ljava/security/DigestInputStream;
    const/4 v1, 0x0

    .line 2348
    .local v1, "bis":Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 2350
    .local v2, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_3
    const-string v3, "SHA256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 2351
    .local v3, "md":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    .line 2352
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v2, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v0, v4

    .line 2353
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 2355
    :goto_1b
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    .line 2356
    .local v4, "b":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_39

    .line 2357
    nop

    .line 2359
    .end local v4    # "b":I
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_27} :catch_80
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_27} :catch_6c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_27} :catch_58
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_3c
    .catchall {:try_start_3 .. :try_end_27} :catchall_3a

    .line 2370
    nop

    .line 2371
    :try_start_28
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2372
    nop

    .line 2373
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2374
    nop

    .line 2375
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_33} :catch_34

    .line 2378
    goto :goto_38

    .line 2376
    :catch_34
    move-exception v5

    .line 2377
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 2359
    .end local v5    # "e":Ljava/io/IOException;
    :goto_38
    return-object v4

    .line 2358
    :cond_39
    goto :goto_1b

    .line 2369
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catchall_3a
    move-exception v3

    goto :goto_96

    .line 2366
    :catch_3c
    move-exception v3

    .line 2367
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    .line 2370
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_48

    .line 2371
    :try_start_42
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_48

    .line 2376
    :catch_46
    move-exception v3

    goto :goto_53

    .line 2372
    :cond_48
    :goto_48
    if-eqz v1, :cond_4d

    .line 2373
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2374
    :cond_4d
    if-eqz v2, :cond_57

    .line 2375
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_52} :catch_46

    goto :goto_57

    .line 2377
    .local v3, "e":Ljava/io/IOException;
    :goto_53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2379
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_94

    .line 2378
    :cond_57
    :goto_57
    goto :goto_94

    .line 2364
    :catch_58
    move-exception v3

    .line 2365
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_59
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_3a

    .line 2370
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_61

    .line 2371
    :try_start_5e
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2372
    :cond_61
    if-eqz v1, :cond_66

    .line 2373
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2374
    :cond_66
    if-eqz v2, :cond_57

    .line 2375
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6b} :catch_46

    goto :goto_57

    .line 2362
    :catch_6c
    move-exception v3

    .line 2363
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_3a

    .line 2370
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_75

    .line 2371
    :try_start_72
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2372
    :cond_75
    if-eqz v1, :cond_7a

    .line 2373
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2374
    :cond_7a
    if-eqz v2, :cond_57

    .line 2375
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7f} :catch_46

    goto :goto_57

    .line 2360
    :catch_80
    move-exception v3

    .line 2361
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_81
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_3a

    .line 2370
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v0, :cond_89

    .line 2371
    :try_start_86
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2372
    :cond_89
    if-eqz v1, :cond_8e

    .line 2373
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2374
    :cond_8e
    if-eqz v2, :cond_57

    .line 2375
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_93} :catch_46

    goto :goto_57

    .line 2380
    :goto_94
    const/4 v3, 0x0

    return-object v3

    .line 2370
    :goto_96
    if-eqz v0, :cond_9e

    .line 2371
    :try_start_98
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_9e

    .line 2376
    :catch_9c
    move-exception v4

    goto :goto_a9

    .line 2372
    :cond_9e
    :goto_9e
    if-eqz v1, :cond_a3

    .line 2373
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2374
    :cond_a3
    if-eqz v2, :cond_ad

    .line 2375
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a8} :catch_9c

    goto :goto_ad

    .line 2377
    .local v4, "e":Ljava/io/IOException;
    :goto_a9
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ae

    .line 2378
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ad
    :goto_ad
    nop

    .line 2379
    :goto_ae
    throw v3
.end method

.method private getDigestOfFile(Ljava/lang/String;)[B
    .registers 8
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 2385
    const/4 v0, 0x0

    .line 2386
    .local v0, "dis":Ljava/security/DigestInputStream;
    const/4 v1, 0x0

    .line 2388
    .local v1, "fileStream":Ljava/io/InputStream;
    :try_start_2
    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2389
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 2390
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    move-object v0, v3

    .line 2391
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 2392
    .local v3, "buf":[B
    :goto_18
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v0, v3, v4, v5}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_21

    goto :goto_18

    .line 2393
    :cond_21
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_25} :catch_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_25} :catch_5b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_25} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_35
    .catchall {:try_start_2 .. :try_end_25} :catchall_33

    .line 2404
    nop

    .line 2405
    :try_start_26
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2406
    nop

    .line 2407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_2e

    .line 2410
    goto :goto_32

    .line 2408
    :catch_2e
    move-exception v5

    .line 2409
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 2393
    .end local v5    # "e":Ljava/io/IOException;
    :goto_32
    return-object v4

    .line 2403
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "buf":[B
    :catchall_33
    move-exception v2

    goto :goto_7b

    .line 2400
    :catch_35
    move-exception v2

    .line 2401
    .local v2, "e":Ljava/lang/Exception;
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_33

    .line 2404
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_41

    .line 2405
    :try_start_3b
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_41

    .line 2408
    :catch_3f
    move-exception v2

    goto :goto_47

    .line 2406
    :cond_41
    :goto_41
    if-eqz v1, :cond_4b

    .line 2407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_46} :catch_3f

    goto :goto_4b

    .line 2409
    .local v2, "e":Ljava/io/IOException;
    :goto_47
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2411
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_79

    .line 2410
    :cond_4b
    :goto_4b
    goto :goto_79

    .line 2398
    :catch_4c
    move-exception v2

    .line 2399
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_33

    .line 2404
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_55

    .line 2405
    :try_start_52
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2406
    :cond_55
    if-eqz v1, :cond_4b

    .line 2407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_3f

    goto :goto_4b

    .line 2396
    :catch_5b
    move-exception v2

    .line 2397
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_33

    .line 2404
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_64

    .line 2405
    :try_start_61
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2406
    :cond_64
    if-eqz v1, :cond_4b

    .line 2407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_3f

    goto :goto_4b

    .line 2394
    :catch_6a
    move-exception v2

    .line 2395
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_6b
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_33

    .line 2404
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    if-eqz v0, :cond_73

    .line 2405
    :try_start_70
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    .line 2406
    :cond_73
    if-eqz v1, :cond_4b

    .line 2407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_78} :catch_3f

    goto :goto_4b

    .line 2412
    :goto_79
    const/4 v2, 0x0

    return-object v2

    .line 2404
    :goto_7b
    if-eqz v0, :cond_83

    .line 2405
    :try_start_7d
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->close()V

    goto :goto_83

    .line 2408
    :catch_81
    move-exception v3

    goto :goto_89

    .line 2406
    :cond_83
    :goto_83
    if-eqz v1, :cond_8d

    .line 2407
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_88} :catch_81

    goto :goto_8d

    .line 2409
    .local v3, "e":Ljava/io/IOException;
    :goto_89
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    .line 2410
    .end local v3    # "e":Ljava/io/IOException;
    :cond_8d
    :goto_8d
    nop

    .line 2411
    :goto_8e
    throw v2
.end method

.method private getImei()Ljava/lang/String;
    .registers 3

    .line 2416
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2417
    const-string v1, "INVALID IMEI"

    .line 2418
    .local v1, "imei":Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 2419
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 2420
    if-nez v1, :cond_21

    .line 2421
    iget-object v0, p0, Lcom/android/server/TimaService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 2422
    if-nez v1, :cond_21

    .line 2423
    const-string v1, "INVALID IMEI"

    .line 2428
    :cond_21
    return-object v1
.end method

.method private getKapState()Z
    .registers 11

    .line 1821
    const-string v0, "TimaService"

    const-string/jumbo v1, "kapstate"

    const/4 v2, 0x0

    .line 1823
    .local v2, "ret":Z
    :try_start_6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 1827
    .local v3, "columns":[Ljava/lang/String;
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1828
    .local v4, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v5, "knox_active_protection"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1831
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_39

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_39

    .line 1832
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1833
    .local v7, "cv":Landroid/content/ContentValues;
    if-eqz v7, :cond_39

    .line 1834
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1835
    .local v1, "iret":Ljava/lang/Integer;
    if-eqz v1, :cond_39

    .line 1836
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_3a

    const/4 v9, 0x1

    if-ne v8, v9, :cond_38

    move v6, v9

    :cond_38
    move v2, v6

    .line 1843
    .end local v1    # "iret":Ljava/lang/Integer;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_39
    goto :goto_54

    .line 1840
    :catch_3a
    move-exception v1

    .line 1842
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKapState failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKapState ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return v2
.end method

.method private getKnoxVersion()I
    .registers 5

    .line 2536
    const/4 v0, -0x1

    .line 2538
    .local v0, "version":I
    :try_start_1
    const-string v1, "28"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 2542
    goto :goto_27

    .line 2539
    :catch_9
    move-exception v1

    .line 2540
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get KnoxVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimaService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2543
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    return v0
.end method

.method private getMac()Ljava/lang/String;
    .registers 3

    .line 2432
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 2433
    .local v0, "semWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTimaStatus()Ljava/lang/String;
    .registers 3

    .line 1043
    const-string v0, "TimaService"

    const-string v1, "TIMA: in getTimaStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-static {}, Lcom/android/server/TimaService;->get_tima_Version()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserId(I)I
    .registers 3
    .param p1, "callerUid"    # I

    .line 558
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 559
    .local v0, "userId":I
    return v0
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_tima_Version()Ljava/lang/String;
.end method

.method private handleBuildUpdate()V
    .registers 6

    .line 2002
    const-string v0, "TimaService"

    const-string v1, "NONE"

    :try_start_4
    const-string/jumbo v2, "ro.build.date"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2004
    .local v2, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.kap.date"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2008
    .local v1, "oldBuild":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleBuildUpdate - currentBuild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", oldBuild: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", license: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_61

    .line 2013
    const-string/jumbo v3, "handleBuildUpdate - updated"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iput-boolean v4, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    .line 2016
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_55

    .line 2017
    invoke-virtual {p0, v4, v3}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 2018
    invoke-direct {p0, v4, v3}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 2020
    :cond_55
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    if-eqz v0, :cond_61

    .line 2022
    invoke-direct {p0, v3, v3}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 2023
    invoke-virtual {p0, v4, v3}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 2024
    iput-boolean v3, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_62

    .line 2029
    .end local v1    # "oldBuild":Ljava/lang/String;
    .end local v2    # "currentBuild":Ljava/lang/String;
    :cond_61
    goto :goto_66

    .line 2027
    :catch_62
    move-exception v0

    .line 2028
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2030
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_66
    return-void
.end method

.method private initCCMDatabase()Z
    .registers 8

    .line 1073
    const-string v0, "TimaService"

    const-string v1, "TIMA: in initCCMDatabase"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v1, 0x1

    :try_start_8
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/tz_ccm"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v2, "dbDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 1078
    const-string v3, "TIMA: in initCCMDatabase - creating CCM directory"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1080
    invoke-virtual {v2, v1, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1081
    invoke-virtual {v2, v1, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1084
    :cond_24
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/misc/tz_ccm/csr_profiles"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v3, "csrProfileDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1086
    const-string v5, "TIMA: in initCCMDatabase - creating CCM CSR profile directory"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1088
    invoke-virtual {v3, v1, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1089
    invoke-virtual {v3, v1, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1093
    :cond_3f
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/misc/tz_ccm/key_db"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v5, "dbFile":Ljava/io/File;
    const-string v6, "TIMA: in initCCMDatabase - creating CCM DB file"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1097
    invoke-virtual {v5, v1, v4}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_51} :catch_53

    .line 1101
    nop

    .end local v2    # "dbDir":Ljava/io/File;
    .end local v3    # "csrProfileDir":Ljava/io/File;
    .end local v5    # "dbFile":Ljava/io/File;
    goto :goto_5c

    .line 1098
    :catch_53
    move-exception v2

    .line 1099
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Exception in initCCMDatabase"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1103
    .end local v2    # "e":Ljava/io/IOException;
    :goto_5c
    return v1
.end method

.method private isActivated(I)Z
    .registers 11
    .param p1, "callerUid"    # I

    .line 616
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "packageNames":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "TimaService"

    if-eqz v1, :cond_5d

    array-length v4, v1

    if-nez v4, :cond_1a

    goto :goto_5d

    .line 624
    :cond_1a
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1b
    array-length v5, v1

    if-ge v4, v5, :cond_5c

    .line 625
    aget-object v5, v1, v4

    .line 626
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_52

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_52

    .line 630
    :cond_29
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v6, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "pkgName"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v7, "LICENSE"

    invoke-virtual {v0, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 634
    .local v7, "cnt":I
    if-lez v7, :cond_59

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is activated"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v2, 0x1

    return v2

    .line 627
    .end local v6    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "cnt":I
    :cond_52
    :goto_52
    const-string/jumbo v6, "packageName is empty, so continue..."

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    nop

    .line 624
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 639
    .end local v4    # "i":I
    :cond_5c
    return v2

    .line 620
    :cond_5d
    :goto_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get package name of callerUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v2
.end method

.method private isCCMRedirectionModel()Z
    .registers 2

    .line 2517
    const/4 v0, 0x1

    return v0
.end method

.method private isESECOMMSupported()Z
    .registers 5

    .line 2077
    const/4 v0, 0x0

    .line 2078
    .local v0, "support":Z
    const-string v1, "NXP"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "OBERTHUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "GEMALTO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 2080
    :cond_1b
    const-string v1, "TimaService"

    const-string/jumbo v3, "ro.security.ese.cosname --> "

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const-string v3, "PEARL4.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2082
    const-string v3, "JCOP3.3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2083
    const-string v3, "JCOP4.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2084
    const-string v3, "UT2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2085
    const-string v3, "UT3.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2086
    const-string v3, "UT4.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2087
    const-string v3, "UT5.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2090
    :cond_5b
    const-string v2, "ESECOMM is supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    const/4 v0, 0x1

    .line 2094
    :cond_61
    return v0
.end method

.method private declared-synchronized isKapOnInternal()Z
    .registers 2

    monitor-enter p0

    .line 2437
    :try_start_1
    invoke-static {}, Lcom/android/server/TimaService;->is_kap_on()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 2437
    .end local p0    # "this":Lcom/android/server/TimaService;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKapSupported()Z
    .registers 4

    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "mIsKapSupported":Z
    const-string/jumbo v1, "ro.config.kap"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2070
    .local v1, "kapSupported":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2071
    const/4 v0, 0x1

    .line 2073
    :cond_14
    return v0
.end method

.method private isLicenseActive()Z
    .registers 11

    .line 1723
    const-string v0, "TimaService"

    const-string/jumbo v1, "licensestate"

    const/4 v2, 0x0

    .line 1725
    .local v2, "ret":Z
    :try_start_6
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 1729
    .local v3, "columns":[Ljava/lang/String;
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1730
    .local v4, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const-string/jumbo v5, "knox_active_protection"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1733
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_39

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_39

    .line 1734
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 1735
    .local v7, "cv":Landroid/content/ContentValues;
    if-eqz v7, :cond_39

    .line 1736
    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1737
    .local v1, "licenseState":Ljava/lang/Integer;
    if-eqz v1, :cond_39

    .line 1738
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_3a

    const/4 v9, 0x1

    if-ne v8, v9, :cond_38

    move v6, v9

    :cond_38
    move v2, v6

    .line 1745
    .end local v1    # "licenseState":Ljava/lang/Integer;
    .end local v3    # "columns":[Ljava/lang/String;
    .end local v4    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_39
    goto :goto_54

    .line 1742
    :catch_3a
    move-exception v1

    .line 1744
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLicenseActive failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLicenseActive ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return v2
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1008
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_12

    move-object v0, v2

    .line 1009
    if-eqz v0, :cond_11

    .line 1010
    const/4 v2, 0x1

    return v2

    .line 1012
    :cond_11
    return v3

    .line 1014
    :catch_12
    move-exception v2

    .line 1015
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v3
.end method

.method private isSVBEnabled()Z
    .registers 4

    .line 2547
    const-string/jumbo v0, "ro.boot.svb.ver"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, "svbVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "svbVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimaService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    const-string v1, "SVB1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2550
    const/4 v1, 0x0

    return v1

    .line 2552
    :cond_28
    const/4 v1, 0x1

    return v1
.end method

.method private isZeroModel()Z
    .registers 4

    .line 2099
    const/4 v0, 0x0

    .line 2100
    .local v0, "isZeroModel":Z
    const-string/jumbo v1, "ro.config.kap_default_on"

    const-string v2, "NONE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2101
    .local v1, "isKapDefaultOn":Ljava/lang/String;
    if-eqz v1, :cond_16

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2102
    const/4 v0, 0x1

    .line 2104
    :cond_16
    return v0
.end method

.method static native is_kap_on()Z
.end method

.method private notifyKapEnabled()V
    .registers 11

    .line 2036
    const-string/jumbo v0, "persist.sys.kap.status"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2037
    .local v2, "kapStatus":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 2038
    .local v3, "kapIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.action.knox.kap.KAP_NOTIFICATION"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    const-string v4, "com.samsung.klmsagent"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyKapEnabled - kapStatus:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TimaService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    const-string v7, "KAP_RP_MODE_STATUS"

    const-string/jumbo v8, "notifyKapEnabled - isKapOn:  "

    if-eqz v4, :cond_66

    .line 2045
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v4

    .line 2047
    .local v4, "isKapOn":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    if-eqz v4, :cond_62

    .line 2050
    const/4 v5, 0x1

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2051
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2053
    :cond_62
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "isKapOn":Z
    goto :goto_95

    .line 2054
    :cond_66
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2055
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v4

    .line 2057
    .restart local v4    # "isKapOn":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    if-nez v4, :cond_91

    .line 2060
    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    iget-object v5, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v7, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2063
    :cond_91
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 2054
    .end local v4    # "isKapOn":Z
    :cond_95
    :goto_95
    nop

    .line 2065
    :goto_96
    return-void
.end method

.method private notifyTLCServiceStart(Ljava/lang/String;)I
    .registers 9
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "Status":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 456
    .local v1, "startTime":J
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_14

    if-eqz v0, :cond_13

    goto :goto_14

    .line 460
    :cond_13
    return v0

    .line 458
    :cond_14
    :goto_14
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_5
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 338
    return-void
.end method

.method private registerBroadcastReceiverForKap()V
    .registers 6

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 342
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TimaService;->mBroadCastReceiverForKap:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    return-void
.end method

.method private restartTLCService(Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.security.tlc.restart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TimaService;->notifyTLCServiceStart(Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method private declared-synchronized setKapBuildProp()V
    .registers 4

    monitor-enter p0

    .line 1150
    :try_start_1
    const-string v0, "TimaService"

    const-string/jumbo v1, "in setKapBuildProp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const-string v0, "0"

    const-string/jumbo v1, "persist.sys.kap.date"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1153
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapSupported()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1154
    const-string/jumbo v0, "persist.sys.kap.date"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    const-string v0, "TimaService"

    const-string v1, "KAP_SAVED_BUILD_FINGERPRINT is set to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 1158
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_2f
    monitor-exit p0

    return-void

    .line 1149
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startAttestationBoot()V
    .registers 7

    monitor-enter p0

    .line 1132
    :try_start_1
    const-string v0, "TimaService"

    const-string/jumbo v1, "in startAttestationBoot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 1134
    .local v1, "nonce":[B
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1135
    .local v2, "uid":I
    const/4 v3, 0x0

    .line 1137
    .local v3, "blobByteArray":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v0, :cond_1b

    .line 1138
    int-to-byte v5, v4

    aput-byte v5, v1, v4

    .line 1137
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1141
    .end local v4    # "i":I
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_1b
    invoke-virtual {p0, v1, v2}, Lcom/android/server/TimaService;->attestation([BI)[B

    move-result-object v0

    .line 1143
    .end local v3    # "blobByteArray":[B
    .local v0, "blobByteArray":[B
    if-nez v0, :cond_28

    .line 1144
    const-string v3, "TimaService"

    const-string v4, "Blob from TIMA is invalid"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1146
    :cond_28
    monitor-exit p0

    return-void

    .line 1131
    .end local v0    # "blobByteArray":[B
    .end local v1    # "nonce":[B
    .end local v2    # "uid":I
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static native timaAttestation([B[B[BI[BI)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method static native timaLaunchTui(Ljava/lang/String;Ljava/lang/String;[BZI)[B
.end method

.method static native timaLoadTui()I
.end method

.method static native timaSetLicenseStatus(Z)Z
.end method

.method private declared-synchronized timaSetLicenseStatusInternal(Z)Z
    .registers 3
    .param p1, "status"    # Z

    monitor-enter p0

    .line 2441
    :try_start_1
    invoke-static {p1}, Lcom/android/server/TimaService;->timaSetLicenseStatus(Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 2441
    .end local p0    # "this":Lcom/android/server/TimaService;
    .end local p1    # "status":Z
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static native timaTuiDecryptPinHash(Ljava/lang/String;[B)[B
.end method

.method static native timaTuiGetCerts()[B
.end method

.method static native timaTuiGetSecretDimension()[I
.end method

.method static native timaTuiInitSecret([BIILjava/lang/String;)I
.end method

.method static native timaTuiRegAppImage(Ljava/lang/String;[B)[I
.end method

.method static native timaUnloadTui()I
.end method

.method static native tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_Fips_KeyStore3_init(Z)I
.end method

.method static native tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_KeyStore3_del(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_exist(Ljava/lang/String;I)Z
.end method

.method static native tima_KeyStore3_get(Ljava/lang/String;[C)[B
.end method

.method static native tima_KeyStore3_getmtime(Ljava/lang/String;)J
.end method

.method static native tima_KeyStore3_init()I
.end method

.method static native tima_KeyStore3_put(Ljava/lang/String;[BI[C)I
.end method

.method static native tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method static native tima_encryptPassword(Ljava/lang/String;)[C
.end method

.method private updateKapState(ZZ)V
    .registers 11
    .param p1, "isEnabled"    # Z
    .param p2, "isUserSet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1756
    const-string v0, "TimaService"

    const/4 v1, 0x0

    .line 1757
    .local v1, "fileReader":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1760
    .local v2, "buffReader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1769
    .local v3, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    const/4 v4, 0x0

    .line 1770
    .local v4, "isKapOn":Z
    if-eqz p2, :cond_10

    .line 1771
    move v4, p1

    goto :goto_37

    .line 1773
    :cond_10
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/dev/knox_kap"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 1774
    nop

    .line 1776
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v5

    .line 1778
    nop

    .line 1779
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 1780
    .local v5, "outPut":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 1781
    const-string v6, "11"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1782
    :cond_36
    const/4 v4, 0x1

    .line 1789
    .end local v5    # "outPut":Ljava/lang/String;
    :cond_37
    :goto_37
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1792
    .local v5, "cv":Landroid/content/ContentValues;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateKapState - isKapOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isUserSet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_83
    .catchall {:try_start_4 .. :try_end_59} :catchall_81

    .line 1794
    const-string/jumbo v6, "kapstate"

    if-eqz v4, :cond_67

    .line 1795
    const/4 v7, 0x1

    :try_start_5f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6f

    .line 1797
    :cond_67
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1799
    :goto_6f
    const-string/jumbo v6, "knox_active_protection"

    invoke-virtual {v3, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_83
    .catchall {:try_start_5f .. :try_end_75} :catchall_81

    .line 1807
    nop

    .end local v3    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v4    # "isKapOn":Z
    .end local v5    # "cv":Landroid/content/ContentValues;
    if-eqz v2, :cond_7b

    .line 1808
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1811
    :cond_7b
    if-eqz v1, :cond_a6

    .line 1812
    :goto_7d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    goto :goto_a6

    .line 1807
    :catchall_81
    move-exception v0

    goto :goto_a7

    .line 1801
    :catch_83
    move-exception v3

    .line 1803
    .local v3, "e":Ljava/lang/Exception;
    :try_start_84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateKapState failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1803
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_84 .. :try_end_9d} :catchall_81

    .line 1807
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_a3

    .line 1808
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1811
    :cond_a3
    if-eqz v1, :cond_a6

    .line 1812
    goto :goto_7d

    .line 1815
    :cond_a6
    :goto_a6
    return-void

    .line 1807
    :goto_a7
    if-eqz v2, :cond_ac

    .line 1808
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1811
    :cond_ac
    if-eqz v1, :cond_b1

    .line 1812
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 1814
    :cond_b1
    throw v0
.end method

.method private updateLicenseState(Z)V
    .registers 6
    .param p1, "isLicenseActive"    # Z

    .line 1695
    :try_start_0
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 1702
    .local v0, "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_2a

    .line 1704
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "licensestate"

    if-eqz p1, :cond_1a

    .line 1705
    const/4 v3, 0x1

    :try_start_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_22

    .line 1707
    :cond_1a
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1709
    :goto_22
    const-string/jumbo v2, "knox_active_protection"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_28} :catch_2a

    .line 1716
    nop

    .end local v0    # "edmStrgPrvdr":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v1    # "cv":Landroid/content/ContentValues;
    goto :goto_46

    .line 1711
    :catch_2a
    move-exception v0

    .line 1713
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLicenseState failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1713
    const-string v2, "TimaService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_46
    return-void
.end method

.method private validateRequest(II)Z
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "subCode"    # I

    .line 363
    const/4 v0, 0x1

    .line 364
    .local v0, "ret":Z
    const v1, 0xc350

    if-eq p1, v1, :cond_b

    const v1, 0xc351

    if-ne p1, v1, :cond_13

    :cond_b
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_14

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_14

    .line 368
    :cond_13
    const/4 v0, 0x0

    .line 370
    :cond_14
    return v0
.end method

.method private warnIfCallerUsingLegacyAttestation()V
    .registers 4

    .line 2556
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/TimaService;->getCallerPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 2557
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AttestationPolicy has been deprecated from Knox version 3.4.1.Please refer EnhancedAttestationPolicy available from Knox 3.4.0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimaService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return-void
.end method

.method private writeCertificateDigests(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;II)V
    .registers 12
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "digestCount"    # I
    .param p4, "userId"    # I

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimaService.writeCertificateDigests() for user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    const/16 v0, 0x44

    :try_start_18
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2305
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2306
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2307
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p2, v2, p4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2308
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2309
    .local v2, "signatures":[Landroid/content/pm/Signature;
    if-nez v2, :cond_39

    .line 2310
    const-string v3, "failed to get signatures"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    return-void

    .line 2314
    :cond_39
    array-length v3, v2

    const/16 v4, 0xa

    if-le v3, v4, :cond_3f

    goto :goto_40

    :cond_3f
    array-length v4, v2

    :goto_40
    move v3, v4

    .line 2315
    .local v3, "certificateCount":I
    if-nez p3, :cond_44

    .line 2317
    const/4 v3, 0x0

    .line 2320
    :cond_44
    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2321
    int-to-byte v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2323
    mul-int/lit8 v4, v3, 0x20

    .line 2324
    .local v4, "certificateDigestBlockSize":I
    const/16 v5, 0x45

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2325
    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2326
    int-to-byte v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2328
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_60
    if-ge v5, v3, :cond_7f

    .line 2329
    aget-object v6, v2, v5

    if-nez v6, :cond_6d

    .line 2330
    const-string/jumbo v6, "signature is null"

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    goto :goto_7c

    .line 2333
    :cond_6d
    aget-object v6, v2, v5

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/TimaService;->getDigestOfBytes([B)[B

    move-result-object v6

    .line 2334
    .local v6, "tempDigest":[B
    if-eqz v6, :cond_7c

    .line 2335
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_7c} :catch_9a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_7c} :catch_80

    .line 2328
    .end local v6    # "tempDigest":[B
    :cond_7c
    :goto_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    .end local v3    # "certificateCount":I
    .end local v4    # "certificateDigestBlockSize":I
    .end local v5    # "i":I
    :cond_7f
    goto :goto_b3

    .line 2339
    :catch_80
    move-exception v0

    .line 2340
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write certificate digests : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 2337
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_9a
    move-exception v0

    .line 2338
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get certificate digests : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_b3
    nop

    .line 2342
    :goto_b4
    return-void
.end method

.method private writePackageNames(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I

    .line 2247
    const-string v0, "TimaService"

    :try_start_2
    const-string v1, "TimaService.writePackageNames()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    const/16 v1, 0x42

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2251
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2252
    .local v1, "tempBaos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    const/4 v3, 0x0

    if-ge v2, p3, :cond_3f

    .line 2253
    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_2a

    .line 2254
    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_33

    .line 2256
    :cond_2a
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 2258
    :goto_33
    add-int/lit8 v3, p3, -0x1

    if-ge v2, v3, :cond_3c

    .line 2259
    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2252
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 2262
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2263
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    .line 2264
    .local v2, "totalLengthOfPackages":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2265
    int-to-byte v4, v2

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() wrote \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() totalLengthOfPackages "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimaService.writePackageNames() tempBaos.toByteArray().length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p1, v4, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2271
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_aa} :catch_ab

    .line 2274
    .end local v1    # "tempBaos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "totalLengthOfPackages":I
    goto :goto_c4

    .line 2272
    :catch_ab
    move-exception v1

    .line 2273
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to write package name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_c4
    return-void
.end method

.method private writePackageVersions(Ljava/io/ByteArrayOutputStream;[Ljava/lang/String;II)V
    .registers 12
    .param p1, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "digestCount"    # I
    .param p4, "userId"    # I

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimaService.writePackageVersions() for user : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/16 v0, 0x43

    :try_start_18
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2283
    mul-int/lit8 v0, p3, 0x4

    .line 2284
    .local v0, "packageVersionsBlockSize":I
    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2285
    int-to-byte v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2287
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, p3, :cond_70

    .line 2288
    iget-object v3, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    aget-object v4, p2, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2289
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2290
    .local v4, "versionCode":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimaService.writePackageVersions() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " versionCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    ushr-int/lit8 v5, v4, 0x18

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2292
    ushr-int/lit8 v5, v4, 0x10

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2293
    ushr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2294
    int-to-byte v5, v4

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_6d} :catch_71

    .line 2287
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "versionCode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 2298
    .end local v0    # "packageVersionsBlockSize":I
    .end local v2    # "i":I
    :cond_70
    goto :goto_8a

    .line 2296
    :catch_71
    move-exception v0

    .line 2297
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get package version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_8a
    return-void
.end method


# virtual methods
.method public declared-synchronized DCMSelfCheck()V
    .registers 1

    monitor-enter p0

    .line 470
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized FipsKeyStore3_del(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 833
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 836
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    .line 837
    monitor-exit p0

    return v0

    .line 840
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 841
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_del(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    .line 844
    :cond_26
    monitor-exit p0

    return v0

    .line 832
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 788
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 791
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    .line 792
    monitor-exit p0

    return v0

    .line 795
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 796
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    .line 799
    :cond_26
    monitor-exit p0

    return v0

    .line 787
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    monitor-enter p0

    .line 803
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    if-nez p2, :cond_e

    goto :goto_22

    .line 810
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 811
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 814
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_20
    monitor-exit p0

    return-object v0

    .line 806
    :cond_22
    :goto_22
    :try_start_22
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    .line 807
    monitor-exit p0

    return-object v0

    .line 802
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "password":[C
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    monitor-enter p0

    .line 818
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-wide/16 v0, -0x1

    if-nez p1, :cond_15

    .line 821
    const-string v2, "TimaService"

    const-string v3, "TIMA3: FipsKeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_29

    .line 822
    monitor-exit p0

    return-wide v0

    .line 825
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 826
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_29

    monitor-exit p0

    return-wide v0

    .line 829
    :cond_27
    monitor-exit p0

    return-wide v0

    .line 817
    .end local p1    # "alias":Ljava/lang/String;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_init(Z)I
    .registers 6
    .param p1, "selfTestOnly"    # Z

    monitor-enter p0

    .line 760
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const/4 v2, 0x1

    const-string v3, "API_PKCS11:engineLoad"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 761
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    const-string/jumbo v1, "spiN"

    const-string v2, "TKS"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 764
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_init"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 767
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_init(Z)I

    move-result v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_32

    monitor-exit p0

    return v1

    .line 770
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_2f
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 759
    .end local v0    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .end local p1    # "selfTestOnly":Z
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    monitor-enter p0

    .line 774
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, -0x1

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p4, :cond_10

    goto :goto_24

    .line 781
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 782
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2d

    monitor-exit p0

    return v0

    .line 784
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_22
    monitor-exit p0

    return v0

    .line 777
    :cond_24
    :goto_24
    :try_start_24
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    .line 778
    monitor-exit p0

    return v0

    .line 773
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":[B
    .end local p3    # "uid":I
    .end local p4    # "password":[C
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized FipsKeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 848
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: FipsKeyStore3_saw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 851
    const-string v1, "TimaService"

    const-string v2, "TIMA3: FipsKeyStore3_saw, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    .line 852
    monitor-exit p0

    return-object v0

    .line 855
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 856
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    .line 857
    .local v1, "tmp":[Ljava/lang/Object;
    if-eqz v1, :cond_39

    .line 858
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_Fips_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_3b

    monitor-exit p0

    return-object v0

    .line 861
    .end local v1    # "tmp":[Ljava/lang/Object;
    :cond_39
    monitor-exit p0

    return-object v0

    .line 847
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_del(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 726
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_del"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 729
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    .line 730
    monitor-exit p0

    return v0

    .line 733
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 734
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_del(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    .line 737
    :cond_26
    monitor-exit p0

    return v0

    .line 725
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_exist(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 681
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 684
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_exist, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    .line 685
    monitor-exit p0

    return v0

    .line 688
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 689
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_exist(Ljava/lang/String;I)Z

    move-result v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_28

    monitor-exit p0

    return v0

    .line 692
    :cond_26
    monitor-exit p0

    return v0

    .line 680
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_get(Ljava/lang/String;[C)[B
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C

    monitor-enter p0

    .line 696
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_get"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    if-nez p2, :cond_e

    goto :goto_22

    .line 703
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 704
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_get(Ljava/lang/String;[C)[B

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 707
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_20
    monitor-exit p0

    return-object v0

    .line 699
    :cond_22
    :goto_22
    :try_start_22
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_get, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2b

    .line 700
    monitor-exit p0

    return-object v0

    .line 695
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "password":[C
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_getmtime(Ljava/lang/String;)J
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    monitor-enter p0

    .line 711
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_getmtime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-wide/16 v0, -0x1

    if-nez p1, :cond_15

    .line 714
    const-string v2, "TimaService"

    const-string v3, "TIMA3: KeyStore3_getmtime, illegal arguments"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_29

    .line 715
    monitor-exit p0

    return-wide v0

    .line 718
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 719
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_KeyStore3_getmtime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_29

    monitor-exit p0

    return-wide v0

    .line 722
    :cond_27
    monitor-exit p0

    return-wide v0

    .line 710
    .end local p1    # "alias":Ljava/lang/String;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_init()I
    .registers 5

    monitor-enter p0

    .line 653
    :try_start_1
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_CCM"

    const/4 v2, 0x1

    const-string v3, "API_PKCS11:engineLoad"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 654
    .local v0, "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    const-string/jumbo v1, "spiN"

    const-string v2, "TKS"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 657
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_init"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 660
    invoke-static {}, Lcom/android/server/TimaService;->tima_KeyStore3_init()I

    move-result v1
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_32

    monitor-exit p0

    return v1

    .line 663
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_2f
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 652
    .end local v0    # "data":Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized KeyStore3_put(Ljava/lang/String;[BI[C)I
    .registers 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    monitor-enter p0

    .line 667
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_put"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v0, -0x1

    if-eqz p1, :cond_24

    if-eqz p2, :cond_24

    if-nez p4, :cond_10

    goto :goto_24

    .line 674
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 675
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/TimaService;->tima_KeyStore3_put(Ljava/lang/String;[BI[C)I

    move-result v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2d

    monitor-exit p0

    return v0

    .line 677
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_22
    monitor-exit p0

    return v0

    .line 670
    :cond_24
    :goto_24
    :try_start_24
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_put, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    .line 671
    monitor-exit p0

    return v0

    .line 666
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "key":[B
    .end local p3    # "uid":I
    .end local p4    # "password":[C
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 741
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: KeyStore3_saw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    if-nez p1, :cond_14

    .line 744
    const-string v1, "TimaService"

    const-string v2, "TIMA3: KeyStore3_del, illegal arguments"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_3b

    .line 745
    monitor-exit p0

    return-object v0

    .line 748
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 749
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v1

    .line 750
    .local v1, "tmp":[Ljava/lang/Object;
    if-eqz v1, :cond_39

    .line 751
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->tima_KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_3b

    monitor-exit p0

    return-object v0

    .line 754
    .end local v1    # "tmp":[Ljava/lang/Object;
    :cond_39
    monitor-exit p0

    return-object v0

    .line 740
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized attestation([BI)[B
    .registers 14
    .param p1, "nonce"    # [B
    .param p2, "callerUid"    # I

    monitor-enter p0

    .line 512
    :try_start_1
    const-string v0, "TimaService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIMA: attestation for callerUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 514
    const-string v0, "TimaService"

    const-string v2, "Context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_c1

    .line 515
    monitor-exit p0

    return-object v1

    .line 518
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_25
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p2, :cond_33

    .line 519
    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v2, "attestation"

    invoke-static {v0, v2}, Lcom/android/server/TimaService;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_3b

    .line 521
    :cond_33
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->checkAttestationAccessPermission(I)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_c1

    if-nez v0, :cond_3b

    .line 522
    monitor-exit p0

    return-object v1

    .line 526
    .restart local p0    # "this":Lcom/android/server/TimaService;
    :cond_3b
    :goto_3b
    :try_start_3b
    const-string v0, "TimaService"

    const-string v2, "TimaService.attestation()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 533
    .local v0, "timaEnabled":Z
    const/4 v2, -0x1

    .line 535
    .local v2, "reason":I
    if-eqz v0, :cond_a9

    .line 537
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_58
    .catchall {:try_start_3b .. :try_end_58} :catchall_c1

    .line 539
    .local v3, "id":J
    :try_start_58
    invoke-direct {p0, p2}, Lcom/android/server/TimaService;->getCollectorBlob(I)[B

    move-result-object v6

    .line 540
    .local v6, "blob":[B
    invoke-direct {p0}, Lcom/android/server/TimaService;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 541
    .local v7, "imei":[B
    invoke-direct {p0}, Lcom/android/server/TimaService;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 542
    .local v9, "mac":[B
    iget v8, p0, Lcom/android/server/TimaService;->mODEEnabled:I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6e} :catch_80
    .catchall {:try_start_58 .. :try_end_6e} :catchall_7e

    .line 543
    .end local v2    # "reason":I
    .local v8, "reason":I
    :try_start_6e
    invoke-direct {p0}, Lcom/android/server/TimaService;->getBlobVersion()I

    move-result v10

    .line 544
    .local v10, "version":I
    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/android/server/TimaService;->timaAttestation([B[B[BI[BI)[B

    move-result-object v1
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_7c
    .catchall {:try_start_6e .. :try_end_77} :catchall_a3

    .line 549
    :try_start_77
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_c1

    .line 544
    monitor-exit p0

    return-object v1

    .line 545
    .end local v6    # "blob":[B
    .end local v7    # "imei":[B
    .end local v9    # "mac":[B
    .end local v10    # "version":I
    .end local p0    # "this":Lcom/android/server/TimaService;
    :catch_7c
    move-exception v2

    goto :goto_83

    .line 549
    .end local v8    # "reason":I
    .restart local v2    # "reason":I
    :catchall_7e
    move-exception v1

    goto :goto_a5

    .line 545
    :catch_80
    move-exception v5

    move v8, v2

    move-object v2, v5

    .line 546
    .local v2, "e":Ljava/lang/Exception;
    .restart local v8    # "reason":I
    :goto_83
    :try_start_83
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in attestation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_83 .. :try_end_9d} :catchall_a3

    .line 547
    nop

    .line 549
    :try_start_9e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_c1

    .line 547
    monitor-exit p0

    return-object v1

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_a3
    move-exception v1

    move v2, v8

    .end local v8    # "reason":I
    .local v2, "reason":I
    :goto_a5
    :try_start_a5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw v1

    .line 552
    .end local v3    # "id":J
    :cond_a9
    const-string v3, "TimaService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIMA: attestation is not support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_c1

    .line 553
    monitor-exit p0

    return-object v1

    .line 511
    .end local v0    # "timaEnabled":Z
    .end local v2    # "reason":I
    .end local p1    # "nonce":[B
    .end local p2    # "callerUid":I
    :catchall_c1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 11
    .param p1, "uid"    # I
    .param p2, "regPassword"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "isTrustedBootRequired"    # Z

    monitor-enter p0

    .line 1164
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA3: in ccmRegisterForDefaultCertificate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1166
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_7d

    .line 1167
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1169
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1170
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 1172
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_2e
    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v4, "tima"

    const-string v5, "ccmRegisterForDefaultCertificate"

    .line 1172
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_80

    if-nez v1, :cond_46

    .line 1185
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 1175
    .restart local p0    # "this":Lcom/android/server/TimaService;
    :cond_46
    :try_start_46
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] trying to access methodName [ccmRegisterForDefaultCertificate] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tima"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v1, "e":Ljava/lang/SecurityException;
    throw v1
    :try_end_7d
    .catchall {:try_start_46 .. :try_end_7d} :catchall_80

    .line 1188
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_7d
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 1163
    .end local v0    # "timaEnabled":Z
    .end local p1    # "uid":I
    .end local p2    # "regPassword":Ljava/lang/String;
    .end local p3    # "oldPassword":Ljava/lang/String;
    .end local p4    # "isTrustedBootRequired":Z
    :catchall_80
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .registers 5
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    monitor-enter p0

    .line 389
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: checkEvent, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    .line 390
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 388
    .end local p0    # "this":Lcom/android/server/TimaService;
    .end local p1    # "operation":I
    .end local p2    # "subject":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .registers 5
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    monitor-enter p0

    .line 404
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: checkHistory, operation is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    .line 405
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 403
    .end local p0    # "this":Lcom/android/server/TimaService;
    .end local p1    # "operation":I
    .end local p2    # "subject":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public displayEvent(Ljava/lang/String;)V
    .registers 19
    .param p1, "event"    # Ljava/lang/String;

    .line 871
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA MEASUREMENT Result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TimaService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    if-nez v2, :cond_1d

    return-void

    .line 875
    :cond_1d
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sget v4, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    if-lt v0, v4, :cond_2c

    .line 876
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 880
    :cond_2c
    :try_start_2c
    iget-object v0, v1, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    if-eqz v0, :cond_3a

    .line 881
    iget-object v0, v1, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    invoke-interface {v0, v2}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    .line 882
    const-string v0, "Reporting violation to ISL"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3a} :catch_3b

    .line 886
    :cond_3a
    goto :goto_41

    .line 884
    :catch_3b
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Exception"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_41
    const-string v4, " "

    .line 891
    .local v4, "time":Ljava/lang/String;
    :try_start_43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4f} :catch_51

    move-object v4, v0

    .line 894
    goto :goto_58

    .line 892
    :catch_51
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "toLocalString() exception"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_58
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 898
    const-string v0, "TIMA_STATUS="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 899
    .local v5, "statusIdx":I
    const/16 v6, 0x3b

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 900
    .local v7, "sepIdx":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_225

    if-ne v7, v8, :cond_84

    goto/16 :goto_225

    .line 906
    :cond_84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMA MEASUREMENT success status: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void

    .line 909
    :cond_aa
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMA Internal Error: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void

    .line 915
    :cond_d0
    const-string v9, "MSG="

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 916
    .local v10, "msgIdx":I
    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 917
    .end local v7    # "sepIdx":I
    .local v6, "sepIdx":I
    const-string v7, ""

    .line 918
    .local v7, "msg":Ljava/lang/String;
    if-eq v10, v8, :cond_210

    if-ne v6, v8, :cond_e2

    goto/16 :goto_210

    .line 923
    :cond_e2
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v11, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v8, "TimaEventIntent":Landroid/content/Intent;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v10

    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 928
    const-string/jumbo v9, "lkm_modified"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_101

    .line 929
    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_12a

    .line 930
    :cond_101
    const-string/jumbo v9, "seandroid_off"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 931
    const/4 v9, 0x2

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_12a

    .line 932
    :cond_10f
    const-string/jumbo v9, "kern_modified"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11d

    .line 933
    const/4 v9, 0x3

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_12a

    .line 934
    :cond_11d
    const-string/jumbo v9, "kern_metadata_modified"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20a

    .line 935
    const/4 v9, 0x4

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 941
    :goto_12a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyyMMddHHmmss"

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 942
    .local v9, "dateFormat":Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 945
    .local v12, "date":Ljava/lang/String;
    :try_start_13c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string/jumbo v13, "mkdir -p /data/misc/tima"

    invoke-virtual {v0, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_146} :catch_147

    .line 948
    goto :goto_14d

    .line 946
    :catch_147
    move-exception v0

    .line 947
    .local v0, "e":Ljava/io/IOException;
    const-string v13, "Failed to create /data/misc/tima"

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .end local v0    # "e":Ljava/io/IOException;
    :goto_14d
    :try_start_14d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v13, "chmod 701 /data/misc/tima"

    invoke-virtual {v0, v13}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_156} :catch_157

    .line 954
    goto :goto_15d

    .line 952
    :catch_157
    move-exception v0

    .line 953
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v13, "Failed to change permissions of /data/misc/tima"

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v0    # "e":Ljava/io/IOException;
    :goto_15d
    :try_start_15d
    new-instance v0, Ljava/io/File;

    const-string v13, "/data/misc/tima"

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    .local v0, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 959
    .local v13, "files":[Ljava/io/File;
    if-eqz v13, :cond_177

    .line 960
    array-length v14, v13

    const/4 v15, 0x0

    :goto_16c
    if-ge v15, v14, :cond_177

    aget-object v16, v13, v15

    .line 961
    .local v16, "timafile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_173} :catch_178

    .line 960
    nop

    .end local v16    # "timafile":Ljava/io/File;
    add-int/lit8 v15, v15, 0x1

    goto :goto_16c

    .line 966
    .end local v0    # "delAllTimaLogFile":Ljava/io/File;
    .end local v13    # "files":[Ljava/io/File;
    :cond_177
    goto :goto_17c

    .line 964
    :catch_178
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/misc/tima/tima.log."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 971
    .local v13, "tima_log_file":Ljava/lang/String;
    :try_start_18d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "chmod 640 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1a5} :catch_1a6

    .line 974
    goto :goto_1bb

    .line 972
    :catch_1a6
    move-exception v0

    .line 973
    .local v0, "e":Ljava/io/IOException;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to change permissions of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1bb
    sget-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v0, :cond_1c5

    .line 977
    const-string v0, "displayEvent(): iBootCompleted==false"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 980
    :cond_1c5
    const-string v0, "com.samsung.android.securitylogagent"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const-string v0, "TIMA_LOG_FILE"

    invoke-virtual {v8, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 982
    iget-object v0, v1, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 984
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 985
    const-string v14, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v15, "com.samsung.android.sm"

    invoke-virtual {v0, v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "smartmanagerPackage":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v14, v0}, Lcom/android/server/TimaService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1f9

    .line 987
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v14

    .line 988
    .local v11, "TimaSmartManagerIntent":Landroid/content/Intent;
    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    iget-object v14, v1, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 990
    .end local v11    # "TimaSmartManagerIntent":Landroid/content/Intent;
    goto :goto_209

    .line 991
    :cond_1f9
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v14

    .line 992
    .restart local v11    # "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string v14, "com.android.settings"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    iget-object v14, v1, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v11, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1001
    .end local v0    # "smartmanagerPackage":Ljava/lang/String;
    .end local v8    # "TimaEventIntent":Landroid/content/Intent;
    .end local v9    # "dateFormat":Ljava/text/DateFormat;
    .end local v11    # "TimaSmartManagerIntent":Landroid/content/Intent;
    .end local v12    # "date":Ljava/lang/String;
    .end local v13    # "tima_log_file":Ljava/lang/String;
    :goto_209
    return-void

    .line 937
    .restart local v8    # "TimaEventIntent":Landroid/content/Intent;
    :cond_20a
    const-string v0, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void

    .line 919
    .end local v8    # "TimaEventIntent":Landroid/content/Intent;
    :cond_210
    :goto_210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TIMA MEASUREMENT invalid result: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void

    .line 901
    .end local v6    # "sepIdx":I
    .end local v10    # "msgIdx":I
    .local v7, "sepIdx":I
    :cond_225
    :goto_225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMA MEASUREMENT invalid status: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method public declared-synchronized dumpLog()[B
    .registers 3

    monitor-enter p0

    .line 1239
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: timaDumpLog is not supported in TimaSerivce any more."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    .line 1240
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1238
    .end local p0    # "this":Lcom/android/server/TimaService;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized encryptPassword(Ljava/lang/String;)[C
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    monitor-enter p0

    .line 1984
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "encryptPassword"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    .line 1992
    :cond_11
    invoke-static {p1}, Lcom/android/server/TimaService;->tima_encryptPassword(Ljava/lang/String;)[C

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_21

    monitor-exit p0

    return-object v0

    .line 1987
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_17
    :goto_17
    :try_start_17
    const-string v0, "TimaService"

    const-string v1, "encryptPassword, illegal arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_21

    .line 1988
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1983
    .end local p1    # "password":Ljava/lang/String;
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDeviceID()[B
    .registers 4

    monitor-enter p0

    .line 643
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.tima"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 645
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_1f

    .line 646
    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    monitor-exit p0

    return-object v1

    .line 648
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_1f
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 642
    .end local v0    # "timaEnabled":Z
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .param p1, "subject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 867
    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getTimaVersion()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1048
    :try_start_1
    const-string v0, "0"

    .line 1049
    .local v0, "TimaVer":Ljava/lang/String;
    const-string v1, "TimaService"

    const-string v2, "TIMA: in getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1053
    invoke-direct {p0}, Lcom/android/server/TimaService;->getTimaStatus()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1056
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_15
    const-string v1, "F0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1058
    const-string v1, "TimaService"

    const-string v2, "Fake Tima enabled, -T option is disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-string v1, "3.0"

    move-object v0, v1

    goto :goto_3a

    .line 1061
    :cond_28
    const-string v1, "F3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1063
    const-string v1, "TimaService"

    const-string v2, "Fake Tima enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const-string v1, "3.0"
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3c

    move-object v0, v1

    .line 1066
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-object v0

    .line 1047
    .end local v0    # "TimaVer":Ljava/lang/String;
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTuiVersion()Ljava/lang/String;
    .registers 2

    .line 1583
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleLicenseStatus(IZ)V
    .registers 14
    .param p1, "notiTrigger"    # I
    .param p2, "licenseStatus"    # Z

    .line 1855
    const-string/jumbo v0, "persist.sys.kap.date"

    const-string v1, "NONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleLicenseStatus - notiTrigger: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", licenseStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TimaService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1859
    .local v4, "token":J
    const/4 v2, 0x0

    .line 1860
    .local v2, "kapState":Z
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v6, :cond_aa

    const/4 v8, 0x2

    if-eq p1, v8, :cond_93

    const/4 v8, 0x3

    if-eq p1, v8, :cond_35

    goto/16 :goto_bb

    .line 1881
    :cond_35
    const-string/jumbo v8, "ro.build.date"

    invoke-static {v8, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1882
    .local v8, "currentBuild":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1884
    .local v9, "oldBuild":Ljava/lang/String;
    if-eqz p2, :cond_6f

    .line 1885
    iput-boolean v6, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1886
    invoke-direct {p0, v6}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1889
    iget-boolean v10, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v10, :cond_5b

    .line 1891
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v1

    if-nez v1, :cond_57

    .line 1892
    invoke-direct {p0, v7, v7}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1893
    invoke-virtual {p0, v6, v7}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1895
    :cond_57
    invoke-direct {p0, v7}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    goto :goto_89

    .line 1897
    :cond_5b
    const-string/jumbo v7, "security.knox_kap_mode"

    invoke-static {v7, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1898
    .local v1, "kapStatus":Ljava/lang/String;
    const-string/jumbo v7, "true"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6e

    .line 1899
    invoke-direct {p0, v6}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1901
    .end local v1    # "kapStatus":Ljava/lang/String;
    :cond_6e
    goto :goto_89

    .line 1903
    :cond_6f
    iput-boolean v7, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1904
    invoke-direct {p0, v7}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1905
    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v1, :cond_86

    .line 1906
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v1

    move v2, v1

    .line 1907
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v1

    if-nez v1, :cond_86

    .line 1908
    invoke-virtual {p0, v2, v7}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1911
    :cond_86
    invoke-direct {p0, v7}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1913
    :goto_89
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v6, :cond_bb

    .line 1914
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 1871
    .end local v8    # "currentBuild":Ljava/lang/String;
    .end local v9    # "oldBuild":Ljava/lang/String;
    :cond_93
    iput-boolean v7, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1872
    invoke-direct {p0, v7}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1873
    invoke-direct {p0, v7}, Lcom/android/server/TimaService;->timaSetLicenseStatusInternal(Z)Z

    .line 1874
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1876
    invoke-direct {p0}, Lcom/android/server/TimaService;->getKapState()Z

    move-result v0

    move v2, v0

    .line 1877
    invoke-virtual {p0, v2, v7}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    goto :goto_bb

    .line 1862
    :cond_aa
    iput-boolean v6, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    .line 1863
    invoke-direct {p0, v6}, Lcom/android/server/TimaService;->updateLicenseState(Z)V

    .line 1864
    invoke-direct {p0}, Lcom/android/server/TimaService;->isZeroModel()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 1866
    invoke-direct {p0, v7, v7}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1867
    invoke-virtual {p0, v6, v7}, Lcom/android/server/TimaService;->setKapMode(ZZ)V

    .line 1917
    :cond_bb
    :goto_bb
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_be} :catch_bf

    .line 1921
    .end local v2    # "kapState":Z
    .end local v4    # "token":J
    goto :goto_d9

    .line 1918
    :catch_bf
    move-exception v0

    .line 1920
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleLicenseStatus exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d9
    return-void
.end method

.method public isKapEnforced()Z
    .registers 3

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isKapEnforced - mIsLicenseActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iBootCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/TimaService;->iBootCompleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBuildUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimaService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsLicenseActive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    .line 1934
    return v1

    .line 1935
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/TimaService;->mIsBuildUpdate:Z

    if-eqz v0, :cond_3c

    sget-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v0, :cond_3c

    .line 1936
    return v1

    .line 1939
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized keystoreInit()I
    .registers 2

    monitor-enter p0

    .line 419
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .registers 4
    .param p1, "ID"    # I
    .param p2, "key"    # [B

    monitor-enter p0

    .line 450
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .registers 3
    .param p1, "ID"    # I

    monitor-enter p0

    .line 482
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized keystoreShutdown()I
    .registers 2

    monitor-enter p0

    .line 495
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized launchTui(Ljava/lang/String;[BZI)[B
    .registers 6
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "nonce"    # [B
    .param p3, "verify"    # Z
    .param p4, "min_pin_length"    # I

    monitor-enter p0

    .line 1275
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .registers 7
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "secret_id"    # Ljava/lang/String;
    .param p3, "nonce"    # [B
    .param p4, "verify"    # Z
    .param p5, "min_pin_length"    # I

    monitor-enter p0

    .line 1290
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized loadTlcServer(Ljava/lang/String;)I
    .registers 10
    .param p1, "serviceName"    # Ljava/lang/String;

    monitor-enter p0

    .line 1192
    const/4 v0, 0x0

    .line 1193
    .local v0, "START_IN_HERE":Z
    :try_start_2
    const-string v1, "TimaService"

    const-string v2, "TIMA3: in loadTlcServer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const-string v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1195
    .local v1, "timaEnabled":Z
    if-eqz v1, :cond_ac

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/TimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1199
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1200
    .local v2, "tlcBinder":Landroid/os/IBinder;
    const/4 v3, 0x0

    if-eqz v2, :cond_36

    .line 1201
    const-string v4, "TimaService"

    const-string v5, "TIMA3: tlc_server already loaded"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_af

    .line 1202
    monitor-exit p0

    return v3

    .line 1206
    .end local p0    # "this":Lcom/android/server/TimaService;
    :cond_36
    if-eqz v0, :cond_74

    .line 1209
    :try_start_38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/bin/tlc_server "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 1210
    .local v4, "tlcProcess":Ljava/lang/Process;
    const-string v5, "TimaService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start tlc_server for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_6c} :catch_6d
    .catchall {:try_start_38 .. :try_end_6c} :catchall_af

    .line 1213
    .end local v4    # "tlcProcess":Ljava/lang/Process;
    goto :goto_aa

    .line 1211
    :catch_6d
    move-exception v3

    .line 1212
    .local v3, "e":Ljava/io/IOException;
    :try_start_6e
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1215
    .end local v3    # "e":Ljava/io/IOException;
    :cond_74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persist.security.tlc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v4, "TimaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start tlc_server for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " done : setprop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_6e .. :try_end_aa} :catchall_af

    .line 1218
    :goto_aa
    monitor-exit p0

    return v3

    .line 1221
    .end local v2    # "tlcBinder":Landroid/os/IBinder;
    :cond_ac
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 1191
    .end local v0    # "START_IN_HERE":Z
    .end local v1    # "timaEnabled":Z
    .end local p1    # "serviceName":Ljava/lang/String;
    :catchall_af
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadTui()I
    .registers 2

    monitor-enter p0

    .line 1250
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .registers 4
    .param p1, "timaISLClbk"    # Landroid/service/tima/ITimaISLCallback;

    monitor-enter p0

    .line 1035
    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1039
    monitor-exit p0

    return-void

    .line 1034
    .end local p0    # "this":Lcom/android/server/TimaService;
    .end local p1    # "timaISLClbk":Landroid/service/tima/ITimaISLCallback;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setKapMode(ZZ)V
    .registers 11
    .param p1, "isEnabled"    # Z
    .param p2, "notifyKapState"    # Z

    .line 1943
    const-string/jumbo v0, "true"

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    const-string v2, "TimaService"

    if-eqz v1, :cond_78

    .line 1946
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKapMode - isEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", notifyKapState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_5d

    .line 1951
    .local v3, "token":J
    const-string v1, "NONE"

    const-string/jumbo v5, "security.knox_kap_mode"

    const-string/jumbo v6, "persist.sys.kap.status"

    if-eqz p1, :cond_3d

    .line 1952
    :try_start_36
    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 1955
    :cond_3d
    invoke-direct {p0}, Lcom/android/server/TimaService;->isKapOnInternal()Z

    move-result v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_5d

    const-string v7, "false"

    if-eqz v0, :cond_49

    .line 1956
    :try_start_45
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 1959
    :cond_49
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    :goto_4c
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    :goto_4f
    if-nez p2, :cond_54

    .line 1965
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    :cond_54
    if-eqz p2, :cond_59

    .line 1970
    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->updateKapState(ZZ)V

    .line 1973
    :cond_59
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5c} :catch_5d

    .end local v3    # "token":J
    goto :goto_77

    .line 1974
    :catch_5d
    move-exception v0

    .line 1976
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKapMode exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    goto :goto_7d

    .line 1979
    :cond_78
    const-string v0, "No Permission : setKapMode"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :goto_7d
    return-void
.end method

.method public declared-synchronized tuiDecryptPinHash(Ljava/lang/String;[B)[B
    .registers 4
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    monitor-enter p0

    .line 1687
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiGetCerts()[B
    .registers 2

    monitor-enter p0

    .line 1647
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiGetSecretDimension()[I
    .registers 2

    monitor-enter p0

    .line 1671
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiInitSecret([BIILjava/lang/String;)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    monitor-enter p0

    .line 1318
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized tuiInitSecretFile(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "secret_id"    # Ljava/lang/String;

    monitor-enter p0

    .line 1355
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized tuiInitSecretMemoryFile(Landroid/os/ParcelFileDescriptor;IIILjava/lang/String;)I
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secret_id"    # Ljava/lang/String;

    monitor-enter p0

    .line 1399
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized tuiRegAppImage(Ljava/lang/String;[B)[I
    .registers 4
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_buffer"    # [B

    monitor-enter p0

    .line 1597
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized tuiRegAppImageFile(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4
    .param p1, "app_name"    # Ljava/lang/String;
    .param p2, "png_file"    # Ljava/lang/String;

    monitor-enter p0

    .line 1636
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized unloadTui()I
    .registers 2

    monitor-enter p0

    .line 1260
    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized verifyCertChain([B)[B
    .registers 3
    .param p1, "buffer"    # [B

    monitor-enter p0

    .line 1527
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
