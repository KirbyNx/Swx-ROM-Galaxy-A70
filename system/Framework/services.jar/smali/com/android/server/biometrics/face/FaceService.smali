.class public Lcom/android/server/biometrics/face/FaceService;
.super Lcom/android/server/biometrics/BiometricServiceBase;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;,
        Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;,
        Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;,
        Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;,
        Lcom/android/server/biometrics/face/FaceService$UsageStats;,
        Lcom/android/server/biometrics/face/FaceService$AuthenticationEvent;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

.field private static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field private static final DEBUG:Z = true

.field private static final FACE_DATA_DIR:Ljava/lang/String; = "facedata"

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "FaceService"

.field private static final SKIP_KEYGUARD_ACQUIRE_IGNORE_LIST:Ljava/lang/String; = "com.android.server.biometrics.face.skip_keyguard_acquire_ignore_list"

.field protected static final TAG:Ljava/lang/String; = "GFaceService"

.field private static final mIsFrameworkHandleLockout:Z = true

.field private static mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;


# instance fields
.field private mBiometricPromptIgnoreList:[I

.field private mBiometricPromptIgnoreListVendor:[I

.field private mCurrentUserLockoutMode:I

.field private mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field private mDaemonCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

.field private final mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field private mEnrollIgnoreList:[I

.field private mEnrollIgnoreListVendor:[I

.field private final mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

.field private mKeyguardIgnoreList:[I

.field private mKeyguardIgnoreListVendor:[I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRevokeChallengePending:Z

.field private mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1943
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;-><init>(Landroid/content/Context;)V

    .line 1412
    new-instance v0, Lcom/android/server/biometrics/face/FaceConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/face/FaceConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    .line 1434
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/FaceService$1;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    .line 1728
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/FaceService$2;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 1945
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v1, :cond_26

    .line 1946
    new-instance v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 1949
    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.server.biometrics.face.skip_keyguard_acquire_ignore_list"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    move v1, v0

    .line 1952
    .local v1, "ignoreKeyguardBlacklist":Z
    :goto_35
    new-instance v2, Lcom/android/server/biometrics/face/FaceService$UsageStats;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/face/FaceService$UsageStats;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    .line 1954
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700b2

    .line 1957
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    .line 1958
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700b5

    .line 1959
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    .line 1960
    if-eqz v1, :cond_71

    new-array v2, v0, [I

    goto :goto_81

    .line 1961
    :cond_71
    nop

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700b4

    .line 1961
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    :goto_81
    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    .line 1962
    nop

    .line 1963
    if-eqz v1, :cond_89

    new-array v0, v0, [I

    goto :goto_99

    .line 1964
    :cond_89
    nop

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700b7

    .line 1964
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_99
    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700b3

    .line 1966
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    .line 1967
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10700b6

    .line 1968
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    .line 1969
    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 151
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->initConfiguredStrengthInternal(I)V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$12900(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$13000(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$13100(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$13200(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$13300(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$13500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15402(Lcom/android/server/biometrics/face/FaceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return p1
.end method

.method static synthetic access$15500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$15800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$16001(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$16101(Lcom/android/server/biometrics/face/FaceService;[BIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 151
    invoke-super/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricServiceBase;->handleImageProcessed([BIIII)V

    return-void
.end method

.method static synthetic access$16201(Lcom/android/server/biometrics/face/FaceService;[BIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 151
    invoke-super/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricServiceBase;->handleImageProcessed([BIIII)V

    return-void
.end method

.method static synthetic access$16300(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method static synthetic access$16501(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$16601(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$16701(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$16801(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$16901(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17002(Lcom/android/server/biometrics/face/FaceService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J

    .line 151
    iput-wide p1, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$17102(Lcom/android/server/biometrics/face/FaceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$17201(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$17301(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$17901(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$18001(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$18101(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$18200(Lcom/android/server/biometrics/face/FaceService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$18600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18701(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->semClientOnError(JII)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$19000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19100(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$19600(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$19900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$20100(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$20200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$20300(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$20400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$20500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$20600(Lcom/android/server/biometrics/face/FaceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method static synthetic access$20700(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$20801(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p3, "x3"    # Ljava/util/ArrayList;

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$20900(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->handleError(JII)V

    return-void
.end method

.method static synthetic access$21000(Lcom/android/server/biometrics/face/FaceService;JII)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->handleError(JII)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/biometrics/face/FaceService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    return p1
.end method

.method static synthetic access$21100(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->doTemplateCleanupForUser(I)V

    return-void
.end method

.method static synthetic access$21200(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$21300(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$21400(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$21500(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$21600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$21700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$21800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$21900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startGenerateChallenge(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$22000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$22100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$22200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/face/FaceService$UsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mEnrollIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "x2"    # I

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreList:[I

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 151
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/face/FaceService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/face/FaceService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 151
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/face/FaceService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mBiometricPromptIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/face/FaceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/RemovalClient;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/RemovalClient;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/face/FaceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/EnumerateClient;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/face/FaceService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mKeyguardIgnoreListVendor:[I

    return-object v0
.end method

.method static synthetic access$7001(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 151
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/face/FaceService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/biometrics/face/FaceService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 151
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$7700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/biometrics/face/FaceService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->isCurrentUserOrProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/biometrics/face/FaceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/face/FaceService;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 151
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;ZIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 151
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/face/FaceService;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/biometrics/face/FaceService;I)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$8800(Lcom/android/server/biometrics/face/FaceService;I)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getAuthenticatorId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$8900(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .registers 1

    .line 151
    sget-object v0, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object v0
.end method

.method static synthetic access$9602(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 151
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    return-object p1
.end method

.method static synthetic access$9700(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9900(Lcom/android/server/biometrics/face/FaceService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService;

    .line 151
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method private dumpHal(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 2336
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_9

    .line 2337
    return-void

    .line 2342
    :cond_9
    const-string/jumbo v0, "ro.face.disable_debug_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2343
    const-string/jumbo v0, "persist.face.disable_debug_data"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_6d

    .line 2350
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 2351
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v0, :cond_6c

    .line 2352
    const/4 v2, 0x0

    .line 2354
    .local v2, "devnull":Ljava/io/FileOutputStream;
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 2355
    new-instance v3, Landroid/os/NativeHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileDescriptor;

    .line 2356
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    new-array v5, v1, [I

    invoke-direct {v3, v4, v5, v1}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    move-object v1, v3

    .line 2358
    .local v1, "handle":Landroid/os/NativeHandle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4c} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4c} :catch_53
    .catchall {:try_start_24 .. :try_end_4c} :catchall_51

    .line 2362
    .end local v1    # "handle":Landroid/os/NativeHandle;
    nop

    .line 2364
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_62

    goto :goto_61

    .line 2362
    :catchall_51
    move-exception v1

    goto :goto_64

    .line 2359
    :catch_53
    move-exception v1

    .line 2360
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_54
    const-string v3, "GFaceService"

    const-string v4, "error while reading face debugging data"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 2362
    nop

    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_6c

    .line 2364
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 2366
    :goto_61
    goto :goto_6c

    .line 2365
    :catch_62
    move-exception v1

    goto :goto_61

    .line 2362
    :goto_64
    if-eqz v2, :cond_6b

    .line 2364
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 2366
    goto :goto_6b

    .line 2365
    :catch_6a
    move-exception v3

    .line 2368
    :cond_6b
    :goto_6b
    throw v1

    .line 2370
    .end local v2    # "devnull":Ljava/io/FileOutputStream;
    :cond_6c
    :goto_6c
    return-void

    .line 2344
    .end local v0    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :cond_6d
    :goto_6d
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2284
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2286
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Face Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2288
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2289
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

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

    if-eqz v3, :cond_e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2290
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2291
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 2292
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 2293
    .local v6, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/biometrics/face/FaceService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 2294
    .local v7, "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 2295
    .local v8, "set":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2296
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2297
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_76

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_77

    :cond_76
    move v11, v10

    :goto_77
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2298
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_82

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_83

    :cond_82
    move v11, v10

    :goto_83
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2299
    const-string v9, "acquire"

    if-eqz v6, :cond_8d

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8e

    :cond_8d
    move v11, v10

    :goto_8e
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2300
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_99

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_9a

    :cond_99
    move v11, v10

    :goto_9a
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2301
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_a5

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_a6

    :cond_a5
    move v11, v10

    :goto_a6
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2304
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_b0

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_b1

    :cond_b0
    move v11, v10

    :goto_b1
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2305
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_bc

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_bd

    :cond_bc
    move v11, v10

    :goto_bd
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2306
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_c7

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_c8

    :cond_c7
    move v11, v10

    :goto_c8
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2307
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_d3

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_d4

    :cond_d3
    move v11, v10

    :goto_d4
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2308
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 2309
    if-eqz v7, :cond_de

    iget v10, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    .line 2308
    :cond_de
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2310
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2311
    nop

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_22

    .line 2313
    :cond_e7
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ed
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_ed} :catch_ef

    .line 2316
    nop

    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_f7

    .line 2314
    :catch_ef
    move-exception v1

    .line 2315
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "GFaceService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2317
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_f7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL deaths since last reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService;->mHALDeathCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mUsageStats:Lcom/android/server/biometrics/face/FaceService$UsageStats;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/face/FaceService$UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 2321
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v1, :cond_11e

    .line 2322
    sget-object v1, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v1, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$18900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Ljava/io/PrintWriter;)V

    .line 2324
    :cond_11e
    return-void
.end method

.method private declared-synchronized getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 10

    monitor-enter p0

    .line 2170
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    if-nez v0, :cond_121

    .line 2171
    const-string v0, "GFaceService"

    const-string/jumbo v1, "mDaemon was null, reconnect to face"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_125

    .line 2173
    :try_start_d
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_18

    .line 2174
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    goto :goto_29

    .line 2176
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService;
    :cond_18
    invoke-static {}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->getService()Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_1e
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_1e} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_1f
    .catchall {:try_start_d .. :try_end_1e} :catchall_125

    goto :goto_29

    .line 2180
    :catch_1f
    move-exception v0

    .line 2181
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_20
    const-string v1, "GFaceService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 2178
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_28
    move-exception v0

    .line 2182
    :goto_29
    nop

    .line 2183
    :goto_2a
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 2184
    const-string v0, "GFaceService"

    const-string v2, "face HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_125

    .line 2185
    monitor-exit p0

    return-object v1

    .line 2188
    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_125

    .line 2191
    :try_start_43
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_6c

    .line 2192
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v4, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iput-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    .line 2193
    const-string v0, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 2195
    :cond_6c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2196
    .local v4, "begin":J
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonCallback:Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    invoke-interface {v0, v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetCallback(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v6, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    iput-wide v6, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    .line 2197
    const-string v0, "GFaceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetCallback FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT(HAL id): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-wide v4, v6

    .line 2199
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    sget-object v6, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;->INSTANCE:Lcom/android/server/biometrics/face/-$$Lambda$FaceService$9W7wQXewVhfZe14o9sLrWG5YLuA;

    invoke-interface {v0, v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetSecurityLevel(Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetSecurityLevelCallback;)V

    .line 2207
    const-string v0, "GFaceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityLevel FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_d3} :catch_d4
    .catchall {:try_start_43 .. :try_end_d3} :catchall_125

    .line 2212
    .end local v4    # "begin":J
    :goto_d3
    goto :goto_de

    .line 2209
    :catch_d4
    move-exception v0

    .line 2210
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_d5
    const-string v4, "GFaceService"

    const-string v5, "Failed to open face HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2211
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 2215
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_de
    const-string v0, "GFaceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Face HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    iget-wide v4, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_10e

    .line 2218
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->loadAuthenticatorIds()V

    .line 2219
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/face/FaceService;->updateActiveGroup(ILjava/lang/String;)V

    .line 2220
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->doTemplateCleanupForUser(I)V

    goto :goto_121

    .line 2222
    :cond_10e
    const-string v0, "GFaceService"

    const-string v2, "Failed to open Face HAL!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "faced_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2224
    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 2227
    :cond_121
    :goto_121
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_123
    .catchall {:try_start_d5 .. :try_end_123} :catchall_125

    monitor-exit p0

    return-object v0

    .line 2169
    :catchall_125
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static getServiceExtImpl()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .registers 1

    .line 2471
    sget-object v0, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    return-object v0
.end method

.method static synthetic lambda$getFaceDaemon$1(II)V
    .registers 5
    .param p0, "status"    # I
    .param p1, "level"    # I

    .line 2200
    const-string v0, "GFaceService"

    if-nez p0, :cond_1e

    .line 2201
    sget-object v1, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setSecurityLevel(I)V
    invoke-static {v1, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$22600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    .line 2202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2204
    :cond_1e
    const-string v1, "SecurityLevel fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :goto_23
    return-void
.end method

.method static synthetic lambda$onBootPhase$2(I)V
    .registers 2
    .param p0, "phase"    # I

    .line 2394
    sget-object v0, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onBootPhase(I)V

    return-void
.end method

.method public static synthetic lambda$rveb67MoYJ0egfY6LL-l05KvUz8(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method private startGenerateChallenge(Landroid/os/IBinder;)J
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2231
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 2232
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const-wide/16 v1, 0x0

    const-string v3, "GFaceService"

    if-nez v0, :cond_11

    .line 2233
    const-string/jumbo v4, "startGenerateChallenge: no face HAL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    return-wide v1

    .line 2237
    :cond_11
    :try_start_11
    sget-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    const/16 v5, 0x258

    if-eqz v4, :cond_1e

    .line 2238
    invoke-interface {v0, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v1, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    return-wide v1

    .line 2240
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2241
    .local v6, "begin":J
    invoke-interface {v0, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v4

    iget-wide v4, v4, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    .line 2242
    .local v4, "result":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateChallenge FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    cmp-long v8, v4, v1

    if-eqz v8, :cond_58

    .line 2244
    sget-object v8, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-virtual {v8}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->preEnroll()V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_58} :catch_59

    .line 2246
    :cond_58
    return-wide v4

    .line 2248
    .end local v4    # "result":J
    .end local v6    # "begin":J
    :catch_59
    move-exception v4

    .line 2249
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "startGenerateChallenge failed"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2251
    .end local v4    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method

.method private startRevokeChallenge(Landroid/os/IBinder;)I
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2255
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 2256
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const/4 v1, 0x0

    const-string v2, "GFaceService"

    if-nez v0, :cond_10

    .line 2257
    const-string/jumbo v3, "startRevokeChallenge: no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    return v1

    .line 2261
    :cond_10
    :try_start_10
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v3, :cond_30

    .line 2262
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result v3

    .line 2263
    .local v3, "res":I
    if-eqz v3, :cond_2f

    .line 2264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "revokeChallenge returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_2f
    return v3

    .line 2268
    .end local v3    # "res":I
    :cond_30
    sget-object v3, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isEnrollSession()Z

    move-result v3

    if-nez v3, :cond_39

    .line 2269
    return v1

    .line 2271
    :cond_39
    sget-object v3, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->postEnroll()V

    .line 2272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2273
    .local v3, "begin":J
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->revokeChallenge()I

    move-result v5

    .line 2274
    .local v5, "result":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "revokeChallenge FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_6d} :catch_6e

    .line 2275
    return v5

    .line 2277
    .end local v3    # "begin":J
    .end local v5    # "result":I
    :catch_6e
    move-exception v3

    .line 2278
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "startRevokeChallenge failed"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2280
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 2123
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected checkUseBiometricPermission()V
    .registers 1

    .line 2119
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .registers 2

    .line 2004
    invoke-static {}, Lcom/android/server/biometrics/face/FaceUtils;->getInstance()Lcom/android/server/biometrics/face/FaceUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .registers 2

    .line 2009
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mFaceConstants:Lcom/android/server/biometrics/face/FaceConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .registers 2

    .line 1999
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 2129
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_11

    .line 2130
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2132
    :cond_11
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 2134
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 2135
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBiometricsForUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return-object v0
.end method

.method public getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;
    .registers 4

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 2399
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_b

    .line 2400
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    return-object v1

    .line 2403
    :cond_b
    const-string v1, "GFaceService"

    const-string/jumbo v2, "getFaceClientExtImpl was called before setting at current client !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getHalDeviceId()J
    .registers 3

    .line 2085
    iget-wide v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .registers 2

    .line 2080
    const-string v0, "com.samsung.android.bio.face.permission.RESET_FACE_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .registers 4

    .line 2152
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_7

    .line 2153
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    return v0

    .line 2155
    :cond_7
    const/4 v0, -0x1

    .line 2156
    .local v0, "mode":I
    sget-object v1, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isCurrentClientKeyguard()Z
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$1200(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2157
    const/4 v0, 0x0

    goto :goto_18

    .line 2159
    :cond_12
    sget-object v1, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getLockoutMode()I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$18500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I

    move-result v0

    .line 2162
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLockoutMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    return v0
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .registers 2

    .line 2075
    const-string v0, "com.android.server.biometrics.face.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .registers 2

    .line 2113
    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1994
    const-string v0, "GFaceService"

    return-object v0
.end method

.method protected handleUserSwitching(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 2090
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->handleUserSwitching(I)V

    .line 2092
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserLockoutMode:I

    .line 2093
    return-void
.end method

.method protected hasEnrolledBiometrics(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2097
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_b

    .line 2098
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V

    .line 2100
    :cond_b
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1

    .line 2103
    :cond_26
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    move v0, v1

    .line 2106
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasEnrolledBiometrics = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    return v0
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 2014
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2016
    .local v0, "limit":I
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-nez v1, :cond_14

    .line 2017
    const/4 v0, 0x2

    .line 2019
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2020
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_36

    .line 2021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many faces registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GFaceService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const/4 v2, 0x1

    return v2

    .line 2024
    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method protected isStrongBiometric()Z
    .registers 6

    .line 2379
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isStrongBiometric called from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    sget-object v0, Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityLevel(Z)I
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->access$8700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)I

    move-result v0

    if-ne v0, v3, :cond_34

    move v2, v3

    :cond_34
    return v2
.end method

.method public synthetic lambda$onStart$0$FaceService()V
    .registers 3

    .line 1987
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$rveb67MoYJ0egfY6LL-l05KvUz8;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .registers 2
    .param p1, "isActive"    # Z

    .line 2143
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 2394
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ChxEXBqBw6Fy97ngufP6rUDusSU;

    invoke-direct {v1, p1}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ChxEXBqBw6Fy97ngufP6rUDusSU;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 2395
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1982
    invoke-super {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->onStart()V

    .line 1983
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$FaceServiceWrapper;-><init>(Lcom/android/server/biometrics/face/FaceService;Lcom/android/server/biometrics/face/FaceService$1;)V

    const-string v1, "face"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/face/FaceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1984
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FACE_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_1c

    .line 1987
    new-instance v0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$A0dfsVDvPu3BDJsON7widXUriSs;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$A0dfsVDvPu3BDJsON7widXUriSs;-><init>(Lcom/android/server/biometrics/face/FaceService;)V

    const-string v1, "GFaceService.onStart"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1990
    :cond_1c
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .registers 3
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 1973
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 1974
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    if-eqz v0, :cond_e

    .line 1975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService;->startRevokeChallenge(Landroid/os/IBinder;)I

    .line 1976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService;->mRevokeChallengePending:Z

    .line 1978
    :cond_e
    return-void
.end method

.method public serviceDied(J)V
    .registers 4
    .param p1, "cookie"    # J

    .line 2029
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->serviceDied(J)V

    .line 2030
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 2032
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 2033
    return-void
.end method

.method protected statsModality()I
    .registers 2

    .line 2147
    const/4 v0, 0x4

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .registers 13
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 2037
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 2039
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateActiveGroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    if-eqz v0, :cond_b2

    .line 2042
    :try_start_1d
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/face/FaceService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    .line 2043
    iget v1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    if-eq p1, v1, :cond_ab

    .line 2044
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 2045
    .local v1, "baseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "facedata"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2046
    .local v3, "faceDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_62

    .line 2047
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_56

    .line 2048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot make directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    return-void

    .line 2054
    :cond_56
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 2055
    const-string v4, "Restorecons failed. Directory will have wrong label."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    return-void

    .line 2060
    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2061
    .local v4, "begin":J
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, p1, v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 2062
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setActiveUser FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I

    .line 2064
    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2065
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/face/FaceService;->hasEnrolledBiometrics(I)Z

    move-result v8

    if-eqz v8, :cond_a2

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v8

    iget-wide v8, v8, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_a4

    :cond_a2
    const-wide/16 v8, 0x0

    :goto_a4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 2064
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_ab} :catch_ac

    .line 2069
    .end local v1    # "baseDir":Ljava/io/File;
    .end local v3    # "faceDir":Ljava/io/File;
    .end local v4    # "begin":J
    :cond_ab
    goto :goto_b2

    .line 2067
    :catch_ac
    move-exception v1

    .line 2068
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to setActiveUser():"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2071
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_b2
    :goto_b2
    return-void
.end method
