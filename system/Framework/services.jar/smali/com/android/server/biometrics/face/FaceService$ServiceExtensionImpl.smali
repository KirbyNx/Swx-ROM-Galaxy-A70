.class public final Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
.super Ljava/lang/Object;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "ServiceExtensionImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;,
        Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;,
        Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;,
        Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;
    }
.end annotation


# static fields
.field static final ACTION_FACE_ADDED:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_ADDED"

.field static final ACTION_FACE_REMOVED:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

.field static final ACTION_FACE_RESET:Ljava/lang/String; = "com.samsung.android.bio.face.intent.action.FACE_RESET"


# instance fields
.field private final BRIGHTNESS_LEVEL_MAX_TIME:I

.field private final BRIGHTNESS_LEVEL_TIME:I

.field private final DB_FACE_FASTER_RECOGNITION:Ljava/lang/String;

.field private final DB_FACE_OPEN_EYES:Ljava/lang/String;

.field private final DEFAULT_INACTIVITY_2ND_ENROLLMENT_TIMEOUT:I

.field private final DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_LOW_ILLUMINATION_TIMEOUT:I

.field private final DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_TIMEOUT:I

.field private final DEFAULT_INACTIVITY_AUTHENTICATION_TIMEOUT:I

.field private final DEFAULT_INACTIVITY_ENROLLMENT_TIMEOUT:I

.field private final FACE_DAEMON_TAG_CONTROL_TIMEOUT_FOR_LOW_ILLUMINATION:I

.field private final FAIL_LOCKOUT_TIMEOUT_MS:J

.field private final FINISH_EARLY_REJECT:I

.field private final FINISH_TIMEOUT:I

.field private final HASH_ID:I

.field private final KEY_LOCKOUT_RESET_USER:Ljava/lang/String;

.field private final MAX_ENROLLED_FACES_COUNT:I

.field private final MAX_EVENT_SKIP_CNT:I

.field private final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I

.field private final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I

.field private final MSG_ACQUIRED_EMPTY:I

.field private final MSG_BRIGHTNESS_LEVEL_UP:I

.field private final MSG_BRIGHTNESS_READY_TO_SET_MAX:I

.field private final MSG_INACTIVITY_TIMER_EXPIRED:I

.field private final MSG_PROXIMITY_SENSOR_ERROR:I

.field private final OPERATION_TYPE_AUTEHENTICATION:I

.field private final OPERATION_TYPE_ENROLLMENT:I

.field private final SYSTEM_PROPERTIES_IS_AUTHENTICATION:Ljava/lang/String;

.field private final VOICE_ASSISTANT_2ND_INACTIVITY_ENROLLMENT_TIMEOUT:I

.field private final VOICE_ASSISTANT_INACTIVITY_ENROLLMENT_TIMEOUT:I

.field private final WAKE_LOCK_TIMEOUT_EXTRA:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDaemonIsCancelling:Z

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mGetFaceTagResult:[B

.field mHandlerBg:Landroid/os/Handler;

.field mHandlerMain:Landroid/os/Handler;

.field private mIsAuthenticateResult:Z

.field private mIsCheckedTooDark:Z

.field private mIsEnrollPausing:Z

.field private mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsOperationStarted:Z

.field private mIsReadyToSetMaxBrightness:Z

.field private mIsScreenAutoBrightnessOn:Z

.field private mIsSetBrightness:Z

.field private mIsSetBrightnessDB:Z

.field private mLastRotation:I

.field private final mLockoutFailedAttempts:Landroid/util/SparseIntArray;

.field private final mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

.field private final mLockoutReceiver:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;

.field private mOperationType:I

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrevAcquiredInfo:I

.field private mPrevAcquiredVendorInfo:I

.field private mProximitySensorMgr:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

.field private final mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;

.field private final mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

.field private mScreenFlashBrightnessLevelMax:I

.field private mScreenFlashBrightnessLevelUp:I

.field private mScreenFlashBrightnessStartValue:I

.field private mSecurityLevel:I

.field private mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

.field private mShouldRemoveRegisteredFaceOnCancelling:Z

.field private mSkipAcquiredEventCount:I

.field private mStartOperationTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/server/biometrics/face/FaceService;
    .param p2, "context"    # Landroid/content/Context;

    .line 2716
    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2592
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->FACE_DAEMON_TAG_CONTROL_TIMEOUT_FOR_LOW_ILLUMINATION:I

    .line 2593
    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MSG_INACTIVITY_TIMER_EXPIRED:I

    .line 2594
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MSG_BRIGHTNESS_LEVEL_UP:I

    .line 2595
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MSG_ACQUIRED_EMPTY:I

    .line 2596
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MSG_PROXIMITY_SENSOR_ERROR:I

    .line 2597
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MSG_BRIGHTNESS_READY_TO_SET_MAX:I

    .line 2598
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MAX_ENROLLED_FACES_COUNT:I

    .line 2599
    const/16 v4, 0x7530

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DEFAULT_INACTIVITY_ENROLLMENT_TIMEOUT:I

    .line 2600
    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DEFAULT_INACTIVITY_2ND_ENROLLMENT_TIMEOUT:I

    .line 2601
    const v4, 0xea60

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->VOICE_ASSISTANT_INACTIVITY_ENROLLMENT_TIMEOUT:I

    .line 2602
    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->VOICE_ASSISTANT_2ND_INACTIVITY_ENROLLMENT_TIMEOUT:I

    .line 2603
    const/16 v4, 0x1770

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DEFAULT_INACTIVITY_AUTHENTICATION_TIMEOUT:I

    .line 2604
    const/16 v4, 0xfa0

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_TIMEOUT:I

    .line 2605
    const/16 v4, 0x1388

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DEFAULT_INACTIVITY_AUTHENTICATION_SHORT_LOW_ILLUMINATION_TIMEOUT:I

    .line 2606
    const-string/jumbo v4, "service.bioface.authenticating"

    iput-object v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->SYSTEM_PROPERTIES_IS_AUTHENTICATION:Ljava/lang/String;

    .line 2607
    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->OPERATION_TYPE_ENROLLMENT:I

    .line 2608
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->OPERATION_TYPE_AUTEHENTICATION:I

    .line 2609
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->WAKE_LOCK_TIMEOUT_EXTRA:I

    .line 2610
    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I

    .line 2611
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I

    .line 2612
    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->FAIL_LOCKOUT_TIMEOUT_MS:J

    .line 2613
    const-string/jumbo v1, "lockout_reset_user"

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->KEY_LOCKOUT_RESET_USER:Ljava/lang/String;

    .line 2614
    const-string v1, "face_faster_recognition"

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DB_FACE_FASTER_RECOGNITION:Ljava/lang/String;

    .line 2615
    const-string v1, "face_open_eyes"

    iput-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->DB_FACE_OPEN_EYES:Ljava/lang/String;

    .line 2617
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->FINISH_EARLY_REJECT:I

    .line 2618
    const/16 v3, -0x3e8

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->FINISH_TIMEOUT:I

    .line 2620
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->HASH_ID:I

    .line 2624
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2632
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->BRIGHTNESS_LEVEL_TIME:I

    .line 2633
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->BRIGHTNESS_LEVEL_MAX_TIME:I

    .line 2634
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    .line 2635
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    .line 2636
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    .line 2637
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsScreenAutoBrightnessOn:Z

    .line 2638
    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightnessDB:Z

    .line 2639
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightness:Z

    .line 2640
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z

    .line 2641
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsCheckedTooDark:Z

    .line 2643
    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSecurityLevel:I

    .line 2648
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Lcom/android/server/biometrics/face/FaceService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutReceiver:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;

    .line 2649
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;

    invoke-direct {v0, p0, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Lcom/android/server/biometrics/face/FaceService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;

    .line 2651
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    invoke-direct {v0, p0, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Lcom/android/server/biometrics/face/FaceService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    .line 2657
    iput-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    .line 2659
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z

    .line 2660
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mStartOperationTime:J

    .line 2661
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    .line 2662
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDaemonIsCancelling:Z

    .line 2663
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    .line 2665
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->MAX_EVENT_SKIP_CNT:I

    .line 2666
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredInfo:I

    .line 2667
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 2668
    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I

    .line 2670
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsAuthenticateResult:Z

    .line 2671
    iput-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z

    .line 2675
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;

    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->get()Lcom/android/server/biometrics/Utils$BioFaceMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioFaceMainThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$1;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    .line 2695
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;

    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->get()Lcom/android/server/biometrics/Utils$BioBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/Utils$BioBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$2;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    .line 2718
    iput-object p2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    .line 2719
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 2720
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2721
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v4, "GFaceService"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2723
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2724
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutReceiver:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$LockoutReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/biometrics/face/FaceService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {p1}, Lcom/android/server/biometrics/face/FaceService;->getLockoutBroadcastPermission()Ljava/lang/String;

    move-result-object v5

    .line 2724
    invoke-virtual {v0, v1, v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2726
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    .line 2727
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    .line 2729
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$3;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/content/Context;ILcom/android/server/biometrics/face/FaceService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 2745
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 2746
    new-instance v0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    goto :goto_140

    .line 2748
    :cond_13e
    iput-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    .line 2751
    :goto_140
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->registerBroadcastEvents()V

    .line 2752
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 2474
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onAcquired(II)V

    return-void
.end method

.method static synthetic access$10502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Z

    .line 2474
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Z

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->resetFailedAttempts(Z)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isNeededSetBrightness()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->resetOperationTimeout(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isCurrentClientKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startOperationTimeout(I)V

    return-void
.end method

.method static synthetic access$13400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ResetFailedAttemptsForUserRunnable;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 2474
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onEnrollResult(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 2474
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onError(II)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 2474
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->onRemoved(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->handleFailedAttempt()V

    return-void
.end method

.method static synthetic access$14000(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDaemonIsCancelling:Z

    return v0
.end method

.method static synthetic access$14100(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    return v0
.end method

.method static synthetic access$14102(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Z

    .line 2474
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    return p1
.end method

.method static synthetic access$14400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredInfo:I

    return v0
.end method

.method static synthetic access$14402(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredInfo:I

    return p1
.end method

.method static synthetic access$14500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredVendorInfo:I

    return v0
.end method

.method static synthetic access$14502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredVendorInfo:I

    return p1
.end method

.method static synthetic access$14602(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I

    return p1
.end method

.method static synthetic access$14604(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I

    return v0
.end method

.method static synthetic access$14700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V

    return-void
.end method

.method static synthetic access$15900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->preOnAuthenticated(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->cancelDaemon()I

    move-result v0

    return v0
.end method

.method static synthetic access$16400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;JLjava/util/ArrayList;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/ArrayList;
    .param p4, "x3"    # I

    .line 2474
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->doTemplateSyncForUser(JLjava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$17400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    return v0
.end method

.method static synthetic access$17500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z

    return v0
.end method

.method static synthetic access$17502(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Z

    .line 2474
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z

    return p1
.end method

.method static synthetic access$17600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    return v0
.end method

.method static synthetic access$17700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setBrightness(I)V

    return-void
.end method

.method static synthetic access$17802(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Z

    .line 2474
    iput-boolean p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsCheckedTooDark:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mRevokeChallengeRunnable:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$RevokeChallengeRunnable;

    return-object v0
.end method

.method static synthetic access$18300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startOperation(I)V

    return-void
.end method

.method static synthetic access$18400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$18500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getLockoutMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$18900(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->finishProcessing(I)V

    return-void
.end method

.method static synthetic access$19700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    return v0
.end method

.method static synthetic access$19800(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLastRotation:I

    return v0
.end method

.method static synthetic access$19802(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLastRotation:I

    return p1
.end method

.method static synthetic access$20000(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setRotationDaemon(I)V

    return-void
.end method

.method static synthetic access$22600(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # I

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setSecurityLevel(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    .line 2474
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->checkPermissionForSemBioFaceManager()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Z)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    .param p1, "x1"    # Z

    .line 2474
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getSecurityLevel(Z)I

    move-result v0

    return v0
.end method

.method private acquireDVFS(I)V
    .registers 6
    .param p1, "millisecond"    # I

    .line 3125
    const-string v0, "GFaceService"

    const-string v1, "acquireDVFS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "GFACE_SERVICE"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->acquireDvfs(Landroid/content/Context;ILjava/lang/String;I)V

    .line 3128
    return-void
.end method

.method private declared-synchronized cancelDaemon()I
    .registers 9

    monitor-enter p0

    .line 3042
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4b

    .line 3043
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    const/4 v1, -0x1

    .line 3044
    .local v1, "result":I
    if-nez v0, :cond_d

    .line 3045
    const/4 v2, 0x3

    monitor-exit p0

    return v2

    .line 3047
    :cond_d
    const/4 v2, 0x1

    :try_start_e
    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDaemonIsCancelling:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_4b

    .line 3049
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3050
    .local v2, "begin":J
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I

    move-result v4

    move v1, v4

    .line 3051
    const-string v4, "GFaceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancel FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_3d} :catch_3e
    .catchall {:try_start_10 .. :try_end_3d} :catchall_4b

    .line 3054
    .end local v2    # "begin":J
    goto :goto_46

    .line 3052
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    :catch_3e
    move-exception v2

    .line 3053
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3f
    const-string v3, "GFaceService"

    const-string v4, "Failed to get biometric interface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3055
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDaemonIsCancelling:Z
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4b

    .line 3056
    monitor-exit p0

    return v1

    .line 3041
    .end local v0    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .end local v1    # "result":I
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelLockoutResetForUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3206
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3207
    return-void
.end method

.method private checkPermissionForSemBioFaceManager()V
    .registers 3

    .line 3534
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "com.samsung.android.bio.face.permission.USE_FACE"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$22000(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->hasPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$22100(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3535
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    # invokes: Lcom/android/server/biometrics/face/FaceService;->checkPermission(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$22200(Lcom/android/server/biometrics/face/FaceService;Ljava/lang/String;)V

    .line 3537
    :cond_1b
    return-void
.end method

.method private doTemplateSyncForUser(JLjava/util/ArrayList;I)V
    .registers 22
    .param p1, "deviceId"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 3426
    .local p3, "enumerateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    const-string v4, "GFaceService"

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FACE_JDM_HAL:Z

    if-eqz v0, :cond_d

    .line 3427
    return-void

    .line 3430
    :cond_d
    iget-object v0, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v5, v3}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    .line 3431
    .local v5, "faceList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3434
    .local v6, "enumerateSize":I
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doTemplateSyncForUser: FW="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", HAL="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    const/4 v0, 0x1

    .line 3437
    .local v0, "isRemovedMainFaceId":Z
    if-lez v6, :cond_55

    .line 3438
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_41
    if-ge v7, v6, :cond_54

    .line 3439
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_51

    .line 3440
    const/4 v0, 0x0

    .line 3438
    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .end local v7    # "i":I
    :cond_54
    goto :goto_56

    .line 3444
    :cond_55
    const/4 v0, 0x0

    .line 3446
    :goto_56
    if-eqz v0, :cond_67

    .line 3447
    const-string v7, "Main face ID(1) was removed!!!"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    iget-object v7, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v7}, Lcom/android/server/biometrics/face/FaceService;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;->remove(II)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_67} :catch_1c5

    .line 3451
    :cond_67
    const-string/jumbo v7, "removing unknown template from fw, "

    const-string v9, "doTemplateSyncForUser"

    if-eqz v6, :cond_16c

    if-eqz v0, :cond_75

    move-object v14, v9

    move-wide/from16 v8, p1

    goto/16 :goto_16f

    .line 3460
    :cond_75
    if-lez v6, :cond_169

    .line 3461
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_78
    if-ge v10, v6, :cond_115

    .line 3462
    const/4 v11, -0x1

    .line 3463
    .local v11, "matchedIdx":I
    :try_start_7b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 3465
    .local v12, "size":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enumerate: HAL ID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_98
    if-ge v13, v12, :cond_b5

    .line 3468
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/face/Face;

    invoke-virtual {v14}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v14

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v14, v15, :cond_b2

    .line 3469
    move v11, v13

    .line 3470
    goto :goto_b5

    .line 3467
    :cond_b2
    add-int/lit8 v13, v13, 0x1

    goto :goto_98

    .line 3473
    .end local v13    # "j":I
    :cond_b5
    :goto_b5
    if-ltz v11, :cond_bf

    .line 3474
    invoke-interface {v5, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object/from16 v16, v9

    move-wide/from16 v8, p1

    goto :goto_10f

    .line 3476
    :cond_bf
    new-instance v13, Landroid/hardware/face/Face;

    iget-object v14, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 3477
    invoke-virtual {v14}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-interface {v14, v15, v3}, Lcom/android/server/biometrics/BiometricUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 3478
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_d7} :catch_1c5

    move-object/from16 v16, v9

    move-wide/from16 v8, p1

    :try_start_db
    invoke-direct {v13, v14, v15, v8, v9}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 3479
    .local v13, "face":Landroid/hardware/face/Face;
    iget-object v14, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v14}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-interface {v14, v15, v3, v13}, Lcom/android/server/biometrics/BiometricUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 3480
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "enumerate: adding unknown template, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    iget-object v14, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v14}, Lcom/android/server/biometrics/face/FaceService;->access$21700(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v14

    new-instance v15, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;

    invoke-direct {v15, v1, v13, v3}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/hardware/face/Face;I)V

    invoke-virtual {v14, v15}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 3461
    .end local v11    # "matchedIdx":I
    .end local v12    # "size":I
    .end local v13    # "face":Landroid/hardware/face/Face;
    :goto_10f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v16

    goto/16 :goto_78

    :cond_115
    move-object/from16 v16, v9

    move-wide/from16 v8, p1

    .line 3487
    .end local v10    # "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/face/Face;

    .line 3488
    .local v11, "face":Landroid/hardware/face/Face;
    iget-object v12, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v12}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v14

    invoke-interface {v12, v13, v3, v14}, Lcom/android/server/biometrics/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 3489
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v12

    move-object/from16 v14, v16

    const/4 v13, -0x1

    invoke-virtual {v12, v14, v13}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    .line 3492
    iget-object v12, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v12}, Lcom/android/server/biometrics/face/FaceService;->access$21800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v12

    new-instance v13, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;

    invoke-direct {v13, v1, v3, v11}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$lUc458WTScCT_53xCEF75wpzCzU;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;ILandroid/hardware/face/Face;)V

    invoke-virtual {v12, v13}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 3499
    move-object/from16 v16, v14

    .end local v11    # "face":Landroid/hardware/face/Face;
    goto :goto_11d

    .line 3460
    :cond_169
    move-wide/from16 v8, p1

    goto :goto_1c2

    .line 3451
    :cond_16c
    move-object v14, v9

    move-wide/from16 v8, p1

    .line 3452
    :goto_16f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1c2

    .line 3453
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_179
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ac

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/face/Face;

    .line 3454
    .restart local v11    # "face":Landroid/hardware/face/Face;
    iget-object v12, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v12}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v15

    invoke-interface {v12, v13, v3, v15}, Lcom/android/server/biometrics/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 3455
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    nop

    .end local v11    # "face":Landroid/hardware/face/Face;
    goto :goto_179

    .line 3457
    :cond_1ac
    iget-object v7, v1, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v7}, Lcom/android/server/biometrics/face/FaceService;->access$21600(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v7

    new-instance v10, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$iTXBE0Z8dlEPLwqCn8_aQYNoRrQ;

    invoke-direct {v10, v1, v3}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$iTXBE0Z8dlEPLwqCn8_aQYNoRrQ;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    invoke-virtual {v7, v10}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 3458
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v7

    const/4 v10, -0x1

    invoke-virtual {v7, v14, v10}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_1c2} :catch_1c3

    .line 3503
    .end local v0    # "isRemovedMainFaceId":Z
    :cond_1c2
    :goto_1c2
    goto :goto_1e0

    .line 3501
    :catch_1c3
    move-exception v0

    goto :goto_1c8

    :catch_1c5
    move-exception v0

    move-wide/from16 v8, p1

    .line 3502
    .local v0, "e":Ljava/lang/Exception;
    :goto_1c8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enumerate: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e0
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3278
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " current User : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$20700(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSecurityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceDump(Ljava/io/PrintWriter;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 3283
    goto :goto_53

    .line 3281
    :catch_38
    move-exception v0

    .line 3282
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

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_53
    return-void
.end method

.method private finishProcessing(I)V
    .registers 13
    .param p1, "faceId"    # I

    .line 3302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mStartOperationTime:J

    sub-long/2addr v0, v2

    .line 3303
    .local v0, "timeForResult":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 3304
    .local v2, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    const/4 v3, 0x1

    if-lt p1, v3, :cond_2f

    .line 3305
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v3, :cond_1d

    .line 3306
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceOnAuthenticatedSuccess(Ljava/lang/String;)V

    .line 3308
    :cond_1d
    if-eqz v2, :cond_2e

    .line 3309
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v5

    const/4 v9, 0x0

    const-string v6, "M"

    move-wide v7, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 3311
    :cond_2e
    return-void

    .line 3313
    :cond_2f
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsAuthenticateResult:Z

    const/4 v10, 0x0

    if-nez v4, :cond_79

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3c

    goto :goto_79

    .line 3325
    :cond_3c
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v4, :cond_47

    .line 3326
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceOnTimeout(Ljava/lang/String;)V

    .line 3328
    :cond_47
    iget v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    if-ne v4, v3, :cond_5d

    iget-boolean v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsCheckedTooDark:Z

    if-eqz v3, :cond_5d

    .line 3329
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService;->getHalDeviceId()J

    move-result-wide v4

    const/16 v6, 0x8

    const/16 v7, 0x2712

    # invokes: Lcom/android/server/biometrics/face/FaceService;->handleError(JII)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/biometrics/face/FaceService;->access$20900(Lcom/android/server/biometrics/face/FaceService;JII)V

    goto :goto_67

    .line 3331
    :cond_5d
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v3}, Lcom/android/server/biometrics/face/FaceService;->getHalDeviceId()J

    move-result-wide v4

    const/4 v6, 0x3

    # invokes: Lcom/android/server/biometrics/face/FaceService;->handleError(JII)V
    invoke-static {v3, v4, v5, v6, v10}, Lcom/android/server/biometrics/face/FaceService;->access$21000(Lcom/android/server/biometrics/face/FaceService;JII)V

    .line 3333
    :goto_67
    if-eqz v2, :cond_af

    .line 3334
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v5

    const/4 v9, 0x0

    const-string v6, "T"

    move-wide v7, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    goto :goto_af

    .line 3314
    :cond_79
    :goto_79
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v3, :cond_84

    .line 3315
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceOnAuthenticatedFailure(Ljava/lang/String;)V

    .line 3317
    :cond_84
    if-eqz v2, :cond_95

    .line 3318
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v5

    const/4 v9, 0x0

    const-string v6, "N"

    move-wide v7, v0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 3320
    :cond_95
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperation()V

    .line 3321
    new-instance v3, Landroid/hardware/face/Face;

    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/face/FaceService;->getHalDeviceId()J

    move-result-wide v4

    const-string v6, ""

    invoke-direct {v3, v6, v10, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 3322
    .local v3, "face":Landroid/hardware/face/Face;
    iget-object v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/biometrics/BiometricServiceBase;->handleAuthenticated(ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    invoke-static {v4, v10, v3, v5}, Lcom/android/server/biometrics/face/FaceService;->access$20801(Lcom/android/server/biometrics/face/FaceService;ZLandroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    .line 3323
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->cancelDaemon()I

    .line 3324
    .end local v3    # "face":Landroid/hardware/face/Face;
    nop

    .line 3337
    :cond_af
    :goto_af
    return-void
.end method

.method private getCurrentClientOwnerString()Ljava/lang/String;
    .registers 4

    .line 3522
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$21900(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 3523
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_d

    .line 3524
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3527
    :cond_d
    const-string v1, "GFaceService"

    const-string/jumbo v2, "getCurrentClientOwnerString was called before setting at current client !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFaceTag(I)[B
    .registers 10
    .param p1, "type"    # I

    .line 3098
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 3099
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    const-string v1, "GFaceService"

    const/4 v2, 0x0

    if-nez v0, :cond_14

    .line 3100
    const-string/jumbo v3, "setFaceTag(): no face HAL!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    return-object v2

    .line 3103
    :cond_14
    iput-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mGetFaceTagResult:[B

    .line 3105
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3106
    .local v3, "begin":J
    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v5}, Lcom/android/server/biometrics/face/FaceService;->access$9600(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v5

    check-cast v5, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    new-instance v6, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;

    invoke-direct {v6, p0, p1}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V

    invoke-interface {v5, p1, v6}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetFaceTag(ILvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;)V

    .line 3116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sehGetFaceTag FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mGetFaceTagResult:[B
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4c} :catch_4d

    return-object v1

    .line 3118
    .end local v3    # "begin":J
    :catch_4d
    move-exception v3

    .line 3119
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFaceTag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method private getLockoutMode()I
    .registers 10

    .line 3187
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3188
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3189
    .local v1, "failedAttempts":I
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    .line 3190
    .local v3, "previousAttempTime":J
    const/16 v5, 0x14

    if-lt v1, v5, :cond_19

    .line 3191
    const/4 v2, 0x2

    return v2

    .line 3192
    :cond_19
    const/4 v5, 0x5

    if-lt v1, v5, :cond_29

    const-wide/16 v5, 0x7530

    add-long/2addr v5, v3

    .line 3193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_29

    .line 3194
    const/4 v2, 0x1

    return v2

    .line 3196
    :cond_29
    return v2
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "userId"    # I

    .line 3210
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 3211
    invoke-virtual {v2}, Lcom/android/server/biometrics/face/FaceService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 3210
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getRotationValue(I)I
    .registers 3
    .param p1, "rotation"    # I

    .line 3411
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    .line 3421
    const/16 v0, 0x10e

    return v0

    .line 3419
    :cond_c
    const/16 v0, 0xb4

    return v0

    .line 3417
    :cond_f
    const/16 v0, 0x5a

    return v0

    .line 3415
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private getSecurityLevel(Z)I
    .registers 5
    .param p1, "isKeyguard"    # Z

    .line 3220
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSecurityLevel:I

    .line 3222
    .local v0, "convertedLevel":I
    if-nez p1, :cond_a

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSecurityLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 3223
    const/4 v0, 0x2

    .line 3225
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSecurityLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    return v0
.end method

.method private getSecurityMode()I
    .registers 10

    .line 3230
    const/4 v0, 0x2

    .line 3231
    .local v0, "fasterRecognitionMode":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "face_open_eyes"

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3232
    .local v1, "checkOpenEyesMode":I
    const/4 v2, 0x0

    .line 3234
    .local v2, "mode":I
    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v5}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v5

    check-cast v5, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 3235
    .local v5, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mServiceExtImpl:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    invoke-static {}, Lcom/android/server/biometrics/face/FaceService;->access$900()Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    move-result-object v6

    invoke-direct {v6}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isCurrentClientKeyguard()Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_2e

    if-eqz v5, :cond_3c

    .line 3236
    # getter for: Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->mPrivilegedAttr:I
    invoke-static {v5}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->access$1300(Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;)I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_3c

    .line 3237
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "face_faster_recognition"

    invoke-static {v6, v8, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3240
    :cond_3c
    const/4 v4, 0x1

    if-ne v1, v4, :cond_52

    .line 3241
    if-ne v0, v7, :cond_44

    .line 3242
    const/16 v2, 0xa

    goto :goto_75

    .line 3243
    :cond_44
    if-ne v0, v4, :cond_49

    .line 3244
    const/16 v2, 0x9

    goto :goto_75

    .line 3245
    :cond_49
    if-nez v0, :cond_4e

    .line 3246
    const/16 v2, 0x8

    goto :goto_75

    .line 3247
    :cond_4e
    if-ne v0, v3, :cond_75

    .line 3248
    const/4 v2, 0x7

    goto :goto_75

    .line 3250
    :cond_52
    if-nez v1, :cond_64

    .line 3251
    if-ne v0, v7, :cond_58

    .line 3252
    const/4 v2, 0x6

    goto :goto_75

    .line 3253
    :cond_58
    if-ne v0, v4, :cond_5c

    .line 3254
    const/4 v2, 0x5

    goto :goto_75

    .line 3255
    :cond_5c
    if-nez v0, :cond_60

    .line 3256
    const/4 v2, 0x4

    goto :goto_75

    .line 3257
    :cond_60
    if-ne v0, v3, :cond_75

    .line 3258
    const/4 v2, 0x3

    goto :goto_75

    .line 3260
    :cond_64
    if-ne v1, v3, :cond_75

    .line 3261
    if-ne v0, v7, :cond_6a

    .line 3262
    const/4 v2, 0x2

    goto :goto_75

    .line 3263
    :cond_6a
    if-ne v0, v4, :cond_6e

    .line 3264
    const/4 v2, 0x1

    goto :goto_75

    .line 3265
    :cond_6e
    if-nez v0, :cond_72

    .line 3266
    const/4 v2, 0x0

    goto :goto_75

    .line 3267
    :cond_72
    if-ne v0, v3, :cond_75

    .line 3268
    const/4 v2, -0x1

    .line 3271
    :cond_75
    :goto_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", opened eyes detect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", faster recognition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GFaceService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    return v2
.end method

.method private handleFailedAttempt()V
    .registers 6

    .line 3171
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3172
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3173
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3174
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 3175
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getLockoutMode()I

    move-result v2

    if-eqz v2, :cond_2f

    .line 3176
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->scheduleLockoutResetForUser(I)V

    .line 3177
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v2, :cond_2f

    .line 3178
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getCurrentClientOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceLockout(Ljava/lang/String;)V

    .line 3182
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFailedAttempt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GFaceService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    return-void
.end method

.method private initBrightness(I)V
    .registers 7
    .param p1, "currentBrightness"    # I

    .line 2843
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_69

    .line 2844
    const-string v0, ""

    const-string/jumbo v1, "screenflash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2845
    .local v1, "pos":I
    if-ltz v1, :cond_38

    .line 2846
    const-string/jumbo v2, "screenflash:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2847
    .local v0, "cnt":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    .line 2848
    add-int/lit8 v3, v2, -0x1e

    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    .line 2849
    add-int/lit8 v2, v2, 0x1e

    iput v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    .line 2850
    .end local v0    # "cnt":Ljava/lang/String;
    goto :goto_69

    .line 2851
    :cond_38
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/high16 v2, 0x42580000    # 54.0f

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->convertToBacklight(F)I

    move-result v0

    .line 2852
    .local v0, "brightnessByNitsStart":I
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/high16 v3, 0x429a0000    # 77.0f

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->convertToBacklight(F)I

    move-result v2

    .line 2853
    .local v2, "brightnessByNitsUp":I
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->convertToBacklight(F)I

    move-result v3

    .line 2854
    .local v3, "brightnessByNitsMax":I
    if-lez v0, :cond_5d

    if-lez v2, :cond_5d

    if-lez v3, :cond_5d

    .line 2855
    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    .line 2856
    iput v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    .line 2857
    iput v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    goto :goto_69

    .line 2859
    :cond_5d
    const/16 v4, 0x46

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    .line 2860
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    .line 2861
    const/16 v4, 0x82

    iput v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    .line 2865
    .end local v0    # "brightnessByNitsStart":I
    .end local v1    # "pos":I
    .end local v2    # "brightnessByNitsUp":I
    .end local v3    # "brightnessByNitsMax":I
    :cond_69
    :goto_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initBrightness : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", auto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsScreenAutoBrightnessOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    return-void
.end method

.method private isCurrentClientKeyguard()Z
    .registers 5

    .line 3507
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 3508
    .local v0, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 3509
    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->isKeyguard()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3510
    const/4 v1, 0x1

    return v1

    .line 3512
    :cond_13
    return v1

    .line 3516
    :cond_14
    const-string v2, "GFaceService"

    const-string/jumbo v3, "isCurrentClientKeyguard was called before setting at current client !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    return v1
.end method

.method private isNeededSetBrightness()Z
    .registers 4

    .line 2839
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    iget v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private onAcquired(II)V
    .registers 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 3355
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v0, :cond_7

    .line 3356
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceCountHelpEvent(II)V

    .line 3358
    :cond_7
    return-void
.end method

.method private onEnrollResult(Ljava/lang/String;II)V
    .registers 11
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "faceId"    # I
    .param p3, "remaining"    # I

    .line 3380
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z

    if-eqz v0, :cond_b

    .line 3381
    const/16 v0, 0x1e

    if-ne p3, v0, :cond_b

    .line 3382
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->stopOperationTimeout()V

    .line 3385
    :cond_b
    if-nez p3, :cond_3f

    .line 3386
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$21200(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v0

    const-string v1, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-direct {p0, v1, p2, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 3387
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v0, :cond_1f

    .line 3388
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceOnEnrollmentSuccess(Ljava/lang/String;)V

    .line 3390
    :cond_1f
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 3391
    .local v0, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    if-eqz v0, :cond_3f

    .line 3392
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v2

    .line 3393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mStartOperationTime:J

    sub-long v4, v3, v5

    const/4 v6, 0x0

    .line 3392
    const-string v3, "S"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 3396
    .end local v0    # "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    :cond_3f
    return-void
.end method

.method private onError(II)V
    .registers 11
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 3340
    const/16 v0, 0x8

    const/4 v1, 0x5

    if-ne p1, v1, :cond_8

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2c

    .line 3341
    :cond_8
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService;->getFaceClientExtImpl()Lcom/android/server/biometrics/SemClientExtension;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;

    .line 3342
    .local v1, "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    if-eqz v1, :cond_2c

    .line 3343
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;->getHashID()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mStartOperationTime:J

    sub-long v5, v4, v6

    .line 3344
    if-ne p1, v0, :cond_26

    move v7, p2

    goto :goto_27

    :cond_26
    move v7, p1

    .line 3343
    :goto_27
    const-string v4, "E"

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceStop(ILjava/lang/String;JI)V

    .line 3347
    .end local v1    # "extImpl":Lcom/android/server/biometrics/face/FaceService$SemFaceClientExtImpl;
    :cond_2c
    if-ne p1, v0, :cond_43

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_43

    .line 3349
    const-string v0, "GFaceService"

    const-string/jumbo v1, "onError : TEMPLATE_CORRUPTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    # invokes: Lcom/android/server/biometrics/face/FaceService;->doTemplateCleanupForUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/biometrics/face/FaceService;->access$21100(Lcom/android/server/biometrics/face/FaceService;I)V

    .line 3352
    :cond_43
    return-void
.end method

.method private onRemoved(Ljava/lang/String;I)V
    .registers 6
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "faceId"    # I

    .line 3399
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$21300(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_25

    .line 3400
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$21400(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-direct {p0, v2, p2, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_30

    .line 3402
    :cond_25
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$21500(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v0

    const-string v2, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 3404
    :goto_30
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    if-eqz v0, :cond_37

    .line 3405
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/SemAnalyticsManager;->faceOnRemoved(Ljava/lang/String;)V

    .line 3407
    :cond_37
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceRemoved(Ljava/lang/String;I)V

    .line 3408
    return-void
.end method

.method private preOnAuthenticated(I)I
    .registers 5
    .param p1, "faceId"    # I

    .line 3287
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    .line 3288
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->finishProcessing(I)V

    .line 3289
    return v0

    .line 3291
    :cond_7
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_f

    .line 3292
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->finishProcessing(I)V

    .line 3293
    return v2

    .line 3295
    :cond_f
    if-nez p1, :cond_13

    .line 3296
    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsAuthenticateResult:Z

    .line 3298
    :cond_13
    return v2
.end method

.method private registerBroadcastEvents()V
    .registers 4

    .line 3541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3542
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3543
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$5;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3558
    return-void
.end method

.method private releaseDVFS()V
    .registers 4

    .line 3131
    const-string v0, "GFaceService"

    const-string/jumbo v1, "releaseDVFS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->getInstance()Lcom/android/server/biometrics/SemBiometricBoostingManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/SemBiometricBoostingManager;->release(Landroid/content/Context;I)V

    .line 3133
    return-void
.end method

.method private declared-synchronized releaseWakeLock(Z)V
    .registers 5
    .param p1, "isNeedUserActivity"    # Z

    monitor-enter p0

    .line 3148
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3149
    const-string v0, "GFaceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    if-eqz p1, :cond_29

    .line 3151
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->userActivity()V

    .line 3153
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    :cond_29
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 3155
    :cond_2e
    monitor-exit p0

    return-void

    .line 3147
    .end local p1    # "isNeedUserActivity":Z
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resetFailedAttempts(Z)V
    .registers 6
    .param p1, "isClear"    # Z

    .line 3158
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3160
    .local v0, "currentUser":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetFailedAttempts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GFaceService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    if-eqz p1, :cond_2b

    .line 3163
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3165
    :cond_2b
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLockoutPreviousAttemptTime:Landroid/util/SparseLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 3166
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->cancelLockoutResetForUser(I)V

    .line 3167
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->notifyLockoutResetMonitors()V
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$20600(Lcom/android/server/biometrics/face/FaceService;)V

    .line 3168
    return-void
.end method

.method private resetOperationTimeout(I)Z
    .registers 4
    .param p1, "timeout"    # I

    .line 2943
    const-string v0, "GFaceService"

    const-string/jumbo v1, "resetOperationTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    if-gtz p1, :cond_c

    .line 2945
    const/4 v0, 0x0

    return v0

    .line 2947
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startInactivityTimer(I)V

    .line 2948
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->releaseDVFS()V

    .line 2949
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->acquireDVFS(I)V

    .line 2950
    const/4 v0, 0x1

    return v0
.end method

.method private restoreBrightness()V
    .registers 4

    .line 2913
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightness:Z

    if-nez v0, :cond_5

    .line 2914
    return-void

    .line 2916
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightness:Z

    .line 2918
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2919
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2921
    iget-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsScreenAutoBrightnessOn:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1f

    .line 2922
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2, v2}, Landroid/os/PowerManager;->semSetAutoBrightnessLimit(II)V

    goto :goto_24

    .line 2924
    :cond_1f
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IZ)V

    .line 2926
    :goto_24
    const-string v0, "GFaceService"

    const-string/jumbo v1, "restoreBrightness"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3200
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    .line 3202
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3200
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 3203
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;II)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "faceId"    # I
    .param p3, "userId"    # I

    .line 3361
    const-string v0, "GFaceService"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3362
    .local v1, "intent":Landroid/content/Intent;
    if-lez p2, :cond_16

    .line 3363
    const-string v2, "faceIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3364
    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3367
    :cond_16
    const/high16 v2, 0x1000000

    :try_start_18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3368
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] is sent with faceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_41} :catch_42

    .line 3376
    goto :goto_58

    .line 3374
    :catch_42
    move-exception v2

    .line 3375
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_58
    return-void
.end method

.method private setBrightness(I)V
    .registers 5
    .param p1, "value"    # I

    .line 2904
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsScreenAutoBrightnessOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 2905
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/PowerManager;->setAutoBrightnessLimit(IIZ)V

    goto :goto_11

    .line 2907
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IZ)V

    .line 2909
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightness : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    return-void
.end method

.method private setFaceTag(I[B)I
    .registers 12
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .line 3075
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 3076
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    const/4 v1, 0x0

    const-string v2, "GFaceService"

    if-nez v0, :cond_14

    .line 3077
    const-string/jumbo v3, "setFaceTag(): no face HAL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    return v1

    .line 3081
    :cond_14
    :try_start_14
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3082
    .local v3, "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p2, :cond_2f

    array-length v4, p2

    if-lez v4, :cond_2f

    .line 3083
    array-length v4, p2

    move v5, v1

    :goto_20
    if-ge v5, v4, :cond_2f

    aget-byte v6, p2, v5

    .line 3084
    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3083
    nop

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 3087
    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3088
    .local v4, "begin":J
    invoke-interface {v0, p1, v3}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetFaceTag(ILjava/util/ArrayList;)I

    .line 3089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sehSetFaceTag FINISH ("

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
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_56} :catch_58

    .line 3090
    const/4 v1, 0x1

    return v1

    .line 3091
    .end local v3    # "inVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "begin":J
    :catch_58
    move-exception v3

    .line 3092
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFaceTag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    .end local v3    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private setRotationDaemon(I)V
    .registers 10
    .param p1, "rotation"    # I

    .line 3060
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 3061
    .local v0, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    const-string v1, "GFaceService"

    if-nez v0, :cond_13

    .line 3062
    const-string/jumbo v2, "setRotationDaemon(): no face HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-void

    .line 3066
    :cond_13
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3067
    .local v2, "begin":J
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->getRotationValue(I)I

    move-result v4

    invoke-interface {v0, v4}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehSetRotation(I)I

    move-result v4

    .line 3068
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetRotation FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_41} :catch_43

    .line 3071
    nop

    .end local v2    # "begin":J
    .end local v4    # "result":I
    goto :goto_5d

    .line 3069
    :catch_43
    move-exception v2

    .line 3070
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRotationDaemon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5d
    return-void
.end method

.method private setSecurityLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 3216
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSecurityLevel:I

    .line 3217
    return-void
.end method

.method private declared-synchronized setWakeLock(I)V
    .registers 5
    .param p1, "timeout"    # I

    monitor-enter p0

    .line 3141
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3142
    const-string v0, "GFaceService"

    const-string/jumbo v1, "setWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 3145
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    :cond_23
    monitor-exit p0

    return-void

    .line 3140
    .end local p1    # "timeout":I
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startBrightness()V
    .registers 8

    .line 2870
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    float-to-int v0, v0

    .line 2872
    .local v0, "currentBrightness":I
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2873
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2874
    iput-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsReadyToSetMaxBrightness:Z

    .line 2877
    const/4 v2, 0x1

    :try_start_17
    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_27

    move v1, v2

    :cond_27
    iput-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsScreenAutoBrightnessOn:Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_29} :catch_2a

    .line 2881
    goto :goto_33

    .line 2879
    :catch_2a
    move-exception v1

    .line 2880
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "GFaceService"

    const-string/jumbo v6, "startBrightness : "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2883
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_33
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->initBrightness(I)V

    .line 2885
    iget-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsScreenAutoBrightnessOn:Z

    const-wide/16 v5, 0x7d0

    if-eqz v1, :cond_47

    .line 2886
    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setBrightness(I)V

    .line 2887
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_63

    .line 2889
    :cond_47
    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelUp:I

    if-ge v0, v1, :cond_58

    .line 2890
    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessStartValue:I

    if-ge v0, v1, :cond_52

    .line 2891
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setBrightness(I)V

    .line 2893
    :cond_52
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_63

    .line 2894
    :cond_58
    iget v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mScreenFlashBrightnessLevelMax:I

    if-ge v0, v1, :cond_66

    .line 2895
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerBg:Landroid/os/Handler;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2900
    :goto_63
    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightness:Z

    .line 2901
    return-void

    .line 2897
    :cond_66
    return-void
.end method

.method private startInactivityTimer(I)V
    .registers 6
    .param p1, "timeout"    # I

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startInactivityTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2835
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2836
    return-void
.end method

.method private declared-synchronized startOperation(I)V
    .registers 8
    .param p1, "type"    # I

    monitor-enter p0

    .line 2954
    :try_start_1
    const-string v0, "GFaceService"

    const-string/jumbo v1, "startOperation S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    const/16 v0, 0x1770

    .line 2957
    .local v0, "timeout":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z

    .line 2958
    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    .line 2959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mStartOperationTime:J

    .line 2961
    const/4 v2, 0x0

    if-ne p1, v1, :cond_42

    .line 2962
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    const v1, 0xea60

    goto :goto_27

    :cond_25
    const/16 v1, 0x7530

    :goto_27
    move v0, v1

    .line 2963
    const-string v1, "GFaceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll timeout set as : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startInactivityTimer(I)V

    goto :goto_80

    .line 2965
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    :cond_42
    const/4 v3, 0x2

    if-ne p1, v3, :cond_80

    .line 2966
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isNeededSetBrightness()Z

    move-result v3

    if-eqz v3, :cond_4e

    const/16 v3, 0x1388

    goto :goto_50

    .line 2967
    :cond_4e
    const/16 v3, 0xfa0

    :goto_50
    move v0, v3

    .line 2968
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startInactivityTimer(I)V

    .line 2969
    iget-object v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "face_brighten_screen"

    iget-object v5, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/biometrics/face/FaceService;->access$20300(Lcom/android/server/biometrics/face/FaceService;)I

    move-result v5

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_6a

    move v3, v1

    goto :goto_6b

    :cond_6a
    move v3, v2

    :goto_6b
    iput-boolean v3, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightnessDB:Z

    .line 2970
    if-eqz v3, :cond_72

    .line 2971
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->startBrightness()V

    .line 2973
    :cond_72
    new-array v3, v1, [B

    .line 2974
    .local v3, "value":[B
    iget-boolean v4, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightnessDB:Z

    if-eqz v4, :cond_7a

    move v4, v1

    goto :goto_7b

    :cond_7a
    move v4, v2

    :goto_7b
    aput-byte v4, v3, v2

    .line 2975
    invoke-direct {p0, v1, v3}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setFaceTag(I[B)I

    .line 2977
    .end local v3    # "value":[B
    :cond_80
    :goto_80
    invoke-direct {p0, v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->acquireDVFS(I)V

    .line 2978
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isCurrentClientKeyguard()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 2979
    add-int/lit16 v1, v0, 0xbb8

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setWakeLock(I)V

    .line 2982
    :cond_8e
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mLastRotation:I

    .line 2983
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->setRotationDaemon(I)V

    .line 2985
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredInfo:I

    .line 2986
    iput v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPrevAcquiredVendorInfo:I

    .line 2987
    iput v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSkipAcquiredEventCount:I

    .line 2988
    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsCheckedTooDark:Z

    .line 2989
    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsAuthenticateResult:Z

    .line 2990
    iput-boolean v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mShouldRemoveRegisteredFaceOnCancelling:Z

    .line 2992
    const-string v1, "GFaceService"

    const-string/jumbo v2, "startOperation E"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v1}, Lcom/android/server/biometrics/face/FaceService;->access$20400(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$TPwVZURr7Vvs3mNemAfC4tNJ8WM;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$TPwVZURr7Vvs3mNemAfC4tNJ8WM;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z
    :try_end_c0
    .catchall {:try_start_1 .. :try_end_c0} :catchall_c2

    .line 3003
    monitor-exit p0

    return-void

    .line 2953
    .end local v0    # "timeout":I
    .end local p1    # "type":I
    :catchall_c2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startOperationTimeout(I)V
    .registers 6
    .param p1, "timeout"    # I

    .line 2930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startOperationTimeout : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2932
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2933
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->acquireDVFS(I)V

    .line 2934
    return-void
.end method

.method private declared-synchronized stopOperation()V
    .registers 5

    monitor-enter p0

    .line 3006
    :try_start_1
    const-string v0, "GFaceService"

    const-string/jumbo v1, "stopOperation S"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z

    if-nez v0, :cond_17

    .line 3009
    const-string v0, "GFaceService"

    const-string/jumbo v1, "stopOperation E : skip"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_5d

    .line 3010
    monitor-exit p0

    return-void

    .line 3013
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;
    :cond_17
    :try_start_17
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_21

    .line 3014
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->releaseWakeLock(Z)V

    goto :goto_36

    .line 3015
    :cond_21
    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_36

    .line 3016
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->isCurrentClientKeyguard()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3017
    invoke-direct {p0, v1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->releaseWakeLock(Z)V

    .line 3019
    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsSetBrightnessDB:Z

    if-eqz v0, :cond_36

    .line 3020
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->restoreBrightness()V

    .line 3023
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->releaseDVFS()V

    .line 3024
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3026
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOperationType:I

    .line 3027
    iput-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsOperationStarted:Z

    .line 3028
    iput-boolean v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollPausing:Z

    .line 3030
    const-string v0, "GFaceService"

    const-string/jumbo v1, "stopOperation E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$20500(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$H;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$CVbt4IjszUf77A1wDdOD4wdpEOI;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$CVbt4IjszUf77A1wDdOD4wdpEOI;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_5d

    .line 3039
    monitor-exit p0

    return-void

    .line 3005
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopOperationTimeout()V
    .registers 3

    .line 2937
    const-string v0, "GFaceService"

    const-string/jumbo v1, "stopOperationTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mHandlerMain:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2939
    invoke-direct {p0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->releaseDVFS()V

    .line 2940
    return-void
.end method

.method private userActivity()V
    .registers 6

    .line 3136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3137
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3138
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 2755
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getTrustAppVersion()Ljava/lang/String;
    .registers 9

    .line 2792
    const-string v0, "GFaceService"

    const-string v1, ""

    .line 2793
    .local v1, "ta":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # invokes: Lcom/android/server/biometrics/face/FaceService;->getFaceDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-static {v2}, Lcom/android/server/biometrics/face/FaceService;->access$7500(Lcom/android/server/biometrics/face/FaceService;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;

    .line 2794
    .local v2, "daemon":Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;
    if-nez v2, :cond_f

    .line 2795
    return-object v1

    .line 2798
    :cond_f
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2799
    .local v3, "begin":J
    invoke-interface {v2}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace;->sehGetTaInfo()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 2800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sehGetTaInfo FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_38} :catch_3a

    .line 2803
    nop

    .end local v3    # "begin":J
    goto :goto_54

    .line 2801
    :catch_3a
    move-exception v3

    .line 2802
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTrustAppVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTrustAppVersion: returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    return-object v1
.end method

.method isEnrollSession()Z
    .registers 2

    .line 2788
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$doTemplateSyncForUser$3$FaceService$ServiceExtensionImpl(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 3457
    const-string v0, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$doTemplateSyncForUser$4$FaceService$ServiceExtensionImpl(Landroid/hardware/face/Face;I)V
    .registers 5
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I

    .line 3482
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    const-string v1, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 3483
    return-void
.end method

.method public synthetic lambda$doTemplateSyncForUser$5$FaceService$ServiceExtensionImpl(ILandroid/hardware/face/Face;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "face"    # Landroid/hardware/face/Face;

    .line 3493
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 3494
    invoke-virtual {p2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v0

    const-string v1, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    goto :goto_22

    .line 3496
    :cond_1c
    const/4 v0, -0x1

    const-string v1, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->sendBroadcast(Ljava/lang/String;II)V

    .line 3498
    :goto_22
    return-void
.end method

.method public synthetic lambda$getFaceTag$2$FaceService$ServiceExtensionImpl(IILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "tagInfo"    # Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;

    .line 3107
    if-eqz p2, :cond_3

    .line 3108
    return-void

    .line 3110
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getFaceTag type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    iget-object v0, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mGetFaceTagResult:[B

    .line 3112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_47
    iget-object v1, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_62

    .line 3113
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mGetFaceTagResult:[B

    iget-object v2, p3, Lvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 3112
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 3115
    .end local v0    # "i":I
    :cond_62
    return-void
.end method

.method public synthetic lambda$startOperation$0$FaceService$ServiceExtensionImpl()V
    .registers 3

    .line 2995
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2996
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 2998
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    if-eqz v0, :cond_14

    .line 2999
    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->registerListener()Z
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->access$22500(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;)Z

    .line 3001
    :cond_14
    const-string/jumbo v0, "service.bioface.authenticating"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    return-void
.end method

.method public synthetic lambda$stopOperation$1$FaceService$ServiceExtensionImpl()V
    .registers 3

    .line 3033
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 3034
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mProximitySensorMgr:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;

    if-eqz v0, :cond_c

    .line 3035
    # invokes: Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->unregisterListener()V
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;->access$22400(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$ProximitySensorManager;)V

    .line 3037
    :cond_c
    const-string/jumbo v0, "service.bioface.authenticating"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3038
    return-void
.end method

.method onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 2767
    const/16 v0, 0x258

    if-ne p1, v0, :cond_14

    .line 2769
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_FACE_JDM_HAL:Z

    if-eqz v0, :cond_c

    .line 2770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    goto :goto_14

    .line 2772
    :cond_c
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/biometrics/SemAnalyticsManager;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/SemAnalyticsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mSemAnalyticsManager:Lcom/android/server/biometrics/SemAnalyticsManager;

    .line 2776
    :cond_14
    :goto_14
    return-void
.end method

.method postEnroll()V
    .registers 3

    .line 2784
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2785
    return-void
.end method

.method preEnroll()V
    .registers 3

    .line 2780
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mIsEnrollSession:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2781
    return-void
.end method

.method updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;)V
    .registers 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "param"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 2814
    move-object v10, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTrustApp: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GFaceService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    new-instance v12, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;

    iget-object v2, v10, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->mContext:Landroid/content/Context;

    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v3

    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    .line 2817
    # getter for: Lcom/android/server/biometrics/face/FaceService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$2800(Lcom/android/server/biometrics/face/FaceService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v4

    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    # getter for: Lcom/android/server/biometrics/face/FaceService;->mHalDeviceId:J
    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$20100(Lcom/android/server/biometrics/face/FaceService;)J

    move-result-wide v5

    new-instance v8, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;

    iget-object v0, v10, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->this$0:Lcom/android/server/biometrics/face/FaceService;

    move-object/from16 v13, p4

    invoke-direct {v8, v0, v13}, Lcom/android/server/biometrics/face/FaceService$ServiceListenerImpl;-><init>(Lcom/android/server/biometrics/face/FaceService;Landroid/hardware/face/IFaceServiceReceiver;)V

    move-object v0, v12

    move-object v1, p0

    move-object v7, p1

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl$4;-><init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/content/Context;Lcom/android/server/biometrics/Constants;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;Ljava/lang/String;)V

    .line 2829
    .local v0, "client":Lcom/android/server/biometrics/SemBiometricTrustAppManager;
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBiometricTrustAppManager;->start()I

    .line 2830
    return-void
.end method
