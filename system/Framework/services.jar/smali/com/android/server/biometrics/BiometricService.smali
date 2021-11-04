.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;,
        Lcom/android/server/biometrics/BiometricService$Injector;,
        Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;,
        Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;,
        Lcom/android/server/biometrics/BiometricService$SettingObserver;,
        Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;,
        Lcom/android/server/biometrics/BiometricService$AuthSession;,
        Lcom/android/server/biometrics/BiometricService$BiometricStatus;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_DISABLED_BY_DEVICE_POLICY:I = 0x2

.field private static final BIOMETRIC_HARDWARE_NOT_DETECTED:I = 0x5

.field private static final BIOMETRIC_INSUFFICIENT_STRENGTH:I = 0x3

.field private static final BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE:I = 0x4

.field private static final BIOMETRIC_NOT_ENABLED_FOR_APPS:I = 0x7

.field private static final BIOMETRIC_NOT_ENROLLED:I = 0x6

.field private static final BIOMETRIC_NO_HARDWARE:I = 0x0

.field private static final BIOMETRIC_OK:I = 0x1

.field private static final DEBUG:Z

.field private static final MSG_AUTHENTICATE:I = 0x9

.field private static final MSG_CANCEL_AUTHENTICATION:I = 0xa

.field private static final MSG_CLIENT_DIED:I = 0xe

.field private static final MSG_ON_ACQUIRED:I = 0x5

.field private static final MSG_ON_AUTHENTICATION_REJECTED:I = 0x3

.field private static final MSG_ON_AUTHENTICATION_SUCCEEDED:I = 0x2

.field private static final MSG_ON_AUTHENTICATION_TIMED_OUT:I = 0xb

.field private static final MSG_ON_DEVICE_CREDENTIAL_PRESSED:I = 0xc

.field private static final MSG_ON_DISMISSED:I = 0x6

.field private static final MSG_ON_ERROR:I = 0x4

.field private static final MSG_ON_READY_FOR_AUTHENTICATION:I = 0x8

.field private static final MSG_ON_SYSTEM_EVENT:I = 0xd

.field private static final MSG_ON_TRY_AGAIN_PRESSED:I = 0x7

.field private static final SEM_MSG_SYSUI_ERROR:I = 0x3e9

.field static final SEM_STATE_BIOMETRIC_AUTH_CANCELED_CHANGING_BIOMETRICS:I = 0x64

.field static final SEM_STATE_BIOMETRIC_TRY_AGAIN:I = 0x65

.field static final STATE_AUTHENTICATED_PENDING_SYSUI:I = 0x6

.field static final STATE_AUTH_CALLED:I = 0x1

.field static final STATE_AUTH_IDLE:I = 0x0

.field static final STATE_AUTH_PAUSED:I = 0x3

.field static final STATE_AUTH_PENDING_CONFIRM:I = 0x5

.field static final STATE_AUTH_STARTED:I = 0x2

.field static final STATE_CLIENT_DIED_CANCELLING:I = 0x9

.field static final STATE_ERROR_PENDING_SYSUI:I = 0x7

.field static final STATE_SHOWING_DEVICE_CREDENTIAL:I = 0x8

.field static final TAG:Ljava/lang/String; = "BiometricService"


# instance fields
.field final mAuthenticators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mEnabledOnKeyguardCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field final mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field mKeyStore:Landroid/security/KeyStore;

.field mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private final mRandom:Ljava/util/Random;

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mTrustManager:Landroid/app/trust/ITrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1202
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V

    .line 1203
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1207
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 337
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    .line 360
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 758
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 1209
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1210
    nop

    .line 1211
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1212
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 1213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 1214
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1218
    :try_start_49
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class v2, Lcom/android/server/biometrics/BiometricService;

    .line 1225
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1218
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5b} :catch_5c

    .line 1229
    goto :goto_64

    .line 1227
    :catch_5c
    move-exception v0

    .line 1228
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Failed to register user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_64
    invoke-static {p1}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->createInstance(Landroid/content/Context;)V

    .line 1234
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/BiometricService;)Ljava/util/Random;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/BiometricService;Z[BZLandroid/os/Bundle;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [B
    .param p3, "x3"    # Z
    .param p4, "x4"    # Landroid/os/Bundle;

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(Z[BZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/BiometricService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleClientDied()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/BiometricService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnSysUiError(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/BiometricService;ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->checkAndGetAuthenticators(ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/BiometricService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->semGetEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricService;IIII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnError(IIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricService;I[B)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(I[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnChangeAuthenticator(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricService;IZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(IZI)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    .registers 11
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Landroid/os/Bundle;
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I

    .line 94
    invoke-direct/range {p0 .. p10}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V

    return-void
.end method

.method private authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIII)V
    .registers 34
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I
    .param p11, "modality"    # I

    .line 2341
    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move/from16 v13, p11

    const-string/jumbo v0, "require_confirmation"

    const/4 v12, 0x1

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2343
    .local v0, "requireConfirmation":Z
    and-int/lit8 v1, v13, 0x8

    const/4 v11, 0x0

    if-eqz v1, :cond_29

    .line 2345
    if-nez v0, :cond_22

    iget-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 2346
    move/from16 v10, p4

    invoke-virtual {v1, v10}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceAlwaysRequireConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_24

    :cond_20
    move v1, v11

    goto :goto_25

    .line 2345
    :cond_22
    move/from16 v10, p4

    .line 2346
    :goto_24
    move v1, v12

    :goto_25
    move v0, v1

    move/from16 v16, v0

    goto :goto_2d

    .line 2343
    :cond_29
    move/from16 v10, p4

    move/from16 v16, v0

    .line 2350
    .end local v0    # "requireConfirmation":Z
    .local v16, "requireConfirmation":Z
    :goto_2d
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x5

    const/4 v9, 0x0

    const-string v8, "BiometricService"

    if-eqz v0, :cond_5a

    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop pending client "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, v1, v11}, Lcom/android/server/biometrics/BiometricService$AuthSession;->onError(II)V

    .line 2353
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2354
    iput-object v9, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2356
    :cond_5a
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_97

    .line 2357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop current client "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, v1, v11}, Lcom/android/server/biometrics/BiometricService$AuthSession;->onError(II)V

    .line 2361
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2362
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v7, 0x0

    .line 2361
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 2364
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2365
    iput-object v9, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2373
    :cond_97
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 2374
    .local v7, "cookie":I
    const-string v0, "authenticators_allowed"

    invoke-virtual {v14, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2376
    .local v5, "authenticators":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating auth session. Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authenticators: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    .line 2383
    .local v6, "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v0, -0x8001

    and-int/2addr v0, v5

    if-eqz v0, :cond_e3

    .line 2384
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2386
    :cond_e3
    new-instance v0, Lcom/android/server/biometrics/BiometricService$AuthSession;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v4, p1

    move/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "authenticators":I
    .end local v6    # "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v17, "authenticators":I
    .local v18, "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-wide/from16 v5, p2

    move/from16 v19, v7

    .end local v7    # "cookie":I
    .local v19, "cookie":I
    move/from16 v7, p4

    move-object/from16 v20, v8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lcom/android/server/biometrics/BiometricService$AuthSession;-><init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZ)V

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2391
    move/from16 v14, v19

    .end local v19    # "cookie":I
    .local v14, "cookie":I
    invoke-virtual {v0, v14}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semCreateAuthSessionExtension(I)V

    .line 2394
    const v0, 0x8000

    move/from16 v13, v17

    .end local v17    # "authenticators":I
    .local v13, "authenticators":I
    if-ne v13, v0, :cond_15e

    .line 2395
    :try_start_11a
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2396
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2397
    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2412
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_12b} :catch_156

    const/4 v12, 0x0

    :try_start_12c
    invoke-virtual {v0, v12}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->openSysUiSession(I)V

    .line 2413
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    const/4 v5, 0x0

    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    move-wide/from16 v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->show(IIIZJLjava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_148} :catch_14e

    move/from16 v19, v13

    move/from16 v21, v14

    goto/16 :goto_1b9

    .line 2446
    :catch_14e
    move-exception v0

    move v15, v12

    move/from16 v19, v13

    move/from16 v21, v14

    goto/16 :goto_1c4

    :catch_156
    move-exception v0

    move/from16 v19, v13

    move/from16 v21, v14

    const/4 v15, 0x0

    goto/16 :goto_1c4

    .line 2425
    :cond_15e
    const/4 v12, 0x0

    :try_start_15f
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2426
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    move-object v11, v1

    .line 2428
    .local v11, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v1, v11, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    move/from16 v10, p11

    if-ne v1, v10, :cond_1ab

    .line 2430
    iget-object v1, v11, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v7, v15, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2433
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_189} :catch_1be

    .line 2430
    move/from16 v2, v16

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p6

    move v9, v14

    move v15, v10

    move/from16 v10, p8

    move-object/from16 v17, v11

    .end local v11    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .local v17, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    move/from16 v11, p9

    move v15, v12

    move/from16 v12, p10

    move/from16 v19, v13

    .end local v13    # "authenticators":I
    .local v19, "authenticators":I
    move v13, v0

    move/from16 v21, v14

    .end local v14    # "cookie":I
    .local v21, "cookie":I
    move-object/from16 v14, p7

    :try_start_1a5
    invoke-interface/range {v1 .. v14}, Landroid/hardware/biometrics/IBiometricAuthenticator;->semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIIILandroid/os/Bundle;)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1a8} :catch_1a9

    .line 2442
    goto :goto_1b9

    .line 2446
    .end local v17    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :catch_1a9
    move-exception v0

    goto :goto_1c4

    .line 2428
    .end local v19    # "authenticators":I
    .end local v21    # "cookie":I
    .restart local v11    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .restart local v13    # "authenticators":I
    .restart local v14    # "cookie":I
    :cond_1ab
    move-object/from16 v17, v11

    move v15, v12

    move/from16 v19, v13

    move/from16 v21, v14

    .line 2444
    .end local v11    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v13    # "authenticators":I
    .end local v14    # "cookie":I
    .restart local v19    # "authenticators":I
    .restart local v21    # "cookie":I
    move-object/from16 v15, p0

    goto :goto_16a

    .line 2426
    .end local v19    # "authenticators":I
    .end local v21    # "cookie":I
    .restart local v13    # "authenticators":I
    .restart local v14    # "cookie":I
    :cond_1b5
    move/from16 v19, v13

    move/from16 v21, v14

    .line 2455
    .end local v13    # "authenticators":I
    .end local v14    # "cookie":I
    .restart local v19    # "authenticators":I
    .restart local v21    # "cookie":I
    :goto_1b9
    move-object/from16 v3, p5

    move/from16 v4, p11

    goto :goto_1f1

    .line 2446
    .end local v19    # "authenticators":I
    .end local v21    # "cookie":I
    .restart local v13    # "authenticators":I
    .restart local v14    # "cookie":I
    :catch_1be
    move-exception v0

    move v15, v12

    move/from16 v19, v13

    move/from16 v21, v14

    .end local v13    # "authenticators":I
    .end local v14    # "cookie":I
    .restart local v19    # "authenticators":I
    .restart local v21    # "cookie":I
    :goto_1c4
    move-object v1, v0

    .line 2447
    .local v1, "e":Ljava/lang/Exception;
    const-string v0, "Unable to start authentication"

    move-object/from16 v2, v20

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2450
    const/4 v0, 0x2

    move-object/from16 v3, p5

    move/from16 v4, p11

    move v5, v15

    :try_start_1d2
    invoke-interface {v3, v4, v0, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d5} :catch_1d6

    .line 2453
    goto :goto_1f1

    .line 2451
    :catch_1d6
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 2452
    .local v0, "re":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "authenticateInternal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    .end local v0    # "re":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f1
    return-void
.end method

.method private static biometricStatusToBiometricConstant(I)I
    .registers 4
    .param p0, "status"    # I

    .line 1283
    const/16 v0, 0xc

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    if-eq p0, v1, :cond_18

    const/4 v2, 0x3

    if-eq p0, v2, :cond_17

    const/4 v0, 0x4

    if-eq p0, v0, :cond_14

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    .line 1301
    return v1

    .line 1297
    :cond_11
    const/16 v0, 0xb

    return v0

    .line 1293
    :cond_14
    const/16 v0, 0xf

    return v0

    .line 1291
    :cond_17
    return v0

    .line 1287
    :cond_18
    const/4 v0, 0x0

    return v0

    .line 1285
    :cond_1a
    return v0
.end method

.method private checkAndGetAuthenticators(ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;
    .registers 31
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "checkDevicePolicyManager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/os/Bundle;)Z

    move-result v8

    .line 1388
    .local v8, "biometricRequested":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/os/Bundle;)Z

    move-result v9

    .line 1390
    .local v9, "credentialRequested":Z
    iget-object v0, v6, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    move/from16 v10, p1

    invoke-interface {v0, v10}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z

    move-result v11

    .line 1393
    .local v11, "credentialOk":Z
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string v1, ", "

    const-string v12, "BiometricService"

    if-eqz v0, :cond_3c

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndGetAuthenticators: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_3c
    const/4 v0, 0x0

    .line 1406
    .local v0, "firstBiometricModality":I
    const/4 v2, 0x0

    .line 1408
    .local v2, "firstBiometricStatus":I
    const/4 v13, 0x0

    .line 1409
    .local v13, "biometricModality":I
    const/4 v3, 0x0

    .line 1412
    .local v3, "biometricStatus":I
    const-string v14, "authenticators_allowed"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1413
    .local v15, "reqAuthenticators":I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v5, v4

    .line 1414
    .local v5, "bioStatusArray":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .line 1415
    .local v4, "bBreak":Z
    move/from16 v16, v3

    .line 1416
    .local v16, "tmpBioStatus":I
    move/from16 v17, v13

    .line 1418
    .local v17, "tmpBioModality":I
    move/from16 v18, v0

    .end local v0    # "firstBiometricModality":I
    .local v18, "firstBiometricModality":I
    const-string v0, "SEM_KEY_BIOMETRIC_TYPE"

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1419
    .local v0, "requestedSepBioType":I
    if-eqz v0, :cond_61

    .line 1423
    or-int/lit16 v10, v15, 0xff

    invoke-virtual {v7, v14, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1426
    :cond_61
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    .end local v2    # "firstBiometricStatus":I
    .local v19, "firstBiometricStatus":I
    const-string v2, "Prompt: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v1, v6, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v20, v16

    move/from16 v21, v17

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "biometricStatus":I
    .end local v4    # "bBreak":Z
    .local v16, "biometricStatus":I
    .local v17, "bBreak":Z
    .local v20, "tmpBioStatus":I
    .local v21, "tmpBioModality":I
    :goto_8b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_145

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 1430
    .local v3, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/os/Bundle;)I

    move-result v22

    .line 1431
    .local v22, "requestedStrength":I
    move v2, v0

    .end local v0    # "requestedSepBioType":I
    .local v2, "requestedSepBioType":I
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v23, v10

    move v10, v2

    .end local v2    # "requestedSepBioType":I
    .local v10, "requestedSepBioType":I
    move/from16 v2, p1

    move/from16 v24, v13

    move-object v13, v3

    .end local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .local v13, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .local v24, "biometricModality":I
    move-object/from16 v3, p3

    move/from16 v25, v15

    move v15, v4

    .end local v15    # "reqAuthenticators":I
    .local v25, "reqAuthenticators":I
    move/from16 v4, p4

    move-object v15, v5

    .end local v5    # "bioStatusArray":Landroid/util/SparseIntArray;
    .local v15, "bioStatusArray":Landroid/util/SparseIntArray;
    move/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService;->getStatusForBiometricAuthenticator(Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;ILjava/lang/String;ZI)Landroid/util/Pair;

    move-result-object v0

    .line 1435
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1437
    .end local v16    # "biometricStatus":I
    .local v1, "biometricStatus":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Authenticator ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Modality: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v13, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Reported Modality: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-nez v18, :cond_10a

    .line 1444
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1445
    .end local v18    # "firstBiometricModality":I
    .local v2, "firstBiometricModality":I
    move v4, v1

    move/from16 v18, v2

    move/from16 v19, v4

    .line 1448
    .end local v2    # "firstBiometricModality":I
    .restart local v18    # "firstBiometricModality":I
    :cond_10a
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 1450
    const/4 v2, 0x1

    if-ne v1, v2, :cond_139

    if-nez v17, :cond_139

    .line 1453
    const/4 v2, 0x1

    .line 1454
    .end local v17    # "bBreak":Z
    .local v2, "bBreak":Z
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1455
    .end local v21    # "tmpBioModality":I
    .local v4, "tmpBioModality":I
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v17, v2

    move/from16 v21, v4

    move/from16 v20, v5

    .line 1461
    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "bBreak":Z
    .end local v4    # "tmpBioModality":I
    .end local v13    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v22    # "requestedStrength":I
    .restart local v17    # "bBreak":Z
    .restart local v21    # "tmpBioModality":I
    :cond_139
    move/from16 v16, v1

    move v0, v10

    move-object v5, v15

    move-object/from16 v10, v23

    move/from16 v13, v24

    move/from16 v15, v25

    goto/16 :goto_8b

    .line 1463
    .end local v1    # "biometricStatus":I
    .end local v10    # "requestedSepBioType":I
    .end local v24    # "biometricModality":I
    .end local v25    # "reqAuthenticators":I
    .local v0, "requestedSepBioType":I
    .restart local v5    # "bioStatusArray":Landroid/util/SparseIntArray;
    .local v13, "biometricModality":I
    .local v15, "reqAuthenticators":I
    .restart local v16    # "biometricStatus":I
    :cond_145
    move-object/from16 v3, p3

    move v10, v0

    move/from16 v24, v13

    move/from16 v25, v15

    move-object v15, v5

    .end local v0    # "requestedSepBioType":I
    .end local v5    # "bioStatusArray":Landroid/util/SparseIntArray;
    .end local v13    # "biometricModality":I
    .restart local v10    # "requestedSepBioType":I
    .local v15, "bioStatusArray":Landroid/util/SparseIntArray;
    .restart local v24    # "biometricModality":I
    .restart local v25    # "reqAuthenticators":I
    if-eqz v10, :cond_15b

    .line 1464
    if-eqz v9, :cond_155

    if-eqz v11, :cond_155

    const/4 v0, 0x1

    goto :goto_156

    :cond_155
    const/4 v0, 0x0

    :goto_156
    invoke-direct {v6, v10, v15, v7, v0}, Lcom/android/server/biometrics/BiometricService;->semCheckAndSetRequestedBiometricType(ILandroid/util/SparseIntArray;Landroid/os/Bundle;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1468
    :cond_15b
    move/from16 v0, v21

    .line 1469
    .end local v24    # "biometricModality":I
    .local v0, "biometricModality":I
    move/from16 v1, v20

    .line 1470
    .end local v16    # "biometricStatus":I
    .restart local v1    # "biometricStatus":I
    invoke-direct {v6, v15, v7}, Lcom/android/server/biometrics/BiometricService;->semSetAvailabilityBiometricForPrompt(Landroid/util/SparseIntArray;Landroid/os/Bundle;)V

    .line 1474
    if-eqz v8, :cond_194

    if-eqz v9, :cond_194

    .line 1475
    if-nez v11, :cond_17c

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16c

    goto :goto_17c

    .line 1484
    :cond_16c
    new-instance v2, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xb

    .line 1485
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1484
    return-object v2

    .line 1476
    :cond_17c
    :goto_17c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_185

    .line 1479
    const v2, 0x8000

    invoke-virtual {v7, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1482
    :cond_185
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1487
    :cond_194
    if-eqz v8, :cond_1bd

    .line 1488
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1ab

    .line 1489
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1490
    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->biometricStatusToBiometricConstant(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1489
    return-object v2

    .line 1492
    :cond_1ab
    new-instance v2, Landroid/util/Pair;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1493
    invoke-static/range {v19 .. v19}, Lcom/android/server/biometrics/BiometricService;->biometricStatusToBiometricConstant(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1492
    return-object v2

    .line 1495
    :cond_1bd
    if-eqz v9, :cond_1e1

    .line 1496
    if-eqz v11, :cond_1d0

    .line 1497
    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 1499
    :cond_1d0
    const/4 v4, 0x0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xe

    .line 1500
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1499
    return-object v2

    .line 1505
    :cond_1e1
    const-string v2, "No authenticators requested"

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private checkInternalPermission()V
    .registers 4

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method private getStatusForBiometricAuthenticator(Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;ILjava/lang/String;ZI)Landroid/util/Pair;
    .registers 12
    .param p1, "authenticator"    # Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "checkDevicePolicyManager"    # Z
    .param p5, "requestedStrength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;",
            "I",
            "Ljava/lang/String;",
            "ZI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1318
    const/4 v0, 0x0

    .line 1320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1318
    if-eqz p4, :cond_1a

    .line 1319
    iget v1, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/biometrics/BiometricService;->isBiometricDisabledByDevicePolicy(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1320
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1325
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->semUpdateOemStrength()V

    .line 1327
    iget v1, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    .line 1328
    invoke-static {v1, p5}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v1

    .line 1329
    .local v1, "wasStrongEnough":Z
    nop

    .line 1330
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->getActualStrength()I

    move-result v2

    invoke-static {v2, p5}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v2

    .line 1333
    .local v2, "isStrongEnough":Z
    sget-boolean v3, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    if-eqz v3, :cond_4f

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusForBiometricAuthenticator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BiometricService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_4f
    if-eqz v1, :cond_64

    if-nez v2, :cond_64

    .line 1340
    new-instance v0, Landroid/util/Pair;

    iget v3, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    .line 1341
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1340
    return-object v0

    .line 1342
    :cond_64
    if-nez v1, :cond_71

    .line 1343
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 1347
    :cond_71
    const/4 v3, 0x5

    :try_start_72
    iget-object v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1348
    new-instance v0, Landroid/util/Pair;

    iget v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1351
    :cond_8a
    iget-object v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p2, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 1352
    new-instance v0, Landroid/util/Pair;

    iget v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_a2} :catch_c8

    return-object v0

    .line 1356
    :cond_a3
    nop

    .line 1358
    iget v3, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-direct {p0, v3, p2}, Lcom/android/server/biometrics/BiometricService;->isEnabledForApp(II)Z

    move-result v3

    if-nez v3, :cond_b7

    .line 1359
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 1362
    :cond_b7
    new-instance v0, Landroid/util/Pair;

    iget v3, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1354
    :catch_c8
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/Pair;

    iget v5, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I

    .line 2308
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p5

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;III)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2327
    return-void
.end method

.method private handleAuthenticationRejected()V
    .registers 5

    .line 1653
    const-string v0, "BiometricService"

    const-string/jumbo v1, "handleAuthenticationRejected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :try_start_8
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_13

    .line 1658
    const-string/jumbo v1, "handleAuthenticationRejected: Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-void

    .line 1667
    :cond_13
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricAuthenticated(ZLjava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2400(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;ZLjava/lang/String;)V

    .line 1675
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2b

    .line 1678
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1681
    :cond_2b
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_32} :catch_33

    .line 1684
    goto :goto_39

    .line 1682
    :catch_33
    move-exception v1

    .line 1683
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1685
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method private handleAuthenticationSucceeded(Z[BZLandroid/os/Bundle;)V
    .registers 9
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # [B
    .param p3, "isStrongBiometric"    # Z
    .param p4, "data"    # Landroid/os/Bundle;

    .line 1607
    const-string v0, "BiometricService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_d

    .line 1608
    const-string/jumbo v1, "handleAuthenticationSucceeded: Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void

    .line 1612
    :cond_d
    if-eqz p3, :cond_14

    .line 1615
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object p2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    goto :goto_1b

    .line 1617
    :cond_14
    if-eqz p2, :cond_1b

    .line 1618
    const-string v1, "Dropping authToken for non-strong biometric"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_1b
    :goto_1b
    if-nez p1, :cond_23

    .line 1623
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    goto :goto_31

    .line 1625
    :cond_23
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J
    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2202(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 1626
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1635
    :goto_31
    const/4 v1, 0x0

    .line 1636
    .local v1, "name":Ljava/lang/String;
    if-eqz p4, :cond_54

    .line 1637
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v2

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_45

    .line 1639
    const-string v2, "SEM_KEY_BIOMETRICS_ID"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1641
    :cond_45
    const-string v2, "KEY_IDENTIFIER_NAME"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1642
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v2

    iput-object p4, v2, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mResultExtraData:Landroid/os/Bundle;

    .line 1644
    :cond_54
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricAuthenticated(ZLjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2400(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;ZLjava/lang/String;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5e} :catch_5f

    .line 1649
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_65

    .line 1647
    :catch_5f
    move-exception v1

    .line 1648
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1650
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_65
    return-void
.end method

.method private handleAuthenticationTimedOut(III)V
    .registers 8
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 1688
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1689
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1688
    const-string/jumbo v2, "handleAuthenticationTimedOut(%d, %d, %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :try_start_24
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_2f

    .line 1694
    const-string/jumbo v0, "handleAuthenticationTimedOut: Auth session is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return-void

    .line 1701
    :cond_2f
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricError(III)V
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2500(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;III)V

    .line 1705
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3c} :catch_3d

    .line 1708
    goto :goto_43

    .line 1706
    :catch_3d
    move-exception v0

    .line 1707
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Remote exception"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1709
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_43
    return-void
.end method

.method private handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I

    .line 2460
    const-string v0, "BiometricService"

    if-eqz p1, :cond_62

    if-nez p2, :cond_7

    goto :goto_62

    .line 2465
    :cond_7
    sget-boolean v1, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    if-eqz v1, :cond_28

    .line 2466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCancelAuthentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_28
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v1, :cond_57

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_57

    .line 2475
    :try_start_31
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 2485
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v1

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->hide(II)V
    invoke-static {v1, v4, v4}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2600(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;II)V

    .line 2486
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2487
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_4f} :catch_50

    goto :goto_56

    .line 2491
    :catch_50
    move-exception v1

    .line 2492
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2493
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_56
    goto :goto_61

    .line 2495
    :cond_57
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 2498
    :goto_61
    return-void

    .line 2461
    :cond_62
    :goto_62
    const-string v1, "Unable to cancel, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    return-void
.end method

.method private handleClientDied()V
    .registers 10

    .line 2180
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_c

    .line 2181
    const-string v0, "Auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    return-void

    .line 2185
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysUiSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :try_start_30
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_57

    .line 2192
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/16 v2, 0x9

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2193
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    goto :goto_69

    .line 2205
    :cond_57
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    const/4 v2, 0x0

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->hide(II)V
    invoke-static {v0, v2, v2}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2600(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;II)V

    .line 2206
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_69} :catch_6a

    .line 2213
    :goto_69
    goto :goto_7f

    .line 2211
    :catch_6a
    move-exception v0

    .line 2212
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-void
.end method

.method private handleOnAcquired(ILjava/lang/String;)V
    .registers 7
    .param p1, "acquiredInfo"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1917
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_d

    .line 1918
    const-string/jumbo v0, "onAcquired(): Auth session is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return-void

    .line 1922
    :cond_d
    if-nez p2, :cond_24

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring null message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    return-void

    .line 1931
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricHelp(IIILjava/lang/String;)V
    invoke-static {v0, v2, p1, v3, p2}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2700(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;IIILjava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_30} :catch_31

    .line 1938
    goto :goto_37

    .line 1936
    :catch_31
    move-exception v0

    .line 1937
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1939
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method private handleOnChangeAuthenticator(I)V
    .registers 28
    .param p1, "type"    # I

    .line 2078
    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v10, "BiometricService"

    if-nez v0, :cond_11

    .line 2079
    const-string/jumbo v0, "handleOnChangeAuthenticator: No Auth session"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    return-void

    .line 2082
    :cond_11
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    if-ne v0, v9, :cond_1a

    .line 2083
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V

    goto/16 :goto_c6

    .line 2085
    :cond_1a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricService;->semGetAuthenticator(I)Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    move-result-object v11

    .line 2086
    .local v11, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    if-eqz v11, :cond_c6

    .line 2089
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2090
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/4 v7, 0x0

    .line 2089
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 2093
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semChangeModalities(I)V

    .line 2094
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2095
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->setStateExtra(I)V

    .line 2097
    :try_start_49
    iget-object v12, v11, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v13, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v14, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v2, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v3, v8, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iget-object v4, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v5, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2099
    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->getCookie()I

    move-result v20

    iget-object v5, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v5, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v6, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v7, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v15, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2101
    invoke-virtual {v15}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v15

    iget v15, v15, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I

    iget-object v9, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v9}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    .line 2097
    move/from16 v24, v15

    move-wide v15, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v25, v9

    invoke-interface/range {v12 .. v25}, Landroid/hardware/biometrics/IBiometricAuthenticator;->semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIIILandroid/os/Bundle;)V

    .line 2102
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_a4

    .line 2103
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2105
    :cond_a4
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2106
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_ab} :catch_ac

    .line 2109
    goto :goto_c6

    .line 2107
    :catch_ac
    move-exception v0

    .line 2108
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleOnChangeAuthenticator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v11    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_c6
    :goto_c6
    return-void
.end method

.method private handleOnDeviceCredentialPressed()V
    .registers 10

    .line 2143
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onDeviceCredentialPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_12

    .line 2145
    const-string v1, "Auth session null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return-void

    .line 2151
    :cond_12
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2152
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/4 v8, 0x0

    .line 2151
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 2155
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2156
    return-void
.end method

.method private handleOnDismissed(I[B)V
    .registers 15
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 1942
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_21

    .line 1943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", auth session null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void

    .line 1947
    :cond_21
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->logDialogDismissed(I)V

    .line 1950
    packed-switch p1, :pswitch_data_112

    .line 2010
    goto/16 :goto_ef

    .line 1952
    :pswitch_29
    if-eqz p2, :cond_31

    .line 1953
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_8b

    .line 1955
    :cond_31
    const-string v0, "Credential confirmed but attestation is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 2002
    :pswitch_37
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mVendorCodeEscrow:I

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 2007
    goto/16 :goto_103

    .line 1988
    :pswitch_4c
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1995
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const/4 v11, 0x0

    .line 1995
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1998
    goto/16 :goto_103

    .line 1979
    :pswitch_6f
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 1982
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1985
    goto/16 :goto_103

    .line 1959
    :goto_8b
    :pswitch_8b
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    if-eqz v0, :cond_9b

    .line 1960
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_a1

    .line 1962
    :cond_9b
    const-string/jumbo v0, "mTokenEscrow is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :goto_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BP privileged flag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v2

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_e1

    .line 1968
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1969
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1970
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mResultExtraData:Landroid/os/Bundle;

    .line 1969
    invoke-interface {v0, v2, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSemAuthenticationSucceeded(ILandroid/os/Bundle;)V

    .line 1971
    goto :goto_103

    .line 1974
    :cond_e1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1975
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    .line 1974
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V

    .line 1976
    goto :goto_103

    .line 2020
    :catch_ed
    move-exception v0

    goto :goto_10c

    .line 2010
    :goto_ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :goto_103
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy(I)V

    .line 2018
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_10b} :catch_ed

    .line 2022
    goto :goto_111

    .line 2021
    .local v0, "e":Landroid/os/RemoteException;
    :goto_10c
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_111
    return-void

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_6f
        :pswitch_4c
        :pswitch_8b
        :pswitch_37
        :pswitch_37
        :pswitch_29
    .end packed-switch
.end method

.method private handleOnError(IIII)V
    .registers 33
    .param p1, "cookie"    # I
    .param p2, "modality"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1713
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v0, "SEM_KEY_AVAILABILITY_BIOMETRIC"

    const-string v6, "authenticators_allowed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleOnError: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cookie: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BiometricService"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    :try_start_2d
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2f} :catch_314

    const-string v9, ", "

    const/4 v10, 0x1

    const-string/jumbo v11, "modality mismatch, so ignore errors "

    const/16 v12, 0x8

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v7, :cond_142

    :try_start_3c
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v7, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v7

    if-eqz v7, :cond_142

    .line 1725
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    if-eq v3, v0, :cond_67

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    return-void

    .line 1732
    :cond_67
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    .line 1733
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mVendorCodeEscrow:I

    .line 1735
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v6, 0x2

    const/16 v7, 0x9

    if-ne v0, v6, :cond_c4

    .line 1736
    if-eq v4, v13, :cond_7e

    if-ne v4, v7, :cond_7d

    goto :goto_7e

    :cond_7d
    move v10, v15

    :cond_7e
    :goto_7e
    move v0, v10

    .line 1738
    .local v0, "errorLockout":Z
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_97

    if-eqz v0, :cond_97

    .line 1740
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v12, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1745
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v6

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricError(III)V
    invoke-static {v6, v3, v4, v5}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2500(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;III)V

    goto :goto_bf

    .line 1749
    :cond_97
    const/4 v6, 0x5

    if-ne v4, v6, :cond_b2

    .line 1754
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v6

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->hide(II)V
    invoke-static {v6, v15, v15}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2600(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;II)V

    .line 1761
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v6, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1763
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 1765
    iput-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_bf

    .line 1767
    :cond_b2
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v13, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1772
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v6

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricError(III)V
    invoke-static {v6, v3, v4, v5}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2500(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;III)V

    .line 1776
    .end local v0    # "errorLockout":Z
    :goto_bf
    move v6, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_30f

    :cond_c4
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_e7

    .line 1780
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1785
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->hide(II)V
    invoke-static {v0, v15, v15}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2600(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;II)V

    .line 1789
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 1791
    iput-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    move v6, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_30f

    .line 1792
    :cond_e7
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    if-ne v0, v12, :cond_10a

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Biometric canceled, ignoring from state: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_30f

    .line 1795
    :cond_10a
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    if-ne v0, v7, :cond_125

    .line 1800
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->hide(II)V
    invoke-static {v0, v15, v15}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2600(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;II)V

    .line 1801
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 1804
    iput-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    move v6, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_30f

    .line 1806
    :cond_125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Impossible session error state: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_30f

    .line 1809
    :cond_142
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_144} :catch_314

    if-eqz v7, :cond_2f6

    :try_start_146
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1810
    invoke-virtual {v7, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v7

    if-eqz v7, :cond_2eb

    .line 1813
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_152} :catch_2ef

    if-eq v3, v7, :cond_171

    .line 1814
    :try_start_154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Landroid/os/RemoteException; {:try_start_154 .. :try_end_170} :catch_314

    .line 1816
    return-void

    .line 1819
    :cond_171
    :try_start_171
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I
    :try_end_175
    .catch Landroid/os/RemoteException; {:try_start_171 .. :try_end_175} :catch_2ef

    if-ne v7, v10, :cond_2c6

    .line 1822
    :try_start_177
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isAllowDeviceCredential()Z

    move-result v7
    :try_end_17d
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_17d} :catch_2bf

    if-eqz v7, :cond_1c3

    .line 1823
    :try_start_17f
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    .line 1824
    invoke-virtual {v0, v6, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1827
    .local v0, "authenticators":I
    and-int/lit16 v0, v0, -0x100

    .line 1828
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1832
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1833
    iput v12, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1834
    iput-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1847
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->openSysUiSession(I)V

    .line 1848
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v11, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v12, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    const/4 v13, 0x0

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v14, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->show(IIIZJLjava/lang/String;)V
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_17f .. :try_end_1be} :catch_314

    .line 1855
    .end local v0    # "authenticators":I
    move v6, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_30f

    .line 1858
    :cond_1c3
    :try_start_1c3
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->getStateExtra()I

    move-result v6

    .line 1859
    .local v6, "stateExt":I
    const/16 v7, 0x64

    if-eq v6, v7, :cond_28f

    const/16 v7, 0x65

    if-ne v6, v7, :cond_1dd

    move v2, v3

    move v3, v4

    move/from16 v25, v6

    move-object/from16 v27, v8

    goto/16 :goto_295

    .line 1879
    :cond_1dd
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1e5} :catch_2bf

    .line 1880
    .local v7, "avaModality":I
    not-int v9, v3

    and-int/2addr v7, v9

    .line 1881
    if-eqz v7, :cond_26d

    .line 1882
    :try_start_1e9
    invoke-direct {v1, v7}, Lcom/android/server/biometrics/BiometricService;->semGetAuthenticator(I)Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    move-result-object v9

    .line 1883
    .local v9, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    if-eqz v9, :cond_25d

    .line 1884
    iget-object v10, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v10, v10, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1885
    iget-object v11, v9, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v12, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v14, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v10, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move/from16 v25, v6

    .end local v6    # "stateExt":I
    .local v25, "stateExt":I
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    move/from16 v26, v7

    .end local v7    # "avaModality":I
    .local v26, "avaModality":I
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1887
    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->getCookie()I

    move-result v19

    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I
    :try_end_224
    .catch Landroid/os/RemoteException; {:try_start_1e9 .. :try_end_224} :catch_264

    move-object/from16 v27, v8

    :try_start_226
    iget-object v8, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v8, v8, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v3, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1889
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v3

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I

    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    .line 1885
    move/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v18, v6

    move/from16 v20, v7

    move/from16 v21, v2

    move/from16 v22, v8

    move/from16 v23, v3

    move-object/from16 v24, v4

    invoke-interface/range {v11 .. v24}, Landroid/hardware/biometrics/IBiometricAuthenticator;->semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIIILandroid/os/Bundle;)V

    .line 1890
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v9, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semChangeModalities(I)V
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_226 .. :try_end_254} :catch_255

    .line 1891
    return-void

    .line 1909
    .end local v9    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v25    # "stateExt":I
    .end local v26    # "avaModality":I
    :catch_255
    move-exception v0

    move/from16 v6, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_2bb

    .line 1883
    .restart local v6    # "stateExt":I
    .restart local v7    # "avaModality":I
    .restart local v9    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_25d
    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    .end local v6    # "stateExt":I
    .end local v7    # "avaModality":I
    .restart local v25    # "stateExt":I
    .restart local v26    # "avaModality":I
    goto :goto_273

    .line 1909
    .end local v9    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v25    # "stateExt":I
    .end local v26    # "avaModality":I
    :catch_264
    move-exception v0

    move/from16 v6, p1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_318

    .line 1881
    .restart local v6    # "stateExt":I
    .restart local v7    # "avaModality":I
    :cond_26d
    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v8

    .line 1896
    .end local v6    # "stateExt":I
    .end local v7    # "avaModality":I
    .restart local v25    # "stateExt":I
    :goto_273
    :try_start_273
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;
    :try_end_277
    .catch Landroid/os/RemoteException; {:try_start_273 .. :try_end_277} :catch_289

    move/from16 v2, p2

    move/from16 v3, p3

    :try_start_27b
    invoke-interface {v0, v2, v3, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1898
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 1900
    iput-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1901
    .end local v25    # "stateExt":I
    move/from16 v6, p1

    goto/16 :goto_30f

    .line 1909
    :catch_289
    move-exception v0

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_2b9

    .line 1859
    .restart local v6    # "stateExt":I
    :cond_28f
    move v2, v3

    move v3, v4

    move/from16 v25, v6

    move-object/from16 v27, v8

    .line 1864
    .end local v6    # "stateExt":I
    .restart local v25    # "stateExt":I
    :goto_295
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    # invokes: Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricError(III)V
    invoke-static {v0, v2, v3, v5}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->access$2500(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;III)V

    .line 1867
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_2a7

    .line 1868
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 1870
    :cond_2a7
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1871
    iput-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1872
    iput v13, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1873
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    .line 1874
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mVendorCodeEscrow:I
    :try_end_2b7
    .catch Landroid/os/RemoteException; {:try_start_27b .. :try_end_2b7} :catch_2b8

    .line 1875
    return-void

    .line 1909
    .end local v25    # "stateExt":I
    :catch_2b8
    move-exception v0

    :goto_2b9
    move/from16 v6, p1

    :goto_2bb
    move-object/from16 v4, v27

    goto/16 :goto_319

    :catch_2bf
    move-exception v0

    move v2, v3

    move v3, v4

    move/from16 v6, p1

    goto/16 :goto_318

    .line 1903
    :cond_2c6
    move v2, v3

    move v3, v4

    move-object/from16 v27, v8

    :try_start_2ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Impossible pending session error state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2df
    .catch Landroid/os/RemoteException; {:try_start_2ca .. :try_end_2df} :catch_2e7

    move-object/from16 v4, v27

    :try_start_2e1
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v6, p1

    goto :goto_30f

    .line 1909
    :catch_2e7
    move-exception v0

    move-object/from16 v4, v27

    goto :goto_2f3

    .line 1810
    :cond_2eb
    move v2, v3

    move v3, v4

    move-object v4, v8

    goto :goto_2f9

    .line 1909
    :catch_2ef
    move-exception v0

    move v2, v3

    move v3, v4

    move-object v4, v8

    :goto_2f3
    move/from16 v6, p1

    goto :goto_319

    .line 1809
    :cond_2f6
    move v2, v3

    move v3, v4

    move-object v4, v8

    .line 1907
    :goto_2f9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cookie: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_303
    .catch Landroid/os/RemoteException; {:try_start_2e1 .. :try_end_303} :catch_312

    move/from16 v6, p1

    :try_start_305
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30f
    .catch Landroid/os/RemoteException; {:try_start_305 .. :try_end_30f} :catch_310

    .line 1911
    :goto_30f
    goto :goto_31e

    .line 1909
    :catch_310
    move-exception v0

    goto :goto_319

    :catch_312
    move-exception v0

    goto :goto_2f3

    :catch_314
    move-exception v0

    move v6, v2

    move v2, v3

    move v3, v4

    :goto_318
    move-object v4, v8

    .line 1910
    .local v0, "e":Landroid/os/RemoteException;
    :goto_319
    const-string v7, "Remote exception"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1912
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31e
    return-void
.end method

.method private handleOnReadyForAuthentication(IZI)V
    .registers 16
    .param p1, "cookie"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "userId"    # I

    .line 2222
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_c

    .line 2226
    const-string v0, "Pending auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    return-void

    .line 2230
    :cond_c
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2231
    .local v0, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2233
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_76

    .line 2234
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matched cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    .line 2237
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2236
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    goto :goto_77

    .line 2240
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_76
    goto :goto_16

    .line 2242
    :cond_77
    :goto_77
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14a

    .line 2243
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    if-eqz v2, :cond_8d

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8d

    const/4 v2, 0x1

    goto :goto_8e

    :cond_8d
    move v2, v3

    .line 2247
    .local v2, "continuing":Z
    :goto_8e
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->openSysUiSession(I)V

    .line 2248
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->setStateExtra(I)V

    .line 2251
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J
    invoke-static {v3, v4, v5}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2302(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 2255
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2257
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2258
    const/4 v3, 0x0

    .line 2259
    .local v3, "modality":I
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2260
    :goto_c0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 2261
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2262
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 2263
    .local v5, "foundAuthenticator":Z
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_105

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 2264
    .local v7, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v8, v7, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_104

    .line 2265
    const/4 v5, 0x1

    .line 2267
    :try_start_ee
    iget-object v8, v7, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_ee .. :try_end_fd} :catch_fe

    .line 2270
    goto :goto_104

    .line 2268
    :catch_fe
    move-exception v8

    .line 2269
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "Remote exception"

    invoke-static {v1, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2272
    .end local v7    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_104
    :goto_104
    goto :goto_d3

    .line 2273
    :cond_105
    if-nez v5, :cond_11f

    .line 2274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown modality: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_11f
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    or-int/2addr v3, v6

    .line 2277
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "foundAuthenticator":Z
    goto :goto_c0

    .line 2279
    :cond_12b
    if-nez v2, :cond_14a

    .line 2292
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v1, :cond_14a

    .line 2293
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v9, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v11, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    move v5, v3

    move v8, p2

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->show(IIIZJLjava/lang/String;)V

    .line 2302
    .end local v2    # "continuing":Z
    .end local v3    # "modality":I
    :cond_14a
    return-void
.end method

.method private handleOnSysUiError(II)V
    .registers 14
    .param p1, "error"    # I
    .param p2, "code"    # I

    .line 2115
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v0, :cond_24

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSysUiError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Auth session null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    return-void

    .line 2119
    :cond_24
    const/4 v0, 0x5

    .line 2120
    .local v0, "errCode":I
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2a

    .line 2121
    move v0, p2

    .line 2123
    :cond_2a
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 2124
    invoke-virtual {v1, p1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->onError(II)V

    .line 2125
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2126
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2128
    :cond_3a
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v1, :cond_5b

    .line 2129
    invoke-virtual {v1, p1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->onError(II)V

    .line 2132
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2133
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v10, 0x0

    .line 2132
    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 2135
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2136
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2138
    :cond_5b
    return-void
.end method

.method private handleOnSystemEvent(I)V
    .registers 6
    .param p1, "event"    # I

    .line 2159
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_c

    .line 2160
    const-string v0, "Auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    return-void

    .line 2164
    :cond_c
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 2165
    const-string/jumbo v3, "receive_system_events"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2166
    .local v0, "shouldReceive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSystemEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", shouldReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    if-nez v0, :cond_36

    .line 2169
    return-void

    .line 2173
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e

    .line 2176
    goto :goto_44

    .line 2174
    :catch_3e
    move-exception v2

    .line 2175
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method

.method private handleOnTryAgainPressed()V
    .registers 21

    .line 2027
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v2, "BiometricService"

    if-nez v0, :cond_f

    .line 2028
    const-string/jumbo v0, "handleOnTryAgainPressed: Auth session is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    return-void

    .line 2033
    :cond_f
    const-string/jumbo v0, "onTryAgainPressed"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/BiometricService;->semGetAuthenticator(I)Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    move-result-object v3

    .line 2037
    .local v3, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    if-eqz v3, :cond_af

    .line 2038
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semChangeModalities(I)V

    .line 2039
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 2040
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    const/16 v4, 0x65

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->setStateExtra(I)V

    .line 2042
    :try_start_36
    iget-object v5, v3, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v8, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2044
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->getCookie()I

    move-result v13

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v14, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v15, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2046
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v4

    iget v4, v4, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_6c} :catch_92

    move-object/from16 v19, v3

    .end local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .local v19, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :try_start_6e
    iget-object v3, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->semGetExtension()Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    .line 2042
    move/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v3

    invoke-interface/range {v5 .. v18}, Landroid/hardware/biometrics/IBiometricAuthenticator;->semPrepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIIIILandroid/os/Bundle;)V

    .line 2047
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_88

    .line 2048
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->destroy()V

    .line 2050
    :cond_88
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 2051
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_8f} :catch_90

    .line 2054
    goto :goto_b1

    .line 2052
    :catch_90
    move-exception v0

    goto :goto_95

    .end local v19    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .restart local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :catch_92
    move-exception v0

    move-object/from16 v19, v3

    .line 2053
    .end local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v19    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :goto_95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleOnChangeAuthenticator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 2037
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v19    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .restart local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_af
    move-object/from16 v19, v3

    .line 2074
    .end local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .restart local v19    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :goto_b1
    return-void
.end method

.method private initBiometricsTimestamp()V
    .registers 19

    .line 2843
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2845
    .local v2, "sTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 2846
    .local v4, "um":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 2848
    .local v0, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initBiometricsTimestamp: user length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BiometricService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string/jumbo v8, "initBiometricsTimestamp: "

    if-eqz v7, :cond_118

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2851
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget v0, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2852
    invoke-direct {v1, v4, v0}, Lcom/android/server/biometrics/BiometricService;->isWorkProfile(Landroid/os/UserManager;I)Z

    move-result v9

    if-nez v9, :cond_53

    .line 2853
    invoke-direct {v1, v0}, Lcom/android/server/biometrics/BiometricService;->semGetEffectiveUserId(I)I

    move-result v0

    move v15, v0

    goto :goto_54

    .line 2852
    :cond_53
    move v15, v0

    .line 2855
    .end local v0    # "userId":I
    .local v15, "userId":I
    :goto_54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x1

    const-wide/16 v12, -0x1

    const-string v10, "biometrics_strong_enroll_timestamp"

    move v14, v15

    invoke-static/range {v9 .. v14}, Lcom/android/server/biometrics/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)J

    move-result-wide v9

    .line 2857
    .local v9, "timestamp":J
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_83

    .line 2858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timestamp db = ["

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :cond_83
    const-wide/16 v11, -0x1

    cmp-long v0, v9, v11

    if-nez v0, :cond_115

    .line 2861
    const-wide/16 v9, 0x0

    .line 2862
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->isAutoTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 2863
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 2864
    .local v12, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    invoke-virtual {v12}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->getActualStrength()I

    move-result v0

    const/16 v13, 0xf

    invoke-static {v0, v13}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 2867
    :try_start_b4
    iget-object v0, v12, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    const-string v13, ""

    invoke-interface {v0, v15, v13}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 2868
    sget-boolean v0, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    if-eqz v0, :cond_d9

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "timestamp authenticator id: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_d9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_dd} :catch_e1

    move-wide v8, v13

    .line 2872
    .end local v9    # "timestamp":J
    .local v8, "timestamp":J
    move-wide v9, v8

    goto :goto_f9

    .line 2876
    .end local v8    # "timestamp":J
    .restart local v9    # "timestamp":J
    :cond_e0
    goto :goto_f8

    .line 2874
    :catch_e1
    move-exception v0

    .line 2875
    .local v0, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_f8
    :goto_f8
    goto :goto_9b

    :cond_f9
    :goto_f9
    move-wide/from16 v16, v9

    goto :goto_108

    .line 2880
    :cond_fc
    sget-boolean v0, Lcom/android/server/biometrics/BiometricService;->DEBUG:Z

    if-eqz v0, :cond_106

    .line 2881
    const-string/jumbo v0, "initBiometricsTimestamp: No auto time"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_106
    move-wide/from16 v16, v9

    .end local v9    # "timestamp":J
    .local v16, "timestamp":J
    :goto_108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v11, 0x1

    const-string v10, "biometrics_strong_enroll_timestamp"

    move-wide/from16 v12, v16

    move v14, v15

    invoke-static/range {v9 .. v14}, Lcom/android/server/biometrics/Utils;->putLongDb(Landroid/content/Context;Ljava/lang/String;ZJI)V

    .line 2887
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v16    # "timestamp":J
    :cond_115
    move v0, v15

    goto/16 :goto_36

    .line 2889
    .end local v15    # "userId":I
    .local v0, "userId":I
    :cond_118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    return-void
.end method

.method private isBiometricDisabledByDevicePolicy(II)Z
    .registers 9
    .param p1, "modality"    # I
    .param p2, "effectiveUserId"    # I

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->mapModalityToDevicePolicyType(I)I

    move-result v0

    .line 1269
    .local v0, "biometricToCheck":I
    const/4 v1, 0x0

    const-string v2, "BiometricService"

    if-nez v0, :cond_23

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing unknown modality "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to pass Device Policy check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return v1

    .line 1273
    :cond_23
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    .line 1274
    invoke-virtual {v3, v4, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    .line 1275
    .local v3, "devicePolicyDisabledFeatures":I
    and-int v4, v0, v3

    if-eqz v4, :cond_2f

    const/4 v1, 0x1

    .line 1277
    .local v1, "isBiometricDisabled":Z
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    return v1
.end method

.method private isEnabledForApp(II)Z
    .registers 5
    .param p1, "modality"    # I
    .param p2, "userId"    # I

    .line 1511
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_23

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const/4 v0, 0x0

    return v0

    .line 1517
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledForApps(I)Z

    move-result v0

    return v0

    .line 1515
    :cond_2a
    return v1

    .line 1513
    :cond_2b
    return v1
.end method

.method private isWorkProfile(Landroid/os/UserManager;I)Z
    .registers 6
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 2835
    invoke-static {p2}, Lcom/android/server/biometrics/Utils;->useOwnerBiometrics(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2836
    return v1

    .line 2838
    :cond_8
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2839
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static synthetic lambda$ba6xS-xPY08DgAxQzebsg_0FC0g(Lcom/android/server/biometrics/BiometricService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->initBiometricsTimestamp()V

    return-void
.end method

.method private logDialogDismissed(I)V
    .registers 19
    .param p1, "reason"    # I

    .line 1525
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 1529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1530
    # getter for: Lcom/android/server/biometrics/BiometricService$AuthSession;->mAuthenticatedTimeMs:J
    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2200(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1543
    .local v2, "latency":J
    const/16 v6, 0x58

    .line 1544
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v7

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v8, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1546
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v11, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    const/4 v12, 0x3

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v13, v13, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-virtual {v4, v5, v13}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v15

    .line 1543
    move-wide v13, v2

    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZ)V

    .line 1552
    .end local v2    # "latency":J
    goto :goto_7c

    .line 1554
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    # getter for: Lcom/android/server/biometrics/BiometricService$AuthSession;->mStartTimeMs:J
    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2300(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1556
    .restart local v2    # "latency":J
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4d

    .line 1557
    const/16 v4, 0xd

    move v12, v4

    goto :goto_56

    .line 1558
    :cond_4d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_54

    .line 1559
    const/16 v4, 0xa

    move v12, v4

    goto :goto_56

    .line 1560
    :cond_54
    const/4 v4, 0x0

    move v12, v4

    :goto_56
    nop

    .line 1571
    .local v12, "error":I
    const/16 v6, 0x59

    .line 1572
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v7

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v8, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1574
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v13, 0x0

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v14, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v14, v14, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-virtual {v4, v5, v14}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v14

    .line 1571
    move-wide v15, v2

    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJ)V

    .line 1582
    .end local v2    # "latency":J
    .end local v12    # "error":I
    :goto_7c
    return-void
.end method

.method private mapModalityToDevicePolicyType(I)I
    .registers 4
    .param p1, "modality"    # I

    .line 1252
    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    const/4 v0, 0x4

    if-eq p1, v0, :cond_25

    const/16 v0, 0x8

    if-eq p1, v0, :cond_22

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v0, 0x0

    return v0

    .line 1258
    :cond_22
    const/16 v0, 0x80

    return v0

    .line 1256
    :cond_25
    const/16 v0, 0x100

    return v0

    .line 1254
    :cond_28
    const/16 v0, 0x20

    return v0
.end method

.method private semCheckAndSetRequestedBiometricType(ILandroid/util/SparseIntArray;Landroid/os/Bundle;Z)Landroid/util/Pair;
    .registers 13
    .param p1, "sepBioType"    # I
    .param p2, "bioStatus"    # Landroid/util/SparseIntArray;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "bCredentialRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseIntArray;",
            "Landroid/os/Bundle;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2539
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->semSepBioTypeToBiometricAuthenticatorType(I)I

    move-result v0

    .line 2540
    .local v0, "requestedBioType":I
    const/4 v1, 0x0

    .line 2541
    .local v1, "avaTypes":I
    const/4 v2, 0x0

    .line 2542
    .local v2, "retBioType":I
    const/4 v3, 0x0

    .line 2545
    .local v3, "retBioStatus":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_29

    .line 2546
    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2547
    .local v5, "tmpBioType":I
    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 2548
    .local v6, "tmpBioStatus":I
    and-int v7, v0, v5

    if-eqz v7, :cond_26

    .line 2549
    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    .line 2550
    or-int/2addr v1, v5

    .line 2551
    if-eq v3, v7, :cond_22

    .line 2552
    move v2, v5

    .line 2553
    move v3, v6

    .line 2556
    :cond_22
    if-nez v2, :cond_26

    .line 2557
    move v2, v5

    .line 2558
    move v3, v6

    .line 2545
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2562
    .end local v4    # "i":I
    .end local v5    # "tmpBioType":I
    .end local v6    # "tmpBioStatus":I
    :cond_29
    if-nez v1, :cond_38

    .line 2563
    if-eqz p4, :cond_3d

    .line 2564
    const/4 v2, 0x1

    .line 2565
    const/4 v3, 0x1

    .line 2566
    const v4, 0x8000

    const-string v5, "authenticators_allowed"

    invoke-virtual {p3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3d

    .line 2570
    :cond_38
    const-string v4, "SEM_KEY_AVAILABILITY_BIOMETRIC"

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2572
    :cond_3d
    :goto_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested Biometric: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiometricService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/biometrics/BiometricService;->biometricStatusToBiometricConstant(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private semGetAuthenticator(I)Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .registers 5
    .param p1, "modality"    # I

    .line 2529
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 2530
    .local v1, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v2, v1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_18

    .line 2531
    return-object v1

    .line 2533
    .end local v1    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_18
    goto :goto_6

    .line 2534
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private semGetEffectiveUserId(I)I
    .registers 9
    .param p1, "userId"    # I

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 2613
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "BiometricService"

    if-eqz v0, :cond_7c

    .line 2614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2615
    .local v2, "callingIdentity":J
    move v4, p1

    .line 2617
    .local v4, "orgUserId":I
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2618
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget p1, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 2619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureFolder, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    :cond_31
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2623
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    iget p1, v5, Landroid/content/pm/UserInfo;->id:I

    .line 2624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DualAppId, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    :cond_51
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 2627
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2628
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v5, :cond_7b

    .line 2629
    if-eq v4, p1, :cond_7b

    .line 2630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEffectiveUserId: change userId,  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    .end local v2    # "callingIdentity":J
    .end local v4    # "orgUserId":I
    :cond_7b
    goto :goto_81

    .line 2634
    :cond_7c
    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :goto_81
    return p1
.end method

.method private semSepBioTypeToBiometricAuthenticatorType(I)I
    .registers 4
    .param p1, "sepType"    # I

    .line 2594
    const/4 v0, 0x0

    .line 2595
    .local v0, "retType":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    .line 2596
    or-int/lit8 v0, v0, 0x2

    .line 2598
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_d

    .line 2599
    or-int/lit8 v0, v0, 0x8

    .line 2601
    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_13

    .line 2602
    or-int/lit8 v0, v0, 0x4

    .line 2604
    :cond_13
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_19

    .line 2605
    or-int/lit16 v0, v0, 0x100

    .line 2607
    :cond_19
    return v0
.end method

.method private semSetAvailabilityBiometricForPrompt(Landroid/util/SparseIntArray;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "bioStatus"    # Landroid/util/SparseIntArray;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 2580
    const/4 v0, 0x0

    .line 2581
    .local v0, "avaTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 2582
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2583
    .local v2, "tmpBioType":I
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 2584
    .local v3, "tmpBioStatus":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 2585
    or-int/2addr v0, v2

    .line 2581
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2588
    .end local v1    # "i":I
    .end local v2    # "tmpBioType":I
    .end local v3    # "tmpBioStatus":I
    :cond_17
    if-eqz v0, :cond_1e

    .line 2589
    const-string v1, "SEM_KEY_AVAILABILITY_BIOMETRIC"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2591
    :cond_1e
    return-void
.end method

.method private statsModality()I
    .registers 3

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_7

    .line 1587
    const/4 v1, 0x0

    return v1

    .line 1589
    :cond_7
    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_f

    .line 1591
    or-int/lit8 v0, v0, 0x1

    .line 1593
    :cond_f
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_19

    .line 1594
    or-int/lit8 v0, v0, 0x2

    .line 1596
    :cond_19
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_23

    .line 1597
    or-int/lit8 v0, v0, 0x4

    .line 1599
    :cond_23
    return v0
.end method


# virtual methods
.method cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 2503
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v2, "BiometricService"

    if-nez v0, :cond_d

    .line 2504
    const-string v0, "Skipping cancelInternal"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    return-void

    .line 2506
    :cond_d
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_33

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_33

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping cancelInternal, state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    return-void

    .line 2514
    :cond_33
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 2515
    .local v4, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v0, v4, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    iget-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v5, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_64

    .line 2517
    :try_start_4f
    iget-object v5, v4, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 2521
    goto :goto_64

    .line 2519
    :catch_5e
    move-exception v0

    .line 2520
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "Unable to cancel authentication"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_64
    :goto_64
    goto :goto_39

    .line 2524
    :cond_65
    return-void
.end method

.method public synthetic lambda$handleAuthenticate$0$BiometricService(Landroid/os/Bundle;ILjava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;III)V
    .registers 30
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "sessionId"    # J
    .param p7, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I

    move-object/from16 v13, p1

    .line 2310
    :try_start_2
    const-string v0, "check_dpm"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_5e

    .line 2312
    .local v0, "checkDevicePolicyManager":Z
    move-object/from16 v14, p0

    move/from16 v15, p2

    move-object/from16 v12, p3

    :try_start_f
    invoke-direct {v14, v15, v13, v12, v0}, Lcom/android/server/biometrics/BiometricService;->checkAndGetAuthenticators(ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    move-object v11, v2

    .line 2314
    .local v11, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    .line 2315
    .local v10, "modality":I
    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    .line 2317
    .local v9, "result":I
    if-nez v9, :cond_4b

    .line 2318
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    move/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v16, v0

    move v0, v9

    .end local v9    # "result":I
    .local v0, "result":I
    .local v16, "checkDevicePolicyManager":Z
    move/from16 v9, p8

    move/from16 v17, v10

    .end local v10    # "modality":I
    .local v17, "modality":I
    move/from16 v10, p9

    move-object/from16 v18, v11

    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v18, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move/from16 v11, p10

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIII)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_48} :catch_5c

    move-object/from16 v2, p7

    goto :goto_59

    .line 2321
    .end local v16    # "checkDevicePolicyManager":Z
    .end local v17    # "modality":I
    .end local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v0, "checkDevicePolicyManager":Z
    .restart local v9    # "result":I
    .restart local v10    # "modality":I
    .restart local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4b
    move/from16 v16, v0

    move v0, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    .end local v9    # "result":I
    .end local v10    # "modality":I
    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v0, "result":I
    .restart local v16    # "checkDevicePolicyManager":Z
    .restart local v17    # "modality":I
    .restart local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v2, p7

    move/from16 v3, v17

    .end local v17    # "modality":I
    .local v3, "modality":I
    :try_start_56
    invoke-interface {v2, v3, v0, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_59} :catch_5a

    .line 2325
    .end local v0    # "result":I
    .end local v3    # "modality":I
    .end local v16    # "checkDevicePolicyManager":Z
    .end local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_59
    goto :goto_6c

    .line 2323
    :catch_5a
    move-exception v0

    goto :goto_65

    :catch_5c
    move-exception v0

    goto :goto_63

    :catch_5e
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v15, p2

    :goto_63
    move-object/from16 v2, p7

    .line 2324
    .local v0, "e":Landroid/os/RemoteException;
    :goto_65
    const-string v1, "BiometricService"

    const-string v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2326
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6c
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 2824
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2825
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 2826
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricService$ba6xS-xPY08DgAxQzebsg_0FC0g;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$ba6xS-xPY08DgAxQzebsg_0FC0g;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2828
    :cond_13
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1238
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    .line 1239
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1240
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 1241
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V

    .line 1242
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 1243
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->startListening()V

    .line 1244
    return-void
.end method
