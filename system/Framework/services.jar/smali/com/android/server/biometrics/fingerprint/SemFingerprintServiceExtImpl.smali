.class public Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
.super Ljava/lang/Object;
.source "SemFingerprintServiceExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;
    }
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field private static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field private static final ACTION_FOD_UPDATE:Ljava/lang/String; = "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

.field private static final ACTION_FOD_UPDATE_TSP_BLOCK:I = 0xe2

.field private static final ACTION_FOD_UPDATE_TSP_UNBLOCK:I = 0xe1

.field private static final DEBUG:Z

.field private static final DEFAULT_FP_MAX_TEMPLATES_PER_USER:I = 0x4

.field private static final EXT_INFO_FILE:Ljava/lang/String; = "settings_fingerprint_ext.xml"

.field private static final FOD_TSP_BLOCK_DELAY:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final TIME_DVFS_NORMAL:I = 0x7d0

.field private static final TIME_DVFS_OPTICAL_SENSOR:I = 0x1770

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;


# instance fields
.field private mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

.field private mAodListener:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

.field private mBootPhase:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

.field private mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;

.field private mDialogForMatcherUpgrade:Landroid/app/AlertDialog;

.field private mDozePendingState:Z

.field private mFpDaemonVersion:[B

.field private mFpSensorInfo:[B

.field private mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

.field private mHLPMPendingState:Z

.field private mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

.field private mIntentForMatcherUpgrade:Landroid/content/Intent;

.field private mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsDozePending:Z

.field private mIsEnrollSession:Z

.field private mIsHLPMPending:Z

.field private mIsOwner:Z

.field private mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsWaitingFingerUp:Z

.field private mIsWorkspace:Z

.field private mLastDozeHlpmState:Z

.field private mLastDozeState:Z

.field private mLatestSensorStatus:I

.field private final mLockForAodCtrl:Ljava/lang/Object;

.field private final mLockForEnrollSession:Ljava/lang/Object;

.field private final mLockForTZCommand:Ljava/lang/Object;

.field private mMaxTemplatesNumber:I

.field private mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

.field private mSecurityLevel:I

.field private mSensorTouchCount:I

.field private mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

.field private mWorkspaceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mMaxTemplatesNumber:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    .line 115
    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSecurityLevel:I

    .line 118
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForEnrollSession:Ljava/lang/Object;

    .line 120
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBootPhase:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    .line 136
    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mWorkspaceId:I

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    .line 155
    sput-object p1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->get()Lcom/android/server/biometrics/Utils$BioFpMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    .line 158
    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 160
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->readSensorConfig()V

    .line 162
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_6f

    .line 163
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->initForInDisplaySensor()V

    .line 165
    :cond_6f
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->removeFingerprints(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForAvailableNewMatcher()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1200()Landroid/content/Context;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .line 76
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsOwner:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWorkspace:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mWorkspaceId:I

    return v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    .line 76
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .param p1, "x1"    # J

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleTspBlockAction(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSensorTouchCount:I

    return v0
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .line 76
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)Lcom/android/server/biometrics/SemAnalyticsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;

    .line 76
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    return-object v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 450
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method private checkRequestPermission(I)V
    .registers 4
    .param p1, "cmd"    # I

    .line 456
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    .line 457
    .local v0, "permission":Ljava/lang/String;
    const/4 v1, 0x6

    if-eq p1, v1, :cond_24

    const/4 v1, 0x7

    if-eq p1, v1, :cond_21

    const/16 v1, 0x9

    if-eq p1, v1, :cond_17

    const/16 v1, 0x3f2

    if-eq p1, v1, :cond_24

    packed-switch p1, :pswitch_data_2c

    packed-switch p1, :pswitch_data_36

    goto :goto_26

    .line 470
    :cond_17
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1d
    const-string v1, "com.samsung.android.permission.REQUEST_PROCESS_FIDO"

    :goto_1f
    move-object v0, v1

    .line 471
    goto :goto_26

    .line 475
    :cond_21
    :pswitch_21
    const-string v0, "com.samsung.android.permission.FINGERPRINT_PRIVILEGED"

    goto :goto_26

    .line 466
    :cond_24
    :pswitch_24
    const/4 v0, 0x0

    .line 467
    nop

    .line 478
    :goto_26
    if-eqz v0, :cond_2b

    .line 479
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->checkPermission(Ljava/lang/String;)V

    .line 481
    :cond_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x3ea
        :pswitch_24
        :pswitch_21
        :pswitch_24
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0x3ee
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 168
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDaemonVersion([B)I
    .registers 7
    .param p1, "outVersion"    # [B

    .line 530
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    if-eqz v0, :cond_36

    if-nez p1, :cond_7

    goto :goto_36

    .line 533
    :cond_7
    array-length v1, v0

    .line 535
    .local v1, "ret":I
    :try_start_8
    array-length v2, p1

    array-length v3, v0

    const/4 v4, 0x0

    if-lt v2, v3, :cond_12

    .line 536
    array-length v2, v0

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18

    .line 538
    :cond_12
    array-length v2, p1

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    array-length v0, p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    move v1, v0

    .line 543
    :goto_18
    goto :goto_35

    .line 541
    :catch_19
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDaemonVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return v1

    .line 531
    .end local v1    # "ret":I
    :cond_36
    :goto_36
    const/4 v0, -0x1

    return v0
.end method

.method private getFingerprintIds(II[B)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "opt"    # I
    .param p3, "ids"    # [B

    .line 571
    const/4 v0, -0x1

    if-eqz p3, :cond_2a

    array-length v1, p3

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mMaxTemplatesNumber:I

    if-gt v1, v2, :cond_9

    goto :goto_2a

    .line 574
    :cond_9
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    .line 575
    .local v1, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v1, :cond_29

    .line 576
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 577
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_28

    .line 578
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 580
    .end local v2    # "i":I
    :cond_28
    return v0

    .line 582
    .end local v0    # "size":I
    :cond_29
    return v0

    .line 572
    .end local v1    # "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_2a
    :goto_2a
    return v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    .line 172
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInjector()Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;
    .registers 1

    .line 176
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    return-object v0
.end method

.method private getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;
    .registers 5
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "userid"    # I

    .line 1817
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    .line 1818
    .local v0, "ekm":Lcom/samsung/android/knox/EnterpriseKnoxManager;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method private getLockoutRemainingTime()I
    .registers 2

    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method private getSensorInfo([B)I
    .registers 7
    .param p1, "outVersion"    # [B

    .line 548
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    if-eqz v0, :cond_36

    if-nez p1, :cond_7

    goto :goto_36

    .line 551
    :cond_7
    array-length v1, v0

    .line 553
    .local v1, "ret":I
    :try_start_8
    array-length v2, p1

    array-length v3, v0

    const/4 v4, 0x0

    if-lt v2, v3, :cond_12

    .line 554
    array-length v2, v0

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18

    .line 556
    :cond_12
    array-length v2, p1

    invoke-static {v0, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    array-length v0, p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_19

    move v1, v0

    .line 561
    :goto_18
    goto :goto_35

    .line 559
    :catch_19
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSensorInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return v1

    .line 549
    .end local v1    # "ret":I
    :cond_36
    :goto_36
    const/4 v0, -0x1

    return v0
.end method

.method private getSensorStatus()I
    .registers 5

    .line 708
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_8

    .line 709
    const v0, 0x186c8

    return v0

    .line 711
    :cond_8
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0

    .line 715
    .local v0, "result":I
    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLatestSensorStatus:I

    .line 723
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLogSensorStatus(I)V

    .line 724
    return v0
.end method

.method private handleFactoryEvent(I)V
    .registers 7
    .param p1, "event"    # I

    .line 1680
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const-string v1, "FingerprintService"

    if-nez v0, :cond_d

    .line 1681
    const-string/jumbo v0, "handleFactoryEvent: no callback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return-void

    .line 1685
    :cond_d
    :try_start_d
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-interface {v0, v2, v3, v4, p1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_18

    .line 1689
    goto :goto_32

    .line 1687
    :catch_18
    move-exception v0

    .line 1688
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFactoryEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method private handleScreenEvent(Z)V
    .registers 4
    .param p1, "screenOn"    # Z

    .line 586
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$pUWnAJEbs2UQKtrMPJgfZSvKtwE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$pUWnAJEbs2UQKtrMPJgfZSvKtwE;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    return-void
.end method

.method private handleSensorTouchEvent()V
    .registers 2

    .line 1656
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSensorTouchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSensorTouchCount:I

    .line 1657
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_d

    .line 1658
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->writeSensorTouchCount()V

    .line 1660
    :cond_d
    return-void
.end method

.method private handleTouchEvent(IJ)V
    .registers 10
    .param p1, "event"    # I
    .param p2, "arg2"    # J

    .line 1663
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II)I

    .line 1664
    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    .line 1665
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentAuthClientExtensionImpl()Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    move-result-object v0

    .line 1666
    .local v0, "cExt":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    if-eqz v0, :cond_30

    .line 1667
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->getHashCode()I

    move-result v2

    const/16 v3, 0x10

    shr-long v3, p2, v3

    long-to-int v3, v3

    const-wide/32 v4, 0xffff

    and-long/2addr v4, p2

    long-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpSetOpticalInfo(III)V

    .line 1671
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$sjSzO4033ZWtWbPp1fuDcyKLJl4;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$sjSzO4033ZWtWbPp1fuDcyKLJl4;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1677
    .end local v0    # "cExt":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    :cond_30
    return-void
.end method

.method private handleTspBlockAction(J)V
    .registers 5
    .param p1, "delay"    # J

    .line 445
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 447
    return-void
.end method

.method private handleUpdateMatcher()V
    .registers 9

    .line 1694
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->hasNewMatcher()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1695
    const/4 v0, 0x1

    .line 1696
    .local v0, "availableUpdateMatcher":Z
    const/4 v1, 0x0

    .line 1698
    .local v1, "hasKnoxMultiFactor":Z
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1699
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1701
    .local v5, "userId":I
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v6

    sget-object v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3d

    move v6, v4

    goto :goto_3e

    :cond_3d
    const/4 v6, 0x0

    .line 1702
    .local v6, "hasTemplate":Z
    :goto_3e
    if-eqz v6, :cond_5a

    .line 1703
    const/4 v0, 0x0

    .line 1704
    if-nez v5, :cond_46

    .line 1705
    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsOwner:Z

    goto :goto_52

    .line 1706
    :cond_46
    sget-object v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v7, v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->isWorkProfile(I)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1707
    iput-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWorkspace:Z

    .line 1708
    iput v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mWorkspaceId:I

    .line 1710
    :cond_52
    :goto_52
    if-nez v1, :cond_5a

    .line 1711
    sget-object v4, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v5}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isFPTemplateChangeForKnox(Landroid/content/Context;I)Z

    move-result v1

    .line 1714
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "hasTemplate":Z
    :cond_5a
    goto :goto_16

    .line 1716
    :cond_5b
    if-eqz v0, :cond_62

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateMatcher()V

    goto/16 :goto_dc

    .line 1720
    :cond_62
    if-nez v1, :cond_99

    .line 1721
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    .line 1722
    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1723
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    const-string v3, "com.android.settings"

    const-string v5, "com.samsung.android.settings.biometrics.fingerprint.FingerprintEntry"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    const-string v3, "allremovenoti"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1726
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsOwner:Z

    if-nez v2, :cond_99

    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWorkspace:Z

    if-eqz v2, :cond_99

    .line 1727
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    const-string/jumbo v3, "is_knox"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1728
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mWorkspaceId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    :cond_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matcher upgrade status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsOwner:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWorkspace:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_dc

    .line 1734
    new-instance v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$5;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;

    .line 1748
    sget-object v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v6, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 1754
    .end local v0    # "availableUpdateMatcher":Z
    .end local v1    # "hasKnoxMultiFactor":Z
    :cond_dc
    :goto_dc
    return-void
.end method

.method private hasFeature(I)Z
    .registers 3
    .param p1, "feature"    # I

    .line 484
    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    .line 493
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_b
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_WOF_OPTION_DEFAULT_OFF:Z

    return v0

    .line 488
    :cond_e
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SWIPE_ENROLL:Z

    return v0

    .line 486
    :cond_11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    return v0
.end method

.method private initForInDisplaySensor()V
    .registers 2

    .line 268
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1d

    .line 269
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 270
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->readSensorPosInfo()V

    .line 271
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setFodRect()V

    .line 272
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_1d

    .line 273
    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$FfjzlMWmZt-k-yeH8ao7NicEPuU;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$FfjzlMWmZt-k-yeH8ao7NicEPuU;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mRunnableHandleTspBlockAction:Ljava/lang/Runnable;

    .line 282
    :cond_1d
    return-void
.end method

.method private isEnrolledFingerprints()Z
    .registers 6

    .line 1531
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1532
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1533
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1532
    invoke-virtual {v2, v3, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 1533
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_38

    .line 1534
    const/4 v0, 0x1

    return v0

    .line 1536
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_38
    goto :goto_10

    .line 1537
    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method private isFPTemplateChangeForKnox(Landroid/content/Context;I)Z
    .registers 10
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1847
    const-string v0, "FingerprintService"

    const/4 v1, 0x0

    .line 1849
    .local v1, "result":Z
    :try_start_3
    const-string/jumbo v2, "persona"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    .line 1850
    .local v2, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v4

    .line 1852
    .local v4, "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1853
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v5

    move v1, v5

    .line 1854
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1855
    invoke-direct {p0, p1, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_53

    .line 1858
    :cond_28
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1859
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v3

    move v1, v3

    .line 1861
    :cond_33
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_53

    .line 1862
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1863
    .local v5, "personaId":I
    invoke-direct {p0, p1, v5}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    or-int/2addr v1, v6

    .line 1864
    .end local v5    # "personaId":I
    goto :goto_3d

    .line 1867
    :cond_53
    :goto_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FPTemplateChange : size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_73} :catch_75

    .line 1870
    nop

    .end local v2    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v4    # "personaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_8b

    .line 1868
    :catch_75
    move-exception v2

    .line 1869
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFPTemplateChangeForKnox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_8b
    return v1
.end method

.method private isMultifactorAuthEnforced(Landroid/content/Context;I)Z
    .registers 7
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 1822
    const/4 v0, 0x0

    .line 1824
    .local v0, "mIsMultifactorAuthEnforced":Z
    if-nez p2, :cond_13

    .line 1825
    :try_start_3
    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    .line 1826
    .local v1, "mEdm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    if-eqz v1, :cond_12

    .line 1827
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result v2

    move v0, v2

    .line 1829
    .end local v1    # "mEdm":Lcom/samsung/android/knox/EnterpriseDeviceManager;
    :cond_12
    goto :goto_22

    .line 1830
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 1831
    .local v1, "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v1, :cond_22

    .line 1832
    invoke-virtual {v1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result v2
    :try_end_21
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_21} :catch_23

    move v0, v2

    .line 1837
    .end local v1    # "containerMgr":Lcom/samsung/android/knox/container/KnoxContainerManager;
    :cond_22
    :goto_22
    goto :goto_3b

    .line 1835
    :catch_23
    move-exception v1

    .line 1836
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMultifactorAuthEnforced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_3b
    return v0
.end method

.method static synthetic lambda$handleAcquired$10()V
    .registers 1

    .line 1366
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getSemFaceManager()Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestAuthPause()V

    .line 1367
    return-void
.end method

.method static synthetic lambda$handleTouchEvent$15()V
    .registers 1

    .line 1672
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getSemFaceManager()Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->requestAuthPause()V

    .line 1673
    return-void
.end method

.method static synthetic lambda$startRequest$8(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 4
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "param"    # I

    .line 1106
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getOpticalSensorHelper()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->handleCalibrationMode(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method private openSession(I)I
    .registers 5
    .param p1, "param"    # I

    .line 728
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->startPostEnroll()V

    .line 729
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0

    return v0
.end method

.method private readDaemonSdkVersion()V
    .registers 7

    .line 367
    const-string v0, "FingerprintService"

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v1, :cond_7

    .line 368
    return-void

    .line 371
    :cond_7
    const/16 v1, 0x100

    :try_start_9
    new-array v1, v1, [B

    .line 372
    .local v1, "tempOutput":[B
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v2

    .line 375
    .local v2, "result":I
    if-lez v2, :cond_38

    .line 376
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readDaemonSdkVersion: called, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_38} :catch_39

    .line 382
    .end local v1    # "tempOutput":[B
    .end local v2    # "result":I
    :cond_38
    goto :goto_53

    .line 380
    :catch_39
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readDaemonSdkVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method private readSensorConfig()V
    .registers 9

    .line 406
    const-string/jumbo v0, "google_touch_display_optical,settings=3"

    .line 407
    .local v0, "configSensor":Ljava/lang/String;
    const-string/jumbo v1, "google_touch_display_optical,settings=3"

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "params":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_36

    aget-object v4, v1, v3

    .line 409
    .local v4, "p":Ljava/lang/String;
    const-string/jumbo v5, "settings="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 411
    :try_start_1b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mMaxTemplatesNumber:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_2a

    .line 415
    .end local v5    # "number":Ljava/lang/String;
    goto :goto_33

    .line 413
    :catch_2a
    move-exception v5

    .line 414
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "readSensorConfig: failed to read sensor config"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v4    # "p":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 418
    :cond_36
    return-void
.end method

.method private readSensorInfo()V
    .registers 8

    .line 386
    const-string v0, "FingerprintService"

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v1, :cond_7

    .line 387
    return-void

    .line 390
    :cond_7
    const/16 v1, 0x800

    :try_start_9
    new-array v1, v1, [B

    .line 391
    .local v1, "tempOutput":[B
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v2

    .line 394
    .local v2, "result":I
    if-lez v2, :cond_40

    .line 395
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readSensorInfo: called, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "\n"

    const-string v6, ", "

    .line 397
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 396
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_41

    .line 401
    .end local v1    # "tempOutput":[B
    .end local v2    # "result":I
    :cond_40
    goto :goto_5b

    .line 399
    :catch_41
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readSensorInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5b
    return-void
.end method

.method private readSensorTouchCount()V
    .registers 6

    .line 421
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "settings_fingerprint_ext.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 422
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    .line 423
    .local v1, "buffer":[B
    if-eqz v1, :cond_3b

    .line 425
    :try_start_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 426
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSensorTouchCount:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 429
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_3b

    .line 427
    :catch_1f
    move-exception v2

    .line 428
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readSensorTouchCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingerprintService"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private registerPersistentBroadcast()V
    .registers 6

    .line 285
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_43

    .line 286
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$1;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_38

    .line 336
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v1, :cond_2f

    .line 337
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 338
    const-string v1, "fod_enable,1,1,0"

    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 339
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    :cond_2f
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v1, :cond_38

    .line 343
    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    :cond_38
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mPersistentBroadCastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 349
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_43
    return-void
.end method

.method private removeFingerprints(II)I
    .registers 19
    .param p1, "fpId"    # I
    .param p2, "argUerId"    # I

    .line 873
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v4, 0x0

    .line 874
    .local v4, "result":I
    iget-object v5, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v5

    .line 875
    :try_start_a
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->updateActiveGroup(ILjava/lang/String;)V

    .line 876
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentUserId()I

    move-result v0

    if-eq v0, v3, :cond_45

    .line 877
    const-string v0, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeFingerprints : id mismatch : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v7}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentUserId()I

    move-result v0
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_10f

    move v3, v0

    .line 881
    .end local p2    # "argUerId":I
    .local v3, "argUerId":I
    :cond_45
    move v6, v3

    .line 883
    .local v6, "userId":I
    :try_start_46
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 884
    .local v7, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, -0x1

    if-gtz v0, :cond_64

    .line 885
    const-string v0, "FingerprintService"

    const-string/jumbo v9, "removeFingerprints : no enrolled finger"

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    monitor-exit v5

    return v8

    .line 889
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 892
    const/4 v9, 0x0

    if-ne v2, v8, :cond_85

    .line 893
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 894
    .local v0, "fpIdArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_71
    array-length v11, v0

    if-ge v10, v11, :cond_83

    .line 895
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v11}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v11

    aput v11, v0, v10

    .line 894
    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    :cond_83
    move-object v10, v0

    .end local v10    # "i":I
    goto :goto_8b

    .line 898
    .end local v0    # "fpIdArray":[I
    :cond_85
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 899
    .restart local v0    # "fpIdArray":[I
    aput v2, v0, v9

    move-object v10, v0

    .line 901
    .end local v0    # "fpIdArray":[I
    .local v10, "fpIdArray":[I
    :goto_8b
    array-length v11, v10

    move v12, v9

    :goto_8d
    if-ge v12, v11, :cond_d8

    aget v0, v10, v12
    :try_end_91
    .catchall {:try_start_46 .. :try_end_91} :catchall_112

    move v13, v0

    .line 903
    .local v13, "id":I
    :try_start_92
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0, v6, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->hRemove(II)I

    move-result v0

    if-nez v0, :cond_b7

    .line 904
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    sget-object v14, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14, v6, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 905
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;

    invoke-direct {v14, v1, v13, v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$QGahMrMqFojE3Vg-iLKL7thHJyY;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;II)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 907
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    const-string/jumbo v14, "request"

    invoke-virtual {v0, v14, v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b7} :catch_b8
    .catchall {:try_start_92 .. :try_end_b7} :catchall_112

    .line 911
    :cond_b7
    goto :goto_d4

    .line 909
    :catch_b8
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b9
    const-string v14, "FingerprintService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeFingerprints: "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v13    # "id":I
    :goto_d4
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_8d

    .line 913
    :cond_d8
    const-wide/16 v11, 0x0

    .line 914
    .local v11, "authenticatorId":J
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_101

    .line 915
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$4UszmJ_Lj7Hs4iULxgFcGPFkQPc;

    invoke-direct {v9, v1, v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$4UszmJ_Lj7Hs4iULxgFcGPFkQPc;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;I)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 917
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    const-string/jumbo v9, "request"

    invoke-virtual {v0, v9, v8}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    goto :goto_108

    .line 919
    :cond_101
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->hGetAuthenticatorId()J

    move-result-wide v8

    move-wide v11, v8

    .line 921
    :goto_108
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0, v6, v11, v12}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->setAuthenticatorId(IJ)V

    .line 922
    .end local v6    # "userId":I
    .end local v7    # "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v10    # "fpIdArray":[I
    .end local v11    # "authenticatorId":J
    monitor-exit v5

    .line 923
    return v4

    .line 922
    .end local v3    # "argUerId":I
    .restart local p2    # "argUerId":I
    :catchall_10f
    move-exception v0

    .end local p2    # "argUerId":I
    .restart local v3    # "argUerId":I
    :goto_110
    monitor-exit v5
    :try_end_111
    .catchall {:try_start_b9 .. :try_end_111} :catchall_112

    throw v0

    :catchall_112
    move-exception v0

    goto :goto_110
.end method

.method private requestAodGone()V
    .registers 7

    .line 654
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAodListener:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 656
    .local v1, "lis":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    if-nez v1, :cond_10

    .line 657
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "requestAodGone: No listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_35

    goto :goto_33

    .line 660
    :cond_10
    const/16 v2, 0x64

    const/4 v3, 0x0

    :try_start_13
    invoke-interface {v1, v3, v2, v3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onEvent(III)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_35

    .line 663
    goto :goto_33

    .line 661
    :catch_17
    move-exception v2

    .line 662
    .local v2, "e":Ljava/lang/Exception;
    :try_start_18
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAodGone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .end local v1    # "lis":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_33
    monitor-exit v0

    .line 666
    return-void

    .line 665
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private requestDozeHLPM(Z)V
    .registers 8
    .param p1, "on"    # Z

    .line 633
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAodListener:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 635
    .local v1, "lis":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    if-nez v1, :cond_d

    .line 636
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsHLPMPending:Z

    .line 637
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHLPMPendingState:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3e

    goto :goto_3c

    .line 640
    :cond_d
    :try_start_d
    iget-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLastDozeHlpmState:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_f} :catch_20
    .catchall {:try_start_d .. :try_end_f} :catchall_3e

    if-ne v2, p1, :cond_13

    .line 641
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_3e

    return-void

    .line 643
    :cond_13
    :try_start_13
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLastDozeHlpmState:Z

    .line 644
    if-eqz p1, :cond_19

    const/4 v2, 0x2

    goto :goto_1a

    .line 645
    :cond_19
    const/4 v2, 0x3

    :goto_1a
    nop

    .line 644
    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onEvent(III)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20
    .catchall {:try_start_13 .. :try_end_1f} :catchall_3e

    .line 648
    goto :goto_3c

    .line 646
    :catch_20
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestDozeHLPM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v1    # "lis":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3c
    monitor-exit v0

    .line 651
    return-void

    .line 650
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private requestDozeMode(Z)V
    .registers 8
    .param p1, "on"    # Z

    .line 612
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAodListener:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 614
    .local v1, "lis":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    const/4 v2, 0x1

    if-nez v1, :cond_d

    .line 615
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsDozePending:Z

    .line 616
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDozePendingState:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3e

    goto :goto_3c

    .line 619
    :cond_d
    :try_start_d
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLastDozeState:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_f} :catch_20
    .catchall {:try_start_d .. :try_end_f} :catchall_3e

    if-ne v3, p1, :cond_13

    .line 620
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_3e

    return-void

    .line 622
    :cond_13
    :try_start_13
    iput-boolean p1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLastDozeState:Z

    .line 623
    const/4 v3, 0x0

    if-eqz p1, :cond_1a

    move v2, v3

    goto :goto_1b

    .line 624
    :cond_1a
    nop

    :goto_1b
    nop

    .line 623
    invoke-interface {v1, v3, v2, v3}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onEvent(III)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_20
    .catchall {:try_start_13 .. :try_end_1f} :catchall_3e

    .line 627
    goto :goto_3c

    .line 625
    :catch_20
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    :try_start_21
    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestDozeMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v1    # "lis":Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3c
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_21 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private requestPauseOrResume(Z)I
    .registers 6
    .param p1, "pause"    # Z

    .line 808
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 809
    .local v0, "c":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_36

    .line 811
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 812
    .local v1, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    if-eqz p1, :cond_15

    .line 813
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->pauseEnroll()I

    move-result v2

    return v2

    .line 815
    :cond_15
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->resumeEnroll()I

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return v2

    .line 817
    .end local v1    # "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    :catch_1a
    move-exception v1

    .line 818
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPauseOrResume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_36
    const/4 v1, -0x1

    return v1
.end method

.method private requestProcessFIDO(II[B[B)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "param"    # I
    .param p3, "in"    # [B
    .param p4, "out"    # [B

    .line 520
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 522
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->updateActiveGroup(ILjava/lang/String;)V

    .line 523
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 526
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private requestSensorTest(I[B[BLandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .registers 8
    .param p1, "param"    # I
    .param p2, "in"    # [B
    .param p3, "out"    # [B
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 497
    iput-object p4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mRequestClientReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 498
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 500
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 503
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private requestUpdateSecureId(II[B)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "param"    # I
    .param p3, "in"    # [B

    .line 508
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 510
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v1

    .line 514
    .local v1, "result":I
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const-string v3, ""

    invoke-virtual {v2, p1, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->updateActiveGroup(ILjava/lang/String;)V

    .line 515
    monitor-exit v0

    .line 516
    return v1

    .line 515
    .end local v1    # "result":I
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private sendBroadcastForAvailableNewMatcher()V
    .registers 5

    .line 1757
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIntentForMatcherUpgrade:Landroid/content/Intent;

    if-nez v0, :cond_5

    .line 1758
    return-void

    .line 1761
    :cond_5
    :try_start_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1762
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040b57

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040b56

    .line 1763
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1764
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$9;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$9;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 1765
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040b54

    new-instance v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$8;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$8;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 1774
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040b55

    new-instance v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;

    invoke-direct {v3, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$7;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 1779
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$6;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    .line 1794
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1808
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;

    .line 1809
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1810
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5c} :catch_5d

    .line 1813
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    goto :goto_65

    .line 1811
    :catch_5d
    move-exception v0

    .line 1812
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FingerprintService"

    const-string v2, "ACTION_USER_UNLOCKED"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1814
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method public static sendErrorEvent(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II)V
    .registers 6
    .param p0, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p1, "error"    # I
    .param p2, "vendor"    # I

    .line 180
    const-string v0, "FingerprintService"

    if-eqz p0, :cond_1a

    .line 182
    const-wide/16 v1, 0x0

    :try_start_6
    invoke-interface {p0, v1, v2, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 187
    :goto_9
    goto :goto_1a

    .line 185
    :catch_a
    move-exception v1

    .line 186
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "sendErrorEvent: Failed to invoke onError:"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 183
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_12
    move-exception v1

    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "sendErrorEvent: Failed to send error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 189
    :cond_1a
    :goto_1a
    return-void
.end method

.method private setNotificationValueForKnox()V
    .registers 5

    .line 736
    :try_start_0
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "knox_gen_first_notification"

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mWorkspaceId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 740
    goto :goto_2b

    .line 738
    :catch_10
    move-exception v0

    .line 739
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method private updateTrustApp(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "input"    # [B
    .param p3, "param"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 774
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v2, p2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 775
    .local v0, "path":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTrustApp: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerprintService"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_29
    new-instance v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 779
    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v6

    sget-object v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 780
    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v7

    sget-object v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getHalDeviceId()J

    move-result-wide v8

    sget-object v3, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 782
    move-object/from16 v13, p4

    invoke-virtual {v3, v13}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->createServiceListener(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;

    move-result-object v11

    move-object v3, v1

    move-object v4, p0

    move-object v10, p1

    move-object v12, v0

    invoke-direct/range {v3 .. v12}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$3;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V

    .line 798
    .local v1, "client":Lcom/android/server/biometrics/SemBiometricTrustAppManager;
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->start()I

    move-result v3

    .line 799
    .local v3, "result":I
    if-eqz v3, :cond_5f

    .line 801
    const/4 v4, 0x6

    const/16 v5, -0x64

    invoke-virtual {v1, v4, v5}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->onAcquired(II)Z

    .line 803
    invoke-virtual {v1}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->stop()I

    .line 805
    :cond_5f
    return-void
.end method

.method private writeSensorTouchCount()V
    .registers 3

    .line 434
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$2;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method


# virtual methods
.method acquireDvfs(I)V
    .registers 6
    .param p1, "time"    # I

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireDvfs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "FINGERPRINT_SERVICE"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;ILjava/lang/String;I)V

    .line 1878
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1629
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " latest sensor status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLatestSensorStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current User : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Max Template : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mMaxTemplatesNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " C :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSensorTouchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_81

    .line 1634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NAVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-boolean v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v1, :cond_76

    const/4 v1, 0x1

    goto :goto_77

    :cond_76
    const/4 v1, 0x0

    :goto_77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    :cond_81
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    if-eqz v0, :cond_a0

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " daemon version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    :cond_a0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    if-eqz v0, :cond_c7

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sensor info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "\n"

    const-string v3, ", "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1642
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSecurityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_e6

    .line 1644
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->dump(Ljava/io/PrintWriter;)V

    .line 1646
    :cond_e6
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintTipsManager;->dump(Ljava/io/PrintWriter;)V

    .line 1647
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpDump(Ljava/io/PrintWriter;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f6} :catch_f7

    .line 1651
    goto :goto_112

    .line 1649
    :catch_f7
    move-exception v0

    .line 1650
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_112
    return-void
.end method

.method enumerate(I)V
    .registers 22
    .param p1, "pUserId"    # I

    .line 1541
    move-object/from16 v1, p0

    const-string v2, "FingerprintService"

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-nez v0, :cond_19b

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_AOSP_CONCEPT:Z

    if-eqz v0, :cond_10

    move/from16 v4, p1

    goto/16 :goto_19d

    .line 1544
    :cond_10
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const-string v3, ""

    move/from16 v4, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v3

    .line 1545
    .local v3, "userId":I
    const/16 v0, 0xa

    new-array v11, v0, [B

    .line 1546
    .local v11, "enumerateList":[B
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7, v11}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v12

    .line 1548
    .local v12, "enumerateSize":I
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v13

    .line 1552
    .local v13, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :try_start_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enumerate: FW="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", HAL="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_54} :catch_181

    .line 1554
    const-string v0, "enumerate: removing unknown template from fw, "

    if-nez v12, :cond_b0

    .line 1555
    :try_start_58
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_180

    .line 1556
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 1557
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v7

    sget-object v8, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 1558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1558
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    nop

    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_62

    .line 1561
    :cond_93
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$WEfg_wmXYE21_2ZSfOjOdROEP2c;

    invoke-direct {v5, v1, v3}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$WEfg_wmXYE21_2ZSfOjOdROEP2c;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;I)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    const-string v5, "enumerate"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    .line 1565
    const/16 v0, 0x94

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v0, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto/16 :goto_180

    .line 1569
    :cond_b0
    if-lez v12, :cond_180

    .line 1570
    const/4 v5, 0x0

    move v14, v5

    .local v14, "i":I
    :goto_b4
    if-ge v14, v12, :cond_141

    .line 1571
    const/4 v5, -0x1

    .line 1572
    .local v5, "matchedIdx":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    move v15, v6

    .line 1574
    .local v15, "size":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enumerate: HAL ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v7, v11, v14

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_d3
    if-ge v6, v15, :cond_e9

    .line 1577
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    aget-byte v8, v11, v14

    if-ne v7, v8, :cond_e6

    .line 1578
    move v5, v6

    .line 1579
    move v9, v5

    goto :goto_ea

    .line 1576
    :cond_e6
    add-int/lit8 v6, v6, 0x1

    goto :goto_d3

    :cond_e9
    move v9, v5

    .line 1582
    .end local v5    # "matchedIdx":I
    .end local v6    # "j":I
    .local v9, "matchedIdx":I
    :goto_ea
    if-ltz v9, :cond_f0

    .line 1583
    invoke-interface {v13, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_13d

    .line 1585
    :cond_f0
    new-instance v16, Landroid/hardware/fingerprint/Fingerprint;

    .line 1586
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v6

    aget-byte v8, v11, v14

    sget-object v5, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    .line 1587
    invoke-virtual {v5}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getHalDeviceId()J

    move-result-wide v17

    move-object/from16 v5, v16

    move v7, v3

    move/from16 v19, v9

    .end local v9    # "matchedIdx":I
    .local v19, "matchedIdx":I
    move-wide/from16 v9, v17

    invoke-direct/range {v5 .. v10}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    move-object/from16 v5, v16

    .line 1588
    .local v5, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v6

    sget-object v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, v5}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 1589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enumerate: adding unknown template, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1589
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    sget-object v6, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;

    invoke-direct {v7, v1, v5, v3}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$GicJodoXJLP_7BENWgLV3UDzpxU;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1570
    .end local v5    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    .end local v15    # "size":I
    .end local v19    # "matchedIdx":I
    :goto_13d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_b4

    .line 1600
    .end local v14    # "i":I
    :cond_141
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_145
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_180

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/Fingerprint;

    .line 1601
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v7

    sget-object v8, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v9

    invoke-virtual {v7, v8, v3, v9}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 1602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {v6}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1602
    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    sget-object v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;

    invoke-direct {v8, v1, v3, v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$jkh3Oe8BG4xikkl16Ho8AeIx_tQ;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;ILandroid/hardware/fingerprint/Fingerprint;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_17e} :catch_181

    .line 1618
    nop

    .end local v6    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_145

    .line 1624
    :cond_180
    :goto_180
    goto :goto_19a

    .line 1622
    :catch_181
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enumerate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19a
    return-void

    .line 1541
    .end local v3    # "userId":I
    .end local v11    # "enumerateList":[B
    .end local v12    # "enumerateSize":I
    .end local v13    # "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_19b
    move/from16 v4, p1

    .line 1542
    :goto_19d
    return-void
.end method

.method forceCloseEnrollSession()V
    .registers 6

    .line 1215
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForEnrollSession:Ljava/lang/Object;

    monitor-enter v0

    .line 1216
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsEnrollSession:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_31

    if-eqz v1, :cond_2f

    .line 1218
    :try_start_7
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    .line 1219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsEnrollSession:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14
    .catchall {:try_start_7 .. :try_end_13} :catchall_31

    .line 1222
    goto :goto_2f

    .line 1220
    :catch_14
    move-exception v1

    .line 1221
    .local v1, "e":Ljava/lang/Exception;
    :try_start_15
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceCloseEnrollSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    monitor-exit v0

    .line 1225
    return-void

    .line 1224
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw v1
.end method

.method forceStopClient()V
    .registers 4

    .line 1228
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1229
    .local v0, "currentClient":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v1, :cond_1c

    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_f

    goto :goto_1c

    .line 1233
    :cond_f
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v1, :cond_20

    .line 1234
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "forceStopClient: no client"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1231
    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1237
    :cond_20
    :goto_20
    return-void
.end method

.method public getBootPhase()I
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBootPhase:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getLockForTZCommand()Ljava/lang/Object;
    .registers 2

    .line 1207
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    return-object v0
.end method

.method getSecurityLevel()I
    .registers 2

    .line 608
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSecurityLevel:I

    return v0
.end method

.method getSensorAreaMarginFromBottomForFod()I
    .registers 2

    .line 699
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1b

    .line 700
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 701
    :cond_14
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getSensorAreaMarginFromBottomForFod()I

    move-result v0

    return v0

    .line 704
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method handleAcquired(JII)Z
    .registers 11
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAcquired: acquiredInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v0, 0x1

    .line 1350
    .local v0, "ret":Z
    const/4 v2, 0x6

    if-ne p3, v2, :cond_eb

    .line 1351
    const/16 v2, 0x2711

    if-eq p4, v2, :cond_da

    const/16 v2, 0x2712

    if-eq p4, v2, :cond_ba

    const/16 v2, 0x2714

    const/4 v3, 0x0

    if-eq p4, v2, :cond_9d

    const/16 v2, 0x4e21

    if-eq p4, v2, :cond_87

    const/16 v2, 0x4e22

    if-eq p4, v2, :cond_87

    const/16 v2, 0x7531

    const/16 v4, 0x7532

    if-eq p4, v2, :cond_4b

    if-eq p4, v4, :cond_4b

    packed-switch p4, :pswitch_data_ec

    goto/16 :goto_eb

    .line 1387
    :pswitch_45
    invoke-direct {p0, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleFactoryEvent(I)V

    .line 1388
    const/4 v0, 0x0

    .line 1389
    goto/16 :goto_eb

    .line 1393
    :cond_4b
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_SPEN_CHARGER:Z

    if-eqz v2, :cond_eb

    .line 1394
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v2, :cond_60

    .line 1395
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "spengestureservice"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 1397
    :cond_60
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSpenGestureManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz v2, :cond_85

    .line 1399
    if-ne p4, v4, :cond_67

    const/4 v3, 0x1

    :cond_67
    :try_start_67
    invoke-virtual {v2, v3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->notifyBleSpenChargeLockState(Z)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 1404
    goto :goto_85

    .line 1402
    :catch_6b
    move-exception v2

    .line 1403
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAcquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_85
    :goto_85
    const/4 v0, 0x0

    goto :goto_eb

    .line 1376
    :cond_87
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleSensorTouchEvent()V

    .line 1377
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v1, :cond_9b

    .line 1378
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    if-eqz v1, :cond_9b

    iget-boolean v1, v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v1, :cond_9b

    .line 1379
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-virtual {v1, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->handleGestureAction(I)V

    .line 1382
    :cond_9b
    const/4 v0, 0x0

    .line 1383
    goto :goto_eb

    .line 1412
    :cond_9d
    :pswitch_9d
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v1, :cond_eb

    .line 1413
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWaitingFingerUp:Z

    if-eqz v1, :cond_eb

    .line 1414
    iput-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWaitingFingerUp:Z

    .line 1415
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    .line 1416
    .local v1, "cc":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v1, :cond_b8

    .line 1417
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->startCurrentClient(I)V

    .line 1419
    :cond_b8
    const/4 v0, 0x0

    goto :goto_eb

    .line 1360
    .end local v1    # "cc":Lcom/android/server/biometrics/ClientMonitor;
    :cond_ba
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v1, :cond_d6

    .line 1361
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    .line 1362
    .local v1, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v2, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v2, :cond_d6

    .line 1363
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->acquireDvfs(I)V

    .line 1365
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$ItrVm4s3aMiokLQjUMQ_ChFL8lQ;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1371
    .end local v1    # "c":Lcom/android/server/biometrics/ClientMonitor;
    :cond_d6
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleSensorTouchEvent()V

    .line 1372
    goto :goto_eb

    .line 1353
    :cond_da
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v1, :cond_eb

    .line 1354
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 1355
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleTspBlockAction(J)V

    .line 1426
    :cond_eb
    :goto_eb
    return v0

    :pswitch_data_ec
    .packed-switch 0x2717
        :pswitch_9d
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method handleAuthenticated(ZLcom/android/server/biometrics/ClientMonitor;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)Z
    .registers 9
    .param p1, "authenticated"    # Z
    .param p2, "c"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p3, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/biometrics/ClientMonitor;",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    .line 1453
    .local p4, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 1454
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAuthenticated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    invoke-virtual {p2}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 1456
    .local v1, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    invoke-virtual {p2, p3, p1, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1457
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v3, :cond_37

    .line 1458
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->isWaitingFingerLeaveState()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1459
    const-string/jumbo v3, "handleAuthenticated: CLIENT - WAITING FINGER UP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWaitingFingerUp:Z

    .line 1463
    :cond_37
    const/4 v0, 0x1

    .line 1465
    :cond_38
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_41

    .line 1466
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->handleAuthenticated(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;Z)V

    .line 1468
    :cond_41
    return v0
.end method

.method handleBioSysUiRequest(IIJLjava/lang/String;)I
    .registers 12
    .param p1, "cmd"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # J
    .param p5, "arg3"    # Ljava/lang/String;

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleBioSysUiRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1138
    .local v1, "orgId":J
    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_bc

    goto/16 :goto_b7

    .line 1148
    :pswitch_31
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestAodGone()V

    .line 1149
    goto/16 :goto_b7

    .line 1197
    :pswitch_36
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleTouchEvent(IJ)V

    goto/16 :goto_b7

    .line 1190
    :pswitch_3b
    if-ne p2, v4, :cond_4c

    .line 1191
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gtz v3, :cond_46

    const/16 v3, 0x1770

    goto :goto_47

    :cond_46
    long-to-int v3, p3

    :goto_47
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->acquireDvfs(I)V

    goto/16 :goto_b7

    .line 1193
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->releaseDvfs()V

    .line 1195
    goto/16 :goto_b7

    .line 1179
    :pswitch_51
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v3, :cond_57

    .line 1180
    goto/16 :goto_b7

    .line 1182
    :cond_57
    if-ne p2, v4, :cond_61

    .line 1183
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getOpticalSensorHelper()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->restoreFunctionForLightSource(J)V

    goto :goto_b7

    .line 1184
    :cond_61
    if-nez p2, :cond_b7

    .line 1185
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getOpticalSensorHelper()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->disableFunctionForLightSource()V

    goto :goto_b7

    .line 1175
    :pswitch_6b
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    move v0, v3

    .line 1176
    goto :goto_b7

    .line 1160
    :pswitch_73
    sget-boolean v3, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v3, :cond_b7

    .line 1162
    if-ne p2, v4, :cond_7c

    .line 1163
    const-string v3, "1"

    goto :goto_7e

    :cond_7c
    const-string v3, "0"

    .line 1164
    .local v3, "mode":Ljava/lang/String;
    :goto_7e
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v4, v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setHwLightMode(Ljava/lang/String;)V

    .line 1165
    .end local v3    # "mode":Ljava/lang/String;
    goto :goto_b7

    .line 1152
    :pswitch_84
    if-ne p2, v4, :cond_8c

    .line 1153
    const-string v3, "fod_enable,1,1,0"

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    goto :goto_b7

    .line 1154
    :cond_8c
    const/4 v3, 0x2

    if-ne p2, v3, :cond_b7

    .line 1155
    const-string v3, "fod_enable,1,0,0"

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    goto :goto_b7

    .line 1144
    :pswitch_95
    if-ne p2, v4, :cond_98

    move v3, v4

    :cond_98
    invoke-direct {p0, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestDozeHLPM(Z)V

    .line 1145
    goto :goto_b7

    .line 1140
    :pswitch_9c
    if-ne p2, v4, :cond_9f

    move v3, v4

    :cond_9f
    invoke-direct {p0, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestDozeMode(Z)V

    .line 1141
    goto :goto_b7

    .line 1169
    :pswitch_a3
    sget-boolean v5, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v5, :cond_b7

    .line 1170
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getOpticalSensorHelper()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    move-result-object v5

    if-ne p2, v4, :cond_ae

    move v3, v4

    :cond_ae
    invoke-virtual {v5, v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->setDisplayStateLimit(Z)V
    :try_end_b1
    .catchall {:try_start_31 .. :try_end_b1} :catchall_b2

    goto :goto_b7

    .line 1201
    :catchall_b2
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    throw v3

    .line 1201
    :cond_b7
    :goto_b7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    nop

    .line 1203
    return v0

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_9c
        :pswitch_95
        :pswitch_84
        :pswitch_73
        :pswitch_6b
        :pswitch_51
        :pswitch_3b
        :pswitch_36
        :pswitch_31
    .end packed-switch
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .registers 8
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 1472
    if-nez p2, :cond_2d

    .line 1473
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_a

    .line 1474
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspLpMode(Z)V

    .line 1476
    :cond_a
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v0

    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 1477
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    .line 1476
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    .line 1479
    invoke-static {}, Lcom/android/server/biometrics/SemAnalyticsManager;->get()Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v0

    .line 1480
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x3

    .line 1479
    const-string v4, "FPEN"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1484
    :cond_2d
    return-void
.end method

.method handleError(JII)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleError: error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_PENDING_FINGER_LEAVE:Z

    if-eqz v0, :cond_26

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWaitingFingerUp:Z

    .line 1436
    :cond_26
    const/16 v0, 0x8

    if-ne p3, v0, :cond_49

    .line 1437
    const/16 v0, 0x3ec

    if-eq p4, v0, :cond_3f

    const/16 v0, 0x3ee

    if-eq p4, v0, :cond_33

    goto :goto_49

    .line 1444
    :cond_33
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForMatcherUpgrade:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDialogForMatcherUpgrade:Landroid/app/AlertDialog;

    if-nez v0, :cond_49

    .line 1445
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForAvailableNewMatcher()V

    goto :goto_49

    .line 1439
    :cond_3f
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$zMNPychEWdi7031mkqLKZLFNoV0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$zMNPychEWdi7031mkqLKZLFNoV0;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1450
    :cond_49
    :goto_49
    return-void
.end method

.method handleRemoved(Lcom/android/server/biometrics/ClientMonitor;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 9
    .param p1, "c"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 1487
    instance-of v0, p1, Lcom/android/server/biometrics/RemovalClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 1488
    move-object v0, p2

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 1489
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "client"

    if-lez v2, :cond_36

    .line 1490
    nop

    .line 1491
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v2

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    .line 1490
    const-string v5, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {p0, v5, v2, v4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    .line 1492
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    goto :goto_48

    .line 1494
    :cond_36
    nop

    .line 1495
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    .line 1494
    const-string v4, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    .line 1496
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    .line 1499
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_48
    :goto_48
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_55

    .line 1500
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_55

    .line 1501
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspLpMode(Z)V

    .line 1504
    :cond_55
    return-void
.end method

.method handleServiceDied()V
    .registers 5

    .line 1334
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$RNEI9bkUP_oJ8u7RItoFKwXj8R4;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$RNEI9bkUP_oJ8u7RItoFKwXj8R4;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1345
    return-void
.end method

.method handleUserComplete(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUserComplete: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_36

    .line 1521
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->updateValue()V

    .line 1522
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->observe(Z)V

    .line 1523
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-boolean v0, v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_36

    .line 1524
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->handleGestureMode(Z)V

    .line 1528
    :cond_36
    return-void
.end method

.method handleUserSwitching(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleUserSwitching: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 1509
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_34

    .line 1510
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    iget-boolean v0, v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_34

    .line 1511
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->handleGestureMode(Z)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->observe(Z)V

    .line 1515
    :cond_34
    return-void
.end method

.method hasNewMatcher()Z
    .registers 5

    .line 745
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 746
    return v1

    .line 748
    :cond_6
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0

    .line 749
    .local v0, "ret":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method hasReachedEnrollmentLimit(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 1326
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mMaxTemplatesNumber:I

    if-lt v0, v1, :cond_17

    .line 1327
    const-string v0, "FingerprintService"

    const-string v1, "Too many fingerprints registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v0, 0x1

    return v0

    .line 1330
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method isIsWaitingFingerUp()Z
    .registers 2

    .line 1211
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWaitingFingerUp:Z

    return v0
.end method

.method public synthetic lambda$enumerate$12$SemFingerprintServiceExtImpl(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1561
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$enumerate$13$SemFingerprintServiceExtImpl(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 6
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I

    .line 1592
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    .line 1593
    const/16 v0, 0x94

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1596
    return-void
.end method

.method public synthetic lambda$enumerate$14$SemFingerprintServiceExtImpl(ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .line 1606
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "enumerate"

    if-lez v0, :cond_24

    .line 1607
    invoke-virtual {p2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v0

    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    .line 1608
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    goto :goto_31

    .line 1610
    :cond_24
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    .line 1611
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpRemoved(Ljava/lang/String;I)V

    .line 1614
    :goto_31
    const/16 v0, 0x94

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1617
    return-void
.end method

.method public synthetic lambda$handleError$11$SemFingerprintServiceExtImpl()V
    .registers 2

    .line 1440
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->enumerate(I)V

    .line 1441
    return-void
.end method

.method public synthetic lambda$handleScreenEvent$1$SemFingerprintServiceExtImpl(Z)V
    .registers 5
    .param p1, "screenOn"    # Z

    .line 587
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_16

    .line 588
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz p1, :cond_16

    .line 589
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II)I

    .line 592
    :cond_16
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 593
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_3a

    .line 594
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 595
    const-string v0, "fod_enable,1,1,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    goto :goto_3a

    .line 597
    :cond_2d
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    if-nez v0, :cond_35

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FAKE_AOD:Z

    if-eqz v0, :cond_3a

    .line 598
    :cond_35
    const-string v0, "fod_enable,1,0,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 602
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    const/16 v1, 0x73

    .line 603
    const/4 v2, 0x0

    .line 602
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V

    .line 604
    return-void
.end method

.method public synthetic lambda$handleServiceDied$9$SemFingerprintServiceExtImpl()V
    .registers 3

    .line 1335
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "handleServiceDied: restore HAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    if-eqz v0, :cond_1a

    .line 1338
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    if-eqz v0, :cond_1a

    iget-boolean v0, v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_1a

    .line 1340
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->handleGestureMode(Z)V

    .line 1344
    :cond_1a
    return-void
.end method

.method public synthetic lambda$initForInDisplaySensor$0$SemFingerprintServiceExtImpl()V
    .registers 4

    .line 274
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleTspBlockAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_21
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/4 v1, 0x6

    .line 278
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x3ec

    goto :goto_31

    :cond_2f
    const/16 v2, 0x3ed

    .line 277
    :goto_31
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->handleAcquired(II)V

    .line 279
    return-void
.end method

.method public synthetic lambda$removeFingerprints$2$SemFingerprintServiceExtImpl(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "userId"    # I

    .line 905
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$removeFingerprints$3$SemFingerprintServiceExtImpl(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 915
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->sendBroadcastForTemplate(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$startRequest$4$SemFingerprintServiceExtImpl(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inputBuf"    # [B
    .param p3, "param"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 966
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateTrustApp(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    return-void
.end method

.method public synthetic lambda$startRequest$5$SemFingerprintServiceExtImpl()V
    .registers 1

    .line 1006
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->setNotificationValueForKnox()V

    return-void
.end method

.method public synthetic lambda$startRequest$6$SemFingerprintServiceExtImpl(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .param p1, "param"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 1070
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1071
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_10

    .line 1072
    :cond_9
    if-nez p1, :cond_10

    .line 1073
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1075
    :cond_10
    :goto_10
    return-void
.end method

.method public synthetic lambda$startRequest$7$SemFingerprintServiceExtImpl()V
    .registers 5

    .line 1093
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRequest: Remove ALL users\'s template"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1095
    .local v1, "user":Landroid/content/pm/UserInfo;
    const/4 v2, -0x1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->removeFingerprints(II)I

    .line 1096
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    goto :goto_18

    .line 1097
    :cond_31
    return-void
.end method

.method onBootPhase(I)V
    .registers 11
    .param p1, "phase"    # I

    .line 205
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    const-string/jumbo v1, "onBootPhase: "

    const-string v2, "FingerprintService"

    if-eqz v0, :cond_1b

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_1b
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBootPhase:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 210
    const/16 v0, 0x258

    const/4 v3, 0x0

    if-ne p1, v0, :cond_61

    .line 212
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleUpdateMatcher()V

    .line 213
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->readSensorTouchCount()V

    .line 214
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->registerPersistentBroadcast()V

    .line 216
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    .line 218
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_GESTURE_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_47

    .line 219
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-direct {v0, v2}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mGestureManager:Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$GestureManager;->observe(Z)V

    .line 223
    :cond_47
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_e7

    .line 224
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isFactoryBinary()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 225
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->isEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 226
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspLpMode(Z)V

    goto/16 :goto_e7

    .line 228
    :cond_5c
    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspLpMode(Z)V

    goto/16 :goto_e7

    .line 231
    :cond_61
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e7

    .line 234
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 236
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_73

    .line 242
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->onBootCompleted()V

    .line 246
    :cond_73
    :try_start_73
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_87

    .line 247
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    const-string v6, "FPDA"

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpDaemonVersion:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 250
    :cond_87
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    if-eqz v0, :cond_cf

    .line 251
    new-instance v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mFpSensorInfo:[B

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 252
    .local v0, "arrStr":Ljava/lang/String;
    const-string v6, "UID : "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 253
    .local v6, "pos":I
    if-ltz v6, :cond_ad

    add-int/lit8 v7, v6, 0x6

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\n"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v7, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_af

    :cond_ad
    const-string v3, ""

    .line 254
    .local v3, "uid":Ljava/lang/String;
    :goto_af
    sget-boolean v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-eqz v7, :cond_c8

    .line 255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onBootPhase: UID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_c8
    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    const-string v8, "FPDS"

    invoke-virtual {v7, v8, v3, v5, v4}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLog(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_cf} :catch_d0

    .line 262
    .end local v0    # "arrStr":Ljava/lang/String;
    .end local v3    # "uid":Ljava/lang/String;
    .end local v6    # "pos":I
    :cond_cf
    goto :goto_e7

    .line 260
    :catch_d0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e7
    :goto_e7
    return-void
.end method

.method registerAodListener(Landroid/os/IBinder;ZLcom/samsung/android/biometrics/ISemBiometricSysUiCallback;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "internal"    # Z
    .param p3, "lis"    # Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAodListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_1e
    iput-object p3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAodListener:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 673
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsDozePending:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 674
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDozePendingState:Z

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestDozeMode(Z)V

    .line 675
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsDozePending:Z

    .line 677
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsHLPMPending:Z

    if-eqz v1, :cond_37

    .line 678
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHLPMPendingState:Z

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestDozeHLPM(Z)V

    .line 679
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsHLPMPending:Z

    .line 681
    :cond_37
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1e .. :try_end_3b} :catchall_39

    throw v1
.end method

.method releaseDvfs()V
    .registers 4

    .line 1881
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "releaseDvfs: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 1884
    return-void
.end method

.method requestAspLevel()V
    .registers 1

    .line 839
    return-void
.end method

.method sendBroadcastForTemplate(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .line 842
    const-string v0, "FingerprintService"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    .local v1, "intent":Landroid/content/Intent;
    if-lez p2, :cond_16

    .line 844
    const-string v2, "fingerIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    :cond_16
    const/high16 v2, 0x1000000

    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 849
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 851
    sget-boolean v2, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_63

    const-string v3, "["

    if-eqz v2, :cond_4b

    .line 852
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is sent with fingerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 854
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_62} :catch_63

    .line 858
    :goto_62
    goto :goto_7d

    .line 856
    :catch_63
    move-exception v2

    .line 857
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7d
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 861
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 862
    :cond_8d
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v0, :cond_94

    .line 863
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/SemAnalyticsManager;->fpInsertLogRemove(I)V

    .line 866
    :cond_94
    return-void
.end method

.method startPostEnroll()I
    .registers 12

    .line 1291
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForEnrollSession:Ljava/lang/Object;

    monitor-enter v0

    .line 1292
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsEnrollSession:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1293
    monitor-exit v0

    return v2

    .line 1295
    :cond_a
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v1

    .line 1296
    .local v1, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-nez v1, :cond_1c

    .line 1297
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_92

    return v2

    .line 1301
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_73
    .catchall {:try_start_1c .. :try_end_1f} :catchall_92

    .line 1302
    :try_start_1f
    sget-boolean v4, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-nez v4, :cond_26

    .line 1303
    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    .line 1305
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1306
    .local v4, "bt":J
    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v6

    .line 1307
    .local v6, "result":I
    sget-boolean v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-nez v7, :cond_38

    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 1308
    :cond_38
    const-string v7, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPostEnroll FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_5d
    iput-boolean v2, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsEnrollSession:Z

    .line 1312
    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    if-eqz v7, :cond_6d

    .line 1313
    sget-object v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    invoke-static {v7, v8}, Lcom/android/server/biometrics/Utils;->unregisterBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 1314
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    .line 1316
    :cond_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_1f .. :try_end_6e} :catchall_70

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_92

    return v6

    .line 1317
    .end local v4    # "bt":J
    .end local v6    # "result":I
    :catchall_70
    move-exception v4

    :try_start_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    .end local v1    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    :try_start_72
    throw v4
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_73} :catch_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_92

    .line 1318
    .restart local v1    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    :catch_73
    move-exception v3

    .line 1319
    .local v3, "e":Ljava/lang/Exception;
    :try_start_74
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPostEnroll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    nop

    .end local v1    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .end local v3    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 1322
    return v2

    .line 1321
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_74 .. :try_end_94} :catchall_92

    throw v1
.end method

.method startPreEnroll()J
    .registers 16

    .line 1240
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1241
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_13

    .line 1242
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-wide v1

    .line 1245
    :cond_13
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getSensorStatus()I

    move-result v3

    .line 1246
    .local v3, "sensorStatus":I
    const v4, 0x186c8

    if-eq v3, v4, :cond_2a

    const v4, 0x186c9

    if-eq v3, v4, :cond_2a

    .line 1248
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startPreEnroll: sensor status is error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return-wide v1

    .line 1251
    :cond_2a
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForEnrollSession:Ljava/lang/Object;

    monitor-enter v4

    .line 1253
    :try_start_2d
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v5
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_9c
    .catchall {:try_start_2d .. :try_end_30} :catchall_9a

    .line 1254
    :try_start_30
    sget-boolean v6, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-nez v6, :cond_37

    .line 1255
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    .line 1257
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 1258
    .local v6, "bt":J
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v8

    .line 1259
    .local v8, "result":J
    sget-boolean v10, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->DEBUG:Z

    if-nez v10, :cond_49

    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v10

    if-eqz v10, :cond_72

    .line 1260
    :cond_49
    const-string v10, "FingerprintService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "startPreEnroll FP_FINISH ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms) RESULT: 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1260
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_72
    cmp-long v10, v8, v1

    if-eqz v10, :cond_94

    .line 1264
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsEnrollSession:Z

    .line 1265
    iget-object v10, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    if-nez v10, :cond_94

    .line 1266
    new-instance v10, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$4;

    invoke-direct {v10, p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl$4;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    iput-object v10, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mBroadCastReceiverForEnroll:Landroid/content/BroadcastReceiver;

    .line 1277
    sget-object v11, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v14, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    invoke-static {v11, v10, v12, v13, v14}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 1281
    :cond_94
    monitor-exit v5
    :try_end_95
    .catchall {:try_start_30 .. :try_end_95} :catchall_97

    :try_start_95
    monitor-exit v4
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_9a

    return-wide v8

    .line 1282
    .end local v6    # "bt":J
    .end local v8    # "result":J
    :catchall_97
    move-exception v6

    :try_start_98
    monitor-exit v5
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    .end local v0    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .end local v3    # "sensorStatus":I
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    :try_start_99
    throw v6
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9c
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    .line 1286
    .restart local v0    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .restart local v3    # "sensorStatus":I
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    :catchall_9a
    move-exception v1

    goto :goto_bb

    .line 1283
    :catch_9c
    move-exception v5

    .line 1284
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9d
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startPreEnroll: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    monitor-exit v4

    .line 1287
    return-wide v1

    .line 1286
    :goto_bb
    monitor-exit v4
    :try_end_bc
    .catchall {:try_start_9d .. :try_end_bc} :catchall_9a

    throw v1
.end method

.method startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)I
    .registers 28
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "param"    # I
    .param p6, "userId"    # I
    .param p7, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "callingPid"    # I

    .line 929
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v0, p6

    move-object/from16 v13, p8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") called from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-direct {v7, v9}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->checkRequestPermission(I)V

    .line 933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 934
    .local v14, "orgId":J
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v6

    .line 935
    .end local p6    # "userId":I
    .local v6, "userId":I
    const/16 v16, -0x3

    .line 938
    .local v16, "result":I
    const/16 v0, 0x9

    if-eq v9, v0, :cond_29b

    const/16 v0, 0xa

    if-eq v9, v0, :cond_292

    const/16 v0, 0x1b

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eq v9, v0, :cond_217

    const/16 v0, 0x1c

    if-eq v9, v0, :cond_1fc

    const/16 v0, 0x1e

    if-eq v9, v0, :cond_1f3

    const/16 v0, 0x2711

    if-eq v9, v0, :cond_1cf

    packed-switch v9, :pswitch_data_2aa

    packed-switch v9, :pswitch_data_2be

    packed-switch v9, :pswitch_data_2cc

    .line 1123
    :try_start_73
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0, v9, v12, v10, v11}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v0
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_1cb

    .line 1125
    .end local v16    # "result":I
    .local v0, "result":I
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    nop

    .line 1127
    return v0

    .line 1116
    .end local v0    # "result":I
    .restart local v16    # "result":I
    :pswitch_7e
    :try_start_7e
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_95

    .line 1117
    iget-object v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsBouncer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v12, v1, :cond_87

    goto :goto_88

    :cond_87
    move v1, v5

    :goto_88
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1118
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    const/16 v1, 0x75

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sendCommandIfSessionExist(IILandroid/os/Bundle;)V
    :try_end_95
    .catchall {:try_start_7e .. :try_end_95} :catchall_1cb

    .line 1121
    :cond_95
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    return v5

    .line 1111
    :pswitch_9a
    :try_start_9a
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_a8

    .line 1112
    iget-object v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsTspBlock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    return v0

    .line 1114
    :cond_a8
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    return v5

    .line 1105
    :pswitch_ad
    :try_start_ad
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_bb

    .line 1106
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;

    invoke-direct {v1, v8, v13, v12}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LxnV_-h0xSbryk9aYKc0qz-6Y-Y;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_bb
    .catchall {:try_start_ad .. :try_end_bb} :catchall_1cb

    .line 1108
    :cond_bb
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    return v5

    .line 1100
    :pswitch_c0
    :try_start_c0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_cd

    .line 1101
    iget-object v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInDisplaySensorImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    if-ne v12, v1, :cond_c9

    goto :goto_ca

    :cond_c9
    move v1, v5

    :goto_ca
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setFodStrictMode(Z)V
    :try_end_cd
    .catchall {:try_start_c0 .. :try_end_cd} :catchall_1cb

    .line 1103
    :cond_cd
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1103
    return v5

    .line 1092
    :pswitch_d2
    :try_start_d2
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$H2FSeUmdkhPly1zOMAAL9NOVHxY;

    invoke-direct {v1, v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$H2FSeUmdkhPly1zOMAAL9NOVHxY;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_1cb

    .line 1098
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1098
    return v5

    .line 1065
    :pswitch_e1
    :try_start_e1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_f8

    .line 1066
    if-ne v12, v1, :cond_ee

    .line 1067
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->cancelUnbind()V

    .line 1069
    :cond_ee
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;

    invoke-direct {v1, v7, v12, v8, v13}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$j-LLQzW9EnY1BeUwXybbRTlOEfo;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_f8
    .catchall {:try_start_e1 .. :try_end_f8} :catchall_1cb

    .line 1077
    :cond_f8
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1077
    return v5

    .line 1051
    :pswitch_fd
    :try_start_fd
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1052
    .local v0, "c":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_112

    .line 1053
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getExtensionImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    .line 1054
    .local v1, "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    if-eqz v1, :cond_112

    .line 1055
    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->moveSensorIcon()V
    :try_end_112
    .catchall {:try_start_fd .. :try_end_112} :catchall_1cb

    .line 1059
    .end local v0    # "c":Lcom/android/server/biometrics/ClientMonitor;
    .end local v1    # "ce":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    :cond_112
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1059
    return v5

    .line 1085
    :pswitch_117
    :try_start_117
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->getCurrentAuthClientExtensionImpl()Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;

    move-result-object v0

    .line 1086
    .local v0, "cExtImpl":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    if-eqz v0, :cond_128

    .line 1087
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->getRemainTimeForFingerIcon()J

    move-result-wide v1
    :try_end_123
    .catchall {:try_start_117 .. :try_end_123} :catchall_1cb

    long-to-int v1, v1

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    return v1

    .line 1090
    .end local v0    # "cExtImpl":Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    :cond_128
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1090
    return v5

    .line 1049
    :pswitch_12d
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    return v5

    .line 1082
    :pswitch_132
    if-nez v12, :cond_135

    goto :goto_136

    :cond_135
    move v1, v5

    :goto_136
    :try_start_136
    invoke-direct {v7, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->handleScreenEvent(Z)V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_1cb

    .line 1083
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1083
    return v5

    .line 1023
    :pswitch_13e
    :try_start_13e
    iget v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSensorTouchCount:I
    :try_end_140
    .catchall {:try_start_13e .. :try_end_140} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    return v0

    .line 1026
    :pswitch_144
    :try_start_144
    invoke-direct {v7, v12}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->hasFeature(I)Z

    move-result v0
    :try_end_148
    .catchall {:try_start_144 .. :try_end_148} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1026
    return v0

    .line 1020
    :pswitch_14c
    :try_start_14c
    iget v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mMaxTemplatesNumber:I
    :try_end_14e
    .catchall {:try_start_14c .. :try_end_14e} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1020
    return v0

    .line 1033
    :pswitch_152
    :try_start_152
    invoke-direct {v7, v6, v12, v11}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getFingerprintIds(II[B)I

    move-result v0
    :try_end_156
    .catchall {:try_start_152 .. :try_end_156} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1033
    return v0

    .line 1028
    :pswitch_15a
    :try_start_15a
    iget-object v2, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForEnrollSession:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15d
    .catchall {:try_start_15a .. :try_end_15d} :catchall_1cb

    .line 1029
    :try_start_15d
    iget-boolean v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsEnrollSession:Z

    if-eqz v0, :cond_162

    goto :goto_163

    :cond_162
    move v1, v5

    :goto_163
    monitor-exit v2
    :try_end_164
    .catchall {:try_start_15d .. :try_end_164} :catchall_168

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1029
    return v1

    .line 1030
    :catchall_168
    move-exception v0

    :try_start_169
    monitor-exit v2
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    .end local v6    # "userId":I
    .end local v14    # "orgId":J
    .end local v16    # "result":I
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "cmd":I
    .end local p3    # "inputBuf":[B
    .end local p4    # "outputBuf":[B
    .end local p5    # "param":I
    .end local p7    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .end local p8    # "opPackageName":Ljava/lang/String;
    .end local p9    # "callingPid":I
    :try_start_16a
    throw v0

    .line 1036
    .restart local v6    # "userId":I
    .restart local v14    # "orgId":J
    .restart local v16    # "result":I
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "cmd":I
    .restart local p3    # "inputBuf":[B
    .restart local p4    # "outputBuf":[B
    .restart local p5    # "param":I
    .restart local p7    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .restart local p8    # "opPackageName":Ljava/lang/String;
    .restart local p9    # "callingPid":I
    :pswitch_16b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getLockoutRemainingTime()I

    move-result v0
    :try_end_16f
    .catchall {:try_start_16a .. :try_end_16f} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1036
    return v0

    .line 1017
    :pswitch_173
    :try_start_173
    invoke-direct {v7, v12, v6}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->removeFingerprints(II)I

    move-result v0
    :try_end_177
    .catchall {:try_start_173 .. :try_end_177} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1017
    return v0

    .line 945
    :pswitch_17b
    :try_start_17b
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "startRequest: [UNIQUE_ID] Not supported function"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183
    .catchall {:try_start_17b .. :try_end_183} :catchall_1cb

    .line 946
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 946
    return v5

    .line 942
    :pswitch_188
    :try_start_188
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getSensorStatus()I

    move-result v0
    :try_end_18c
    .catchall {:try_start_188 .. :try_end_18c} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    return v0

    .line 1043
    :pswitch_190
    :try_start_190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateCacheForHAL()V

    .line 1044
    invoke-direct {v7, v11}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getSensorInfo([B)I

    move-result v0
    :try_end_197
    .catchall {:try_start_190 .. :try_end_197} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    return v0

    .line 1040
    :pswitch_19b
    :try_start_19b
    invoke-direct {v7, v11}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getDaemonVersion([B)I

    move-result v0
    :try_end_19f
    .catchall {:try_start_19b .. :try_end_19f} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    return v0

    .line 952
    :pswitch_1a3
    move-object/from16 v4, p7

    :try_start_1a5
    invoke-direct {v7, v12, v10, v11, v4}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestSensorTest(I[B[BLandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v0
    :try_end_1a9
    .catchall {:try_start_1a5 .. :try_end_1a9} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 952
    return v0

    .line 949
    :pswitch_1ad
    move-object/from16 v4, p7

    :try_start_1af
    invoke-direct {v7, v12}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->openSession(I)I

    move-result v0
    :try_end_1b3
    .catchall {:try_start_1af .. :try_end_1b3} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 949
    return v0

    .line 957
    :pswitch_1b7
    move-object/from16 v4, p7

    :try_start_1b9
    invoke-direct {v7, v5}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestPauseOrResume(Z)I

    move-result v0
    :try_end_1bd
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    return v0

    .line 955
    :pswitch_1c1
    move-object/from16 v4, p7

    :try_start_1c3
    invoke-direct {v7, v1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestPauseOrResume(Z)I

    move-result v0
    :try_end_1c7
    .catchall {:try_start_1c3 .. :try_end_1c7} :catchall_1cb

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 955
    return v0

    .line 1125
    :catchall_1cb
    move-exception v0

    move v9, v6

    goto/16 :goto_2a5

    .line 966
    :cond_1cf
    move-object/from16 v4, p7

    :try_start_1d1
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LOKSdwkcJKeRY39b8xnv_CLPP1k;
    :try_end_1d5
    .catchall {:try_start_1d1 .. :try_end_1d5} :catchall_1ef

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v8, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v17, v5

    move/from16 v5, p5

    move v9, v6

    .end local v6    # "userId":I
    .local v9, "userId":I
    move-object/from16 v6, p7

    :try_start_1e4
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$LOKSdwkcJKeRY39b8xnv_CLPP1k;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1ea
    .catchall {:try_start_1e4 .. :try_end_1ea} :catchall_2a4

    .line 967
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    return v17

    .line 1125
    .end local v9    # "userId":I
    .restart local v6    # "userId":I
    :catchall_1ef
    move-exception v0

    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    goto/16 :goto_2a5

    .line 1013
    .end local v9    # "userId":I
    .restart local v6    # "userId":I
    :cond_1f3
    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    :try_start_1f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getSecurityLevel()I

    move-result v0
    :try_end_1f8
    .catchall {:try_start_1f4 .. :try_end_1f8} :catchall_2a4

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1013
    return v0

    .line 1003
    .end local v9    # "userId":I
    .restart local v6    # "userId":I
    :cond_1fc
    move/from16 v17, v5

    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    :try_start_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateMatcher()V

    .line 1005
    iget-boolean v0, v7, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsWorkspace:Z

    if-eqz v0, :cond_212

    .line 1006
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$awCAtHR81yo1lox_h9v2sKiK440;

    invoke-direct {v1, v7}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemFingerprintServiceExtImpl$awCAtHR81yo1lox_h9v2sKiK440;-><init>(Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_212
    .catchall {:try_start_1ff .. :try_end_212} :catchall_2a4

    .line 1010
    :cond_212
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    return v17

    .line 971
    .end local v9    # "userId":I
    .restart local v6    # "userId":I
    :cond_217
    move/from16 v17, v5

    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    const/4 v0, -0x1

    if-ne v12, v0, :cond_225

    .line 972
    :try_start_21d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->hasNewMatcher()Z

    move-result v0
    :try_end_221
    .catchall {:try_start_21d .. :try_end_221} :catchall_2a4

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 972
    return v0

    .line 974
    :cond_225
    const/4 v0, 0x2

    if-eqz v9, :cond_22f

    if-eq v12, v0, :cond_22f

    .line 975
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 975
    return v17

    .line 977
    :cond_22f
    :try_start_22f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->hasNewMatcher()Z

    move-result v2

    if-eqz v2, :cond_28d

    .line 978
    const/4 v2, 0x0

    .line 979
    .local v2, "hasEnrolledFp":Z
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_246
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_284

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 980
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 982
    .local v5, "uId":I
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v6

    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6
    :try_end_26a
    .catchall {:try_start_22f .. :try_end_26a} :catchall_2a4

    if-lez v6, :cond_26e

    move v6, v1

    goto :goto_270

    :cond_26e
    move/from16 v6, v17

    .line 983
    .local v6, "hasTemplate":Z
    :goto_270
    if-eqz v6, :cond_283

    .line 984
    const/4 v2, 0x1

    .line 985
    if-nez v5, :cond_27c

    .line 986
    if-nez v12, :cond_283

    .line 987
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 987
    return v1

    .line 990
    :cond_27c
    if-ne v12, v1, :cond_283

    .line 991
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    return v1

    .line 995
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "uId":I
    .end local v6    # "hasTemplate":Z
    :cond_283
    goto :goto_246

    .line 996
    :cond_284
    if-ne v12, v0, :cond_28d

    if-nez v2, :cond_28d

    .line 997
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    return v1

    .line 1001
    .end local v2    # "hasEnrolledFp":Z
    :cond_28d
    nop

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1001
    return v17

    .line 960
    .end local v9    # "userId":I
    .local v6, "userId":I
    :cond_292
    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    :try_start_293
    invoke-direct {v7, v9, v12, v10}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestUpdateSecureId(II[B)I

    move-result v0
    :try_end_297
    .catchall {:try_start_293 .. :try_end_297} :catchall_2a4

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    return v0

    .line 963
    .end local v9    # "userId":I
    .restart local v6    # "userId":I
    :cond_29b
    move v9, v6

    .end local v6    # "userId":I
    .restart local v9    # "userId":I
    :try_start_29c
    invoke-direct {v7, v9, v12, v10, v11}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->requestProcessFIDO(II[B[B)I

    move-result v0
    :try_end_2a0
    .catchall {:try_start_29c .. :try_end_2a0} :catchall_2a4

    .line 1125
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 963
    return v0

    .line 1125
    :catchall_2a4
    move-exception v0

    :goto_2a5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw v0

    nop

    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_1c1
        :pswitch_1b7
        :pswitch_1ad
        :pswitch_1a3
        :pswitch_19b
        :pswitch_190
        :pswitch_188
        :pswitch_17b
    .end packed-switch

    :pswitch_data_2be
    .packed-switch 0x3e8
        :pswitch_173
        :pswitch_16b
        :pswitch_15a
        :pswitch_152
        :pswitch_14c
    .end packed-switch

    :pswitch_data_2cc
    .packed-switch 0x3ee
        :pswitch_144
        :pswitch_13e
        :pswitch_132
        :pswitch_12d
        :pswitch_117
        :pswitch_fd
        :pswitch_12d
        :pswitch_e1
        :pswitch_d2
        :pswitch_c0
        :pswitch_ad
        :pswitch_9a
        :pswitch_7e
    .end packed-switch
.end method

.method unregisterAodListener(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "internal"    # Z

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterAodListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForAodCtrl:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    const/4 v1, 0x0

    :try_start_1f
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mAodListener:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    .line 689
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mDozePendingState:Z

    .line 690
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsDozePending:Z

    .line 691
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLastDozeState:Z

    .line 692
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mIsHLPMPending:Z

    .line 693
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mHLPMPendingState:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLastDozeHlpmState:Z

    .line 695
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_30

    throw v1
.end method

.method updateCacheForHAL()V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->readDaemonSdkVersion()V

    .line 356
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->readSensorInfo()V

    .line 357
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSecurityLevel:I

    .line 359
    if-gtz v1, :cond_1d

    .line 360
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mSecurityLevel:I

    .line 362
    :cond_1d
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method updateMatcher()V
    .registers 6

    .line 753
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FINGERPRINT_JDM_HAL:Z

    if-eqz v0, :cond_5

    .line 754
    return-void

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mLockForTZCommand:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->forceStopClient()V

    .line 758
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->mInjector:Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/android/server/biometrics/fingerprint/FingerprintService$Injector;->request(II[B[B)I

    .line 760
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->updateCacheForHAL()V

    .line 761
    monitor-exit v0

    .line 762
    return-void

    .line 761
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method
