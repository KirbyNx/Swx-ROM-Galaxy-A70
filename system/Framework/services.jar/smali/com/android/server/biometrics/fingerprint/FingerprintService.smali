.class public Lcom/android/server/biometrics/fingerprint/FingerprintService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

.field private final mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private final mFailedAttempts:Landroid/util/SparseIntArray;

.field private final mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

.field private final mLockForAuthentication:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

.field protected final mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

.field private final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 124
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1446
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockForAuthentication:Ljava/lang/Object;

    .line 1083
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    .line 1084
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1092
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    .line 1093
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    .line 1100
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    .line 1264
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 1447
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 1448
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 1449
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1450
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutBroadcastPermission()Ljava/lang/String;

    move-result-object v3

    .line 1450
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1452
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1454
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 1456
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10902(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 121
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11002(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # J

    .line 121
    iput-wide p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$11102(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$11200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 121
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$12200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isWorkProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "x2"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 121
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockForAuthentication:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 121
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$500()Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .registers 1

    .line 121
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/RemovalClient;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$5801(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 121
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 121
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 121
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 121
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getAuthenticatorId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->initConfiguredStrengthInternal(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$8800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$8900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$9300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$9400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 121
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1789
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1790
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1805
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1807
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1809
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1810
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ff

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1811
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1812
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1813
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1814
    .local v6, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1815
    .local v7, "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1816
    .local v8, "set":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1817
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1818
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_76

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_77

    :cond_76
    move v11, v10

    :goto_77
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1819
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_82

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_83

    :cond_82
    move v11, v10

    :goto_83
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1822
    const-string/jumbo v9, "quality"

    if-eqz v6, :cond_8e

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->quality:I

    goto :goto_8f

    :cond_8e
    move v11, v10

    :goto_8f
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1825
    const-string v9, "acquire"

    if-eqz v6, :cond_99

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_9a

    :cond_99
    move v11, v10

    :goto_9a
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1826
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_a5

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_a6

    :cond_a5
    move v11, v10

    :goto_a6
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1827
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_b1

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_b2

    :cond_b1
    move v11, v10

    :goto_b2
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1830
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_bc

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_bd

    :cond_bc
    move v11, v10

    :goto_bd
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1831
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_c8

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_c9

    :cond_c8
    move v11, v10

    :goto_c9
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1834
    const-string/jumbo v9, "qualityCrypto"

    if-eqz v7, :cond_d4

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->quality:I

    goto :goto_d5

    :cond_d4
    move v11, v10

    :goto_d5
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1837
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_df

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_e0

    :cond_df
    move v11, v10

    :goto_e0
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1838
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_eb

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_ec

    :cond_eb
    move v11, v10

    :goto_ec
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1839
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 1840
    if-eqz v7, :cond_f6

    iget v10, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    .line 1839
    :cond_f6
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1841
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1842
    nop

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_22

    .line 1844
    :cond_ff
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_105
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_105} :catch_107

    .line 1847
    nop

    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_10f

    .line 1845
    :catch_107
    move-exception v1

    .line 1846
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1848
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_10f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL deaths since last reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHALDeathCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    sget-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->dump(Ljava/io/PrintWriter;)V

    .line 1854
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 18
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1857
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1858
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1859
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1861
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1863
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1864
    nop

    .line 1865
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1864
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1868
    iget-object v10, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1869
    .local v10, "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v10, :cond_99

    .line 1870
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1871
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1872
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1873
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1874
    iget v11, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1875
    iget v8, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1876
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1881
    .end local v13    # "countsToken":J
    :cond_99
    iget-object v8, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1882
    .local v8, "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v8, :cond_e5

    .line 1883
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1884
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1885
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1886
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1887
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1888
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1889
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1892
    .end local v11    # "countsToken":J
    :cond_e5
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1893
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "userToken":J
    .end local v8    # "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v10    # "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    goto/16 :goto_19

    .line 1894
    :cond_ea
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1895
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1896
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1897
    return-void
.end method

.method private declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 8

    monitor-enter p0

    .line 1686
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_a9

    .line 1687
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_ad

    .line 1690
    :try_start_d
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_16

    goto :goto_1d

    .line 1693
    :cond_16
    invoke-static {}, Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;->getService()Lvendor/samsung/hardware/biometrics/fingerprint/V3_0/ISehBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    goto :goto_2e

    .line 1691
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService;
    :cond_1d
    :goto_1d
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_23
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_23} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_23} :catch_24
    .catchall {:try_start_d .. :try_end_23} :catchall_ad

    goto :goto_2e

    .line 1697
    :catch_24
    move-exception v0

    .line 1698
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 1695
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2d
    move-exception v0

    .line 1699
    :goto_2e
    nop

    .line 1700
    :goto_2f
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_3d

    .line 1701
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_ad

    .line 1702
    monitor-exit p0

    return-object v1

    .line 1705
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_ad

    .line 1708
    :try_start_48
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_53
    .catchall {:try_start_48 .. :try_end_52} :catchall_ad

    .line 1712
    goto :goto_5d

    .line 1709
    :catch_53
    move-exception v0

    .line 1710
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_54
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1714
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5d
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_79

    const-string v0, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_79
    iget-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_96

    .line 1716
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 1717
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1719
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateCacheForHAL()V

    .line 1721
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->doTemplateCleanupForUser(I)V

    goto :goto_a9

    .line 1723
    :cond_96
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1725
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1728
    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_ab
    .catchall {:try_start_54 .. :try_end_ab} :catchall_ad

    monitor-exit p0

    return-object v0

    .line 1685
    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "userId"    # I

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1799
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$YOMIOLvco2SvXVeJIulOSVKdX7A(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onBootPhase$0(I)V
    .registers 2
    .param p0, "phase"    # I

    .line 1971
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->onBootPhase(I)V

    return-void
.end method

.method private resetFailedAttemptsForUser(ZI)V
    .registers 6
    .param p1, "clearAttemptCounter"    # Z
    .param p2, "userId"    # I

    .line 1774
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_22

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset biometric lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_22
    if-eqz p1, :cond_2a

    .line 1778
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1780
    :cond_2a
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1783
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1785
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 1793
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1794
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 1795
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1793
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1796
    return-void
.end method

.method private startPostEnroll(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1752
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-nez v0, :cond_b

    .line 1753
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->startPostEnroll()I

    move-result v0

    return v0

    .line 1757
    :cond_b
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1758
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    const-string v2, "FingerprintService"

    if-nez v0, :cond_1b

    .line 1759
    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    return v1

    .line 1763
    :cond_1b
    :try_start_1b
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1f} :catch_20

    return v1

    .line 1764
    :catch_20
    move-exception v3

    .line 1765
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1767
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method private startPreEnroll(Landroid/os/IBinder;)J
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1733
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-nez v0, :cond_b

    .line 1734
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->startPreEnroll()J

    move-result-wide v0

    return-wide v0

    .line 1737
    :cond_b
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1738
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    const-string v3, "FingerprintService"

    if-nez v0, :cond_1c

    .line 1739
    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    return-wide v1

    .line 1743
    :cond_1c
    :try_start_1c
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_21

    return-wide v1

    .line 1744
    :catch_21
    move-exception v4

    .line 1745
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    .end local v4    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1627
    const/4 v0, 0x0

    .line 1628
    .local v0, "appOpsOk":Z
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 1630
    const/4 v0, 0x1

    goto :goto_18

    .line 1631
    :cond_d
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_18

    .line 1633
    const/4 v0, 0x1

    .line 1635
    :cond_18
    :goto_18
    return v0
.end method

.method protected checkUseBiometricPermission()V
    .registers 3

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    .line 1618
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1620
    :cond_11
    return-void
.end method

.method protected createServiceListenerImpl(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;
    .registers 3
    .param p1, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 2056
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    return-object v0
.end method

.method protected doTemplateCleanupForUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1904
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_9

    goto :goto_f

    .line 1907
    :cond_9
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->enumerate(I)V

    goto :goto_12

    .line 1905
    :cond_f
    :goto_f
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->doTemplateCleanupForUser(I)V

    .line 1909
    :goto_12
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 1477
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 1482
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 1472
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1640
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 1641
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1644
    :cond_b
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 1645
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v0, :cond_36

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getEnrolledTemplates: u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 1590
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 1585
    const-string v0, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 5

    .line 1672
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1673
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1674
    .local v1, "failedAttempts":I
    const/16 v3, 0x14

    if-lt v1, v3, :cond_11

    .line 1675
    const/4 v2, 0x2

    return v2

    .line 1676
    :cond_11
    if-lez v1, :cond_21

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 1677
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_21

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_21

    .line 1679
    const/4 v2, 0x1

    return v2

    .line 1681
    :cond_21
    return v2
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 1580
    const-string v0, "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 1611
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .registers 2

    .line 1467
    const-string v0, "FingerprintService"

    return-object v0
.end method

.method protected handleAcquired(JII)V
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 1919
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleAcquired(JII)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1920
    return-void

    .line 1922
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    .line 1923
    return-void
.end method

.method protected handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "authenticated"    # Z
    .param p2, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1935
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-eqz v0, :cond_8

    .line 1936
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 1937
    return-void

    .line 1939
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1940
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    if-eqz v1, :cond_21

    .line 1941
    sget-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleAuthenticated(ZLcom/android/server/biometrics/ClientMonitor;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1942
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;->onStop()V

    .line 1943
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 1946
    :cond_21
    invoke-virtual {p2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    if-eqz v1, :cond_32

    .line 1947
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPerformanceStats()Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v1

    iget v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_3c

    .line 1949
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPerformanceStats()Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    move-result-object v1

    iget v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    .line 1952
    :goto_3c
    return-void
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 1913
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1914
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1915
    return-void
.end method

.method protected handleError(JII)V
    .registers 6
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1927
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleError(JII)V

    .line 1928
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    .line 1929
    return-void
.end method

.method protected handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1957
    .local v0, "c":Lcom/android/server/biometrics/ClientMonitor;
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 1958
    sget-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleRemoved(Lcom/android/server/biometrics/ClientMonitor;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 1959
    return-void
.end method

.method protected handleUserComplete(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .line 1982
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleUserComplete(I)V

    .line 1983
    return-void
.end method

.method protected handleUserSwitching(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1976
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleUserSwitching(I)V

    .line 1977
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserSwitching(I)V

    .line 1978
    return-void
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1595
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 1596
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1600
    :cond_b
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 1601
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v0, :cond_36

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hasEnrolledBiometrics: u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 1488
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-nez v0, :cond_b

    .line 1489
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->hasReachedEnrollmentLimit(I)Z

    move-result v0

    return v0

    .line 1493
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1495
    .local v0, "limit":I
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1496
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_2d

    .line 1497
    const-string v2, "FingerprintService"

    const-string v3, "Too many fingerprints registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v2, 0x1

    return v2

    .line 1500
    :cond_2d
    const/4 v2, 0x0

    return v2
.end method

.method protected isStrongBiometric()Z
    .registers 3

    .line 2052
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getSecurityLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 7
    .param p1, "isActive"    # Z

    .line 1654
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1655
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1657
    :try_start_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v2, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    .line 1661
    goto :goto_1d

    .line 1658
    :catch_13
    move-exception v2

    .line 1660
    .local v2, "re":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1655
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1663
    .end local v1    # "i":I
    :cond_20
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1971
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$Fpj_260L5bRThzRqjlgMolaf90Y;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$Fpj_260L5bRThzRqjlgMolaf90Y;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1972
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1460
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 1461
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1462
    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    const-string v1, "FingerprintService.onStart"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1463
    return-void
.end method

.method protected semCanUseBiometric(Lcom/android/server/biometrics/ClientMonitor;)Z
    .registers 12
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 1987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1989
    .local v0, "orgId":J
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    .line 1990
    .local v2, "ccm":Lcom/android/server/biometrics/ClientMonitor;
    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_66

    .line 1991
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v7

    .line 1992
    .local v7, "ccExt":Lcom/android/server/biometrics/SemClientExtension;
    instance-of v8, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    if-eqz v8, :cond_66

    .line 1993
    invoke-virtual {v7}, Lcom/android/server/biometrics/SemClientExtension;->isPrompt()Z

    move-result v8

    if-eqz v8, :cond_66

    move-object v8, v7

    check-cast v8, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 1994
    invoke-virtual {v8, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->hasPromptPrivilegedAttr(I)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1995
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/biometrics/SemClientExtension;->isKeyguard()Z

    move-result v8

    if-nez v8, :cond_66

    .line 1996
    invoke-static {}, Lcom/android/server/biometrics/Utils;->getTopTaskPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    .line 1997
    const-string v3, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; exclusive biometric prompt is in progress"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const/4 v3, 0x5

    invoke-virtual {p1, v4, v5, v3, v6}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_11b

    .line 2000
    nop

    .line 2045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2000
    return v6

    .line 2004
    .end local v7    # "ccExt":Lcom/android/server/biometrics/SemClientExtension;
    :cond_66
    :try_start_66
    sget-boolean v7, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_116

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->isOneHandMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 2007
    const/16 v7, 0x1389

    invoke-virtual {p1, v4, v5, v3, v7}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    .line 2009
    instance-of v3, p1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    if-eqz v3, :cond_a8

    .line 2010
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/SemClientExtension;->isKeyguard()Z

    move-result v3

    if-nez v3, :cond_a8

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1040b4f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2011
    invoke-static {v3, v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 2013
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_a8
    .catchall {:try_start_66 .. :try_end_a8} :catchall_11b

    .line 2016
    :cond_a8
    nop

    .line 2045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2016
    return v6

    .line 2020
    :cond_ad
    :try_start_ad
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 2021
    const/16 v7, 0x138b

    invoke-virtual {p1, v4, v5, v3, v7}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    .line 2023
    instance-of v3, p1, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;

    if-eqz v3, :cond_f5

    .line 2024
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/SemClientExtension;->isKeyguard()Z

    move-result v3

    if-nez v3, :cond_f5

    .line 2025
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040b50

    new-array v5, v8, [Ljava/lang/Object;

    .line 2026
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1040b4d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2025
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2027
    .local v3, "errString":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricServiceBase$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {v4, v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_f5
    .catchall {:try_start_ad .. :try_end_f5} :catchall_11b

    .line 2030
    .end local v3    # "errString":Ljava/lang/CharSequence;
    :cond_f5
    nop

    .line 2045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2030
    return v6

    .line 2034
    :cond_fa
    :try_start_fa
    sget-boolean v7, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz v7, :cond_116

    .line 2035
    instance-of v7, p1, Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    if-eqz v7, :cond_116

    .line 2036
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->isWirelessPowerLimitationRunning()Z

    move-result v7

    if-eqz v7, :cond_116

    .line 2037
    const/16 v7, 0x138c

    invoke-virtual {p1, v4, v5, v3, v7}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z
    :try_end_111
    .catchall {:try_start_fa .. :try_end_111} :catchall_11b

    .line 2039
    nop

    .line 2045
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2039
    return v6

    .line 2045
    .end local v2    # "ccm":Lcom/android/server/biometrics/ClientMonitor;
    :cond_116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2046
    nop

    .line 2047
    return v8

    .line 2045
    :catchall_11b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2046
    throw v2
.end method

.method public serviceDied(J)V
    .registers 4
    .param p1, "cookie"    # J

    .line 1505
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 1506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1509
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mServiceExtImpl:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleServiceDied()V

    .line 1512
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 1667
    const/4 v0, 0x1

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 1516
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1518
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_ff

    .line 1520
    :try_start_6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    .line 1522
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/FingerprintService;->DEBUG:Z

    if-nez v1, :cond_15

    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1523
    :cond_15
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActiveGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_36
    iget v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v1, :cond_d5

    .line 1528
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->FEATURE_AOSP_CODE:Z

    if-nez v1, :cond_61

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v1, :cond_43

    goto :goto_61

    .line 1558
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/vendor/biometrics/fp/User_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 1560
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    .line 1562
    :cond_5d
    invoke-interface {v0, p1, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    goto :goto_d3

    .line 1529
    .end local v1    # "path":Ljava/lang/String;
    :cond_61
    :goto_61
    sget v1, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 1530
    .local v1, "firstSdkInt":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_81

    .line 1531
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First SDK version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_81
    const/16 v2, 0x1b

    if-gt v1, v2, :cond_8a

    .line 1536
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .local v2, "baseDir":Ljava/io/File;
    goto :goto_8e

    .line 1538
    .end local v2    # "baseDir":Ljava/io/File;
    :cond_8a
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1541
    .restart local v2    # "baseDir":Ljava/io/File;
    :goto_8e
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "fpdata"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1542
    .local v3, "fpDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_cb

    .line 1543
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_bd

    .line 1544
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    return-void

    .line 1550
    :cond_bd
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_cb

    .line 1551
    const-string v4, "FingerprintService"

    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    return-void

    .line 1555
    :cond_cb
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 1556
    nop

    .line 1566
    .end local v1    # "firstSdkInt":I
    .end local v2    # "baseDir":Ljava/io/File;
    .end local v3    # "fpDir":Ljava/io/File;
    :goto_d3
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1568
    :cond_d5
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    monitor-enter v1
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d8} :catch_f7

    .line 1569
    :try_start_d8
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v4

    if-eqz v4, :cond_e9

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v4

    goto :goto_eb

    :cond_e9
    const-wide/16 v4, 0x0

    :goto_eb
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1569
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    monitor-exit v1

    .line 1574
    goto :goto_ff

    .line 1571
    :catchall_f4
    move-exception v2

    monitor-exit v1
    :try_end_f6
    .catchall {:try_start_d8 .. :try_end_f6} :catchall_f4

    .end local v0    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .end local p1    # "userId":I
    .end local p2    # "clientPackage":Ljava/lang/String;
    :try_start_f6
    throw v2
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_f7} :catch_f7

    .line 1572
    .restart local v0    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .restart local p1    # "userId":I
    .restart local p2    # "clientPackage":Ljava/lang/String;
    :catch_f7
    move-exception v1

    .line 1573
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1576
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_ff
    :goto_ff
    return-void
.end method
