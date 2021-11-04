.class public Lcom/samsung/android/camera/CameraServiceWorker;
.super Lcom/android/server/SystemService;
.source "CameraServiceWorker.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/CameraServiceWorker$Logger;,
        Lcom/samsung/android/camera/CameraServiceWorker$SCPMReceiver;,
        Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;,
        Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;,
        Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;,
        Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;,
        Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;,
        Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_SERVICE_WORKER_LOGGING:Ljava/lang/String; = "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

.field private static final ACTION_MOTOR_DOWN:Ljava/lang/String; = "com.samsung.android.intent.ACTION_MOTOR_DOWN"

.field private static final ACTION_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE.Camera3rdPartyWhiteList"

.field private static final CAMERA_MOTOR_POSITION_BOTTOM:I = 0x0

.field private static final CAMERA_MOTOR_POSITION_MOVING:I = 0x1

.field private static final CAMERA_MOTOR_POSITION_TOP:I = 0x2

.field private static final CAMERA_SERVICE_BINDER_NAME:Ljava/lang/String; = "media.camera"

.field public static final CAMERA_SERVICE_WORKER_BINDER_NAME:Ljava/lang/String; = "media.camera.worker"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DEBUG:Z = false

.field public static final DEVICE_STATE_BACK_COVERED:J = 0x1L

.field public static final DEVICE_STATE_FOLDED:J = 0x4L

.field public static final DEVICE_STATE_FRONT_COVERED:J = 0x2L

.field public static final DEVICE_STATE_NORMAL:J = 0x0L

.field private static final DMA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final EVENT_END_3RD_CAMERA:Ljava/lang/String; = "7502"

.field private static final EVENT_SHAKE_DETECTION_COUNT:Ljava/lang/String; = "0125"

.field private static final EVENT_SHAKE_DETECTION_DURATION:Ljava/lang/String; = "0124"

.field private static final EVENT_START_3RD_CAMERA:Ljava/lang/String; = "7501"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final MSG_DEVICE_CHANGE:I = 0x3

.field private static final MSG_SET_SCPM_PARAMETERES:I = 0x4

.field private static final MSG_SLIDE_DOWN:I = 0x2

.field private static final RETRY_DELAY_TIME:I = 0x14

.field private static final RETRY_TIMES:I = 0x1e

.field private static final SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

.field private static final SCPM_ALLOW_LIST:[[Ljava/lang/String;

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "Camera3rdPartyWhiteList"

.field private static final SLIDE_DOWN_WAITING_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "CameraService_worker"

.field private static final TRACKING_ID:Ljava/lang/String; = "4K3-399-1014897"


# instance fields
.field private final AUTHORITY_URI:Landroid/net/Uri;

.field private final mActiveCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllowListLock:Ljava/lang/Object;

.field private final mAllowListMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBootCompleteReceiver:Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

.field private mCameraMotorStatus:I

.field private mCameraServiceRaw:Landroid/hardware/ICameraService;

.field private final mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

.field private final mContext:Landroid/content/Context;

.field private mDeviceState:J

.field private final mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

.field private final mEnableSurveyMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCameraOpened:Z

.field private mLastEventMessage:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mNotifyMotorManager:Z

.field private final mOpenCameraUsage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPackgeManager:Landroid/content/pm/PackageManager;

.field private mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

.field private mSCPMReceiver:Lcom/samsung/android/camera/CameraServiceWorker$SCPMReceiver;

.field private mServiceLock:Ljava/lang/Object;

.field private mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

.field private mToast:Landroid/widget/Toast;

.field private mVtCameraProviderObserver:Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 181
    const-string v0, "com.sec.android.app.camera"

    const-string v1, "com.samsung.android.smartface"

    const-string v2, "com.samsung.adaptivebrightnessgo"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    .line 185
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "com.hanabank.ebk.channel.android.hananbank"

    const-string v2, "1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "com.kakaobank.channel"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.intsig.BCRLite"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "com.intsig.BizCardReader"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "com.shinhan.sbanking"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string/jumbo v1, "kr.or.sbbank.plus"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string/jumbo v1, "nh.smart.banking"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->SCPM_ALLOW_LIST:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 1093
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 163
    iput v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;

    .line 195
    const-string v2, "No event."

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLastEventMessage:Ljava/lang/String;

    .line 210
    const-string v2, "content://com.samsung.android.sm.policy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->AUTHORITY_URI:Landroid/net/Uri;

    .line 214
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    .line 215
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;

    .line 220
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 886
    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/CameraServiceWorker$1;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 960
    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/CameraServiceWorker$2;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    .line 968
    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/camera/CameraServiceWorker$3;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    .line 1094
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 1095
    new-instance v2, Lcom/android/server/ServiceThread;

    const-string v3, "CameraService_worker"

    const/4 v4, -0x4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1096
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    .line 1097
    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 1099
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mNotifyMotorManager:Z

    .line 1101
    if-eqz v0, :cond_88

    .line 1103
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$CameraMotorListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Lcom/samsung/android/camera/CameraServiceWorker$1;)V

    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4}, Landroid/hardware/input/CameraMotorManager;->registerCameraMotorPositionChangedListener(Landroid/hardware/input/CameraMotorManager$OnCameraMotorPositionChangedListener;Landroid/os/Handler;)V

    .line 1105
    :cond_88
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    .line 1108
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    .line 1109
    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 1110
    const-string v0, "Shake event is supported. Register listener."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->start()V

    goto :goto_b3

    .line 1113
    :cond_ae
    const-string v0, "Shake event is not supported."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_b3
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Lcom/samsung/android/camera/CameraServiceWorker$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    .line 1117
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

    .line 1119
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/CameraServiceWorker$SCPMReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mSCPMReceiver:Lcom/samsung/android/camera/CameraServiceWorker$SCPMReceiver;

    .line 1120
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;-><init>(Lcom/samsung/android/camera/CameraServiceWorker;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mBootCompleteReceiver:Lcom/samsung/android/camera/CameraServiceWorker$BootCompleteReceiver;

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mPackgeManager:Landroid/content/pm/PackageManager;

    .line 1122
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 92
    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->cameraMotorPositionToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/CameraServiceWorker;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLastEventMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/camera/CameraServiceWorker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLastEventMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/camera/CameraServiceWorker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # I

    .line 92
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/camera/CameraServiceWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mNotifyMotorManager:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->scheduleLogging()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->initDefaultSCPMList()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/camera/CameraServiceWorker;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifySCPMParamChangeRetryLocked(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mVtCameraProviderObserver:Lcom/samsung/android/camera/CameraServiceWorker$VtCameraProviderObserver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/camera/CameraServiceWorker;)Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/camera/CameraServiceWorker;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # I

    .line 92
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2000(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 92
    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->cameraStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # Landroid/widget/Toast;

    .line 92
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 92
    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/camera/CameraServiceWorker;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 6
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/camera/CameraServiceWorker;->updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/camera/CameraServiceWorker;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/hardware/ICameraService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/camera/CameraServiceWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/camera/CameraServiceWorker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/camera/CameraServiceWorker;JZ)Landroid/util/Pair;
    .registers 5
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/camera/CameraServiceWorker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/camera/CameraServiceWorker;

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    return v0
.end method

.method private append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 1615
    if-eqz p1, :cond_20

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_20

    .line 1618
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1619
    .local v0, "output":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1616
    .end local v0    # "output":Ljava/lang/StringBuilder;
    :cond_20
    :goto_20
    return-object p2
.end method

.method private static cameraFacingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraFacing"    # I

    .line 1407
    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 1417
    const-string v0, "CAMERA_FACING_UNKNOWN"

    return-object v0

    .line 1413
    :cond_b
    const-string v0, "CAMERA_FACING_EXTERNAL"

    return-object v0

    .line 1411
    :cond_e
    const-string v0, "CAMERA_FACING_FRONT"

    return-object v0

    .line 1409
    :cond_11
    const-string v0, "CAMERA_FACING_BACK"

    return-object v0
.end method

.method private static cameraMotorPositionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "cameraMotorPosition"    # I

    .line 244
    const/16 v0, -0x190

    if-eq p0, v0, :cond_27

    const/16 v0, -0x12c

    if-eq p0, v0, :cond_24

    const/16 v0, -0xc8

    if-eq p0, v0, :cond_21

    const/16 v0, -0x64

    if-eq p0, v0, :cond_1e

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    .line 260
    const-string v0, "NOT_DEFINED"

    return-object v0

    .line 246
    :cond_18
    const-string v0, "CAMERA_MOTOR_POSITION_TOP"

    return-object v0

    .line 248
    :cond_1b
    const-string v0, "CAMERA_MOTOR_POSITION_BOTTOM"

    return-object v0

    .line 256
    :cond_1e
    const-string v0, "CAMERA_MOTOR_POSITION_BY_USER_DOWN"

    return-object v0

    .line 254
    :cond_21
    const-string v0, "CAMERA_MOTOR_POSITION_BY_USER_UP"

    return-object v0

    .line 252
    :cond_24
    const-string v0, "CAMERA_MOTOR_POSITION_UNKNOWN"

    return-object v0

    .line 250
    :cond_27
    const-string v0, "CAMERA_MOTOR_POSITION_HIGHSHOCK"

    return-object v0
.end method

.method private static cameraStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "newCameraState"    # I

    .line 1391
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 1403
    const-string v0, "CAMERA_STATE_UNKNOWN"

    return-object v0

    .line 1399
    :cond_e
    const-string v0, "CAMERA_STATE_CLOSED"

    return-object v0

    .line 1397
    :cond_11
    const-string v0, "CAMERA_STATE_IDLE"

    return-object v0

    .line 1395
    :cond_14
    const-string v0, "CAMERA_STATE_ACTIVE"

    return-object v0

    .line 1393
    :cond_17
    const-string v0, "CAMERA_STATE_OPEN"

    return-object v0
.end method

.method private getCameraService()Landroid/hardware/ICameraService;
    .registers 7

    .line 1167
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v1, :cond_30

    .line 1169
    const-string/jumbo v1, "media.camera"

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1170
    .local v1, "cameraServiceBinder":Landroid/os/IBinder;
    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 1171
    const-string v3, "CameraService_worker"

    const-string v4, "Could not notify mediaserver, camera service not available."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_34

    return-object v2

    .line 1175
    :cond_1a
    const/4 v3, 0x0

    :try_start_1b
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_26
    .catchall {:try_start_1b .. :try_end_1e} :catchall_34

    .line 1179
    nop

    .line 1181
    :try_start_1f
    invoke-static {v1}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_30

    .line 1176
    :catch_26
    move-exception v3

    .line 1177
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "CameraService_worker"

    const-string v5, "Could not link to death of native camera service"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    monitor-exit v0

    return-object v2

    .line 1184
    .end local v1    # "cameraServiceBinder":Landroid/os/IBinder;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_30
    :goto_30
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    monitor-exit v0

    return-object v1

    .line 1185
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_34

    throw v1
.end method

.method private getSCPMPolicyItemFromDB()Z
    .registers 12

    .line 1573
    const-string v0, "CameraService_worker"

    const/4 v1, 0x0

    .line 1575
    .local v1, "ret":Z
    const-string/jumbo v2, "item"

    const-string v3, "category"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1576
    .local v6, "projection":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "policy_item"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1577
    .local v2, "CONTENT_URI":Landroid/net/Uri;
    const-string v3, "Camera3rdPartyWhiteList"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1579
    .local v3, "POLICY_ITEM_URI":Landroid/net/Uri;
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 1581
    :try_start_20
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_71

    .line 1582
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_59

    .line 1583
    :cond_30
    :goto_30
    :try_start_30
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1584
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_30

    .line 1585
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1586
    .local v5, "packageName":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1587
    .local v7, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    nop

    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_30

    .line 1592
    :cond_55
    const/4 v1, 0x1

    goto :goto_60

    .line 1581
    :catchall_57
    move-exception v5

    goto :goto_66

    .line 1594
    :cond_59
    const-string/jumbo v5, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_57

    .line 1595
    const/4 v1, 0x0

    .line 1597
    :goto_60
    if-eqz v4, :cond_65

    :try_start_62
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_71

    .line 1600
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_65
    goto :goto_8d

    .line 1581
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :goto_66
    if-eqz v4, :cond_70

    :try_start_68
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v7

    :try_start_6d
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ret":Z
    .end local v2    # "CONTENT_URI":Landroid/net/Uri;
    .end local v3    # "POLICY_ITEM_URI":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker;
    :cond_70
    :goto_70
    throw v5
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_71

    .line 1597
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "ret":Z
    .restart local v2    # "CONTENT_URI":Landroid/net/Uri;
    .restart local v3    # "POLICY_ITEM_URI":Landroid/net/Uri;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker;
    :catch_71
    move-exception v4

    .line 1598
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1602
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8d
    return v1
.end method

.method private initDefaultSCPMList()V
    .registers 11

    .line 1606
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1607
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1608
    sget-object v1, Lcom/samsung/android/camera/CameraServiceWorker;->SCPM_ALLOW_LIST:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_27

    aget-object v5, v1, v4

    .line 1609
    .local v5, "item":[Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    aget-object v7, v5, v3

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    nop

    .end local v5    # "item":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1611
    :cond_27
    monitor-exit v0

    .line 1612
    return-void

    .line 1611
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 12

    .line 1543
    const-string v0, "CameraService_worker"

    const/4 v1, 0x0

    .line 1544
    .local v1, "cursorPolicy":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1545
    .local v2, "isNeedUpdate":Z
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "policy_list"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1548
    .local v3, "CONTENT_URI":Landroid/net/Uri;
    :try_start_d
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_69

    move-object v1, v4

    .line 1552
    nop

    .line 1554
    if-eqz v1, :cond_68

    .line 1555
    :goto_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 1556
    const-string/jumbo v4, "policyName"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1557
    .local v4, "policyName":Ljava/lang/String;
    const-string/jumbo v5, "policyVersion"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1558
    .local v5, "policyVersion":Ljava/lang/String;
    const-string v6, "Camera3rdPartyWhiteList"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 1559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , policyVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const/4 v0, 0x1

    .line 1561
    .end local v2    # "isNeedUpdate":Z
    .local v0, "isNeedUpdate":Z
    move v2, v0

    goto :goto_65

    .line 1563
    .end local v0    # "isNeedUpdate":Z
    .end local v4    # "policyName":Ljava/lang/String;
    .end local v5    # "policyVersion":Ljava/lang/String;
    .restart local v2    # "isNeedUpdate":Z
    :cond_64
    goto :goto_20

    .line 1564
    :cond_65
    :goto_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1566
    :cond_68
    return v2

    .line 1549
    :catch_69
    move-exception v4

    .line 1550
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t query to SCPM : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/4 v0, 0x0

    return v0
.end method

.method private notifyDeviceChangeLocked(J)Landroid/util/Pair;
    .registers 4
    .param p1, "deviceState"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(JZ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private notifyDeviceChangeLocked(JZ)Landroid/util/Pair;
    .registers 12
    .param p1, "deviceState"    # J
    .param p3, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1254
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Initial"

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1256
    .local v0, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v3

    .line 1257
    .local v3, "cameraService":Landroid/hardware/ICameraService;
    const-string v4, "CameraService_worker"

    if-nez v3, :cond_24

    .line 1258
    new-instance v1, Landroid/util/Pair;

    const-string v5, "Could not notify mediaserver, camera service not available."

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 1259
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-object v0

    .line 1263
    :cond_24
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "NotifyDeviceStateChange 0x%X, sync(%b)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    if-eqz p3, :cond_43

    .line 1266
    :try_start_3f
    invoke-interface {v3, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChangeSync(J)V

    goto :goto_46

    .line 1268
    :cond_43
    invoke-interface {v3, p1, p2}, Landroid/hardware/ICameraService;->notifyDeviceStateChange(J)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_46} :catch_60

    .line 1275
    :goto_46
    nop

    .line 1277
    new-instance v2, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "NotifyDeviceStateChange success: 0x%X"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 1278
    return-object v0

    .line 1270
    :catch_60
    move-exception v1

    .line 1271
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not notify device state change, remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    .line 1272
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    return-object v0
.end method

.method private notifyDeviceChangeRetryLocked(I)V
    .registers 7
    .param p1, "retries"    # I

    .line 1237
    iget-wide v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeLocked(J)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1238
    const/4 p1, 0x0

    .line 1240
    :cond_11
    if-gtz p1, :cond_14

    .line 1241
    return-void

    .line 1243
    :cond_14
    const-string v0, "CameraService_worker"

    const-string v1, "Could not notify camera service of device state change, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1245
    return-void
.end method

.method private notifyMotorManagerService(IZ)V
    .registers 10
    .param p1, "facing"    # I
    .param p2, "isActive"    # Z

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyMotorManagerService : facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->cameraFacingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const-string/jumbo v0, "notifyMotorManagerService : mCameraMotorStatus changed to CAMERA_MOTOR_POSITION_MOVING."

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eqz p2, :cond_3e

    if-ne p1, v4, :cond_3e

    .line 1372
    :try_start_2d
    iget v5, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    if-nez v5, :cond_36

    .line 1373
    iput v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    .line 1374
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_36
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/hardware/input/CameraMotorManager;->cameraMotorControl(IZ)Z

    goto :goto_4f

    .line 1378
    :cond_3e
    iget v5, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_48

    .line 1379
    iput v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraMotorStatus:I

    .line 1380
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_48
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/hardware/input/CameraMotorManager;->cameraMotorControl(IZ)Z

    .line 1384
    :goto_4f
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/input/CameraMotorManager;->setBlockCameraMotorControl(Z)V
    :try_end_56
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_56} :catch_57

    .line 1387
    goto :goto_6c

    .line 1385
    :catch_57
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not notify MotorManager service, illegal state exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_6c
    return-void
.end method

.method private notifySCPMParamChangeLocked()Z
    .registers 8

    .line 1295
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 1296
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1298
    :cond_8
    const-string v2, ""

    .line 1299
    .local v2, "allowList":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    new-array v3, v3, [J

    .line 1302
    .local v3, "valueArray":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    :try_start_13
    iget-object v5, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 1303
    iget-object v5, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/samsung/android/camera/CameraServiceWorker;->append(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1304
    iget-object v5, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 1302
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1307
    .end local v4    # "i":I
    :cond_3f
    invoke-interface {v0, v2, v3}, Landroid/hardware/ICameraService;->notifySCPMParamChange(Ljava/lang/String;[J)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_42} :catch_45

    .line 1315
    nop

    .line 1316
    const/4 v1, 0x1

    return v1

    .line 1311
    :catch_45
    move-exception v4

    .line 1312
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not notify SPCM param change, remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CameraService_worker"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return v1
.end method

.method private notifySCPMParamChangeRetryLocked(I)V
    .registers 7
    .param p1, "retries"    # I

    .line 1282
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->notifySCPMParamChangeLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1283
    const/4 p1, 0x0

    .line 1285
    :cond_7
    if-gtz p1, :cond_a

    .line 1286
    return-void

    .line 1288
    :cond_a
    const-string v0, "CameraService_worker"

    const-string v1, "Could not notify camera service of device state change, retrying..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1290
    return-void
.end method

.method private scheduleLogging()V
    .registers 9

    .line 1509
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 1511
    .local v0, "diff":J
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1514
    .local v3, "sender":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v0

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6, v3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 1515
    return-void
.end method

.method private updateActivityCount(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 22
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newCameraState"    # I
    .param p3, "facing"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I

    .line 1321
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    iget-object v7, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1322
    const/4 v0, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eqz v3, :cond_57

    if-eq v3, v9, :cond_4c

    if-eq v3, v10, :cond_46

    if-eq v3, v0, :cond_1c

    goto :goto_87

    .line 1334
    :cond_1c
    :try_start_1c
    iget-boolean v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    if-eqz v11, :cond_30

    invoke-virtual {v1, v5}, Lcom/samsung/android/camera/CameraServiceWorker;->isSamsungCameraApp(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_30

    .line 1335
    const-string v11, "7502"

    int-to-long v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v5, v12}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1337
    :cond_30
    iget-object v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    sget-object v11, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->COMMON:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v12, "Close camera(%s) for %s"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v2, v13, v8

    aput-object v5, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 1341
    :cond_46
    iget-object v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87

    .line 1331
    :cond_4c
    iget-object v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v12, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v12, v4, v5, v6}, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v11, v2, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    goto :goto_87

    .line 1324
    :cond_57
    iget-boolean v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mEnableSurveyMode:Z

    if-eqz v11, :cond_6b

    invoke-virtual {v1, v5}, Lcom/samsung/android/camera/CameraServiceWorker;->isSamsungCameraApp(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6b

    .line 1325
    const-string v11, "7501"

    int-to-long v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v1, v11, v5, v12}, Lcom/samsung/android/camera/CameraServiceWorker;->insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1327
    :cond_6b
    iget-object v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    new-instance v12, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    invoke-direct {v12, v4, v5, v6}, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v11, v2, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    sget-object v11, Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;->COMMON:Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;

    const-string v12, "Open camera(%s) for %s"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v2, v13, v8

    aput-object v5, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/camera/CameraServiceWorker$Logger;->log(Lcom/samsung/android/camera/CameraServiceWorker$Logger$ID;Ljava/lang/String;)V

    .line 1329
    nop

    .line 1345
    :goto_87
    iget-boolean v11, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mNotifyMotorManager:Z

    if-eqz v11, :cond_e1

    .line 1346
    if-eqz v3, :cond_d7

    if-eq v3, v0, :cond_91

    move v0, v9

    goto :goto_e2

    .line 1352
    :cond_91
    iget-object v0, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1353
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/input/CameraMotorManager;->getBlockTimeForCamera()J

    move-result-wide v11

    .line 1354
    .local v11, "waitingTime":J
    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-nez v0, :cond_a6

    .line 1355
    const-wide/16 v11, 0x258

    .line 1357
    :cond_a6
    const-string v0, "CameraService_worker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waiting for "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms for slide down"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    invoke-static {}, Landroid/hardware/input/CameraMotorManager;->getInstance()Landroid/hardware/input/CameraMotorManager;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/hardware/input/CameraMotorManager;->setBlockTimeForCamera(J)V

    .line 1359
    iget-object v0, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v4, v8, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v9, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    goto :goto_e2

    .line 1348
    .end local v11    # "waitingTime":J
    :cond_d7
    iget-object v0, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1349
    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyMotorManagerService(IZ)V

    .line 1350
    goto :goto_e2

    .line 1345
    :cond_e1
    move v0, v9

    .line 1364
    :goto_e2
    iget-object v9, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_eb

    move v8, v0

    :cond_eb
    iput-boolean v8, v1, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 1365
    monitor-exit v7

    .line 1366
    return-void

    .line 1365
    :catchall_ef
    move-exception v0

    monitor-exit v7
    :try_end_f1
    .catchall {:try_start_1c .. :try_end_f1} :catchall_ef

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 1193
    const-string v0, "CameraService_worker"

    const-string v1, "Native camera service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_a
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mServiceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_50

    .line 1196
    const/4 v2, 0x0

    :try_start_e
    iput-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 1197
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_4d

    .line 1200
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 1202
    .local v1, "wasOpened":Z
    :goto_1d
    iget-boolean v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mNotifyMotorManager:Z

    if-eqz v3, :cond_3f

    if-eqz v1, :cond_3f

    .line 1203
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;

    .line 1204
    .local v4, "e":Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;
    iget v5, v4, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;->mCameraFacing:I

    invoke-direct {p0, v5, v2}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyMotorManagerService(IZ)V

    .line 1205
    .end local v4    # "e":Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;
    goto :goto_2d

    .line 1208
    :cond_3f
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1209
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mOpenCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1211
    iput-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIsCameraOpened:Z

    .line 1212
    .end local v1    # "wasOpened":Z
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_11 .. :try_end_4c} :catchall_50

    .line 1213
    return-void

    .line 1197
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker;
    :try_start_4f
    throw v2

    .line 1212
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorker;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_50

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraServiceWorker error, invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 1140
    :cond_24
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_27
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifySCPMParamChangeRetryLocked(I)V

    .line 1142
    monitor-exit v0

    .line 1144
    goto :goto_48

    .line 1142
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw v1

    .line 1134
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1135
    :try_start_34
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 1136
    monitor-exit v0

    .line 1138
    goto :goto_48

    .line 1136
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v1

    .line 1128
    :cond_3e
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mNotifyMotorManager:Z

    if-eqz v0, :cond_48

    .line 1129
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyMotorManagerService(IZ)V

    .line 1150
    :cond_48
    :goto_48
    const/4 v0, 0x1

    return v0
.end method

.method insertDMALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 10
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Long;

    .line 1423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1424
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tracking_id"

    const-string v2, "4K3-399-1014897"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    if-eqz p2, :cond_19

    .line 1427
    const-string v1, "extra"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_19
    if-eqz p3, :cond_25

    .line 1430
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1432
    :cond_25
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1435
    .local v1, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1437
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1440
    .local v2, "identity":J
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1441
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    return-void
.end method

.method isSamsungCameraApp(Ljava/lang/String;)Z
    .registers 8
    .param p1, "clientName"    # Ljava/lang/String;

    .line 1445
    sget-object v0, Lcom/samsung/android/camera/CameraServiceWorker;->SAMSUNG_CAMERA_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 1446
    .local v4, "samsungCameraPackage":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1447
    const/4 v0, 0x1

    return v0

    .line 1445
    .end local v4    # "samsungCameraPackage":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1450
    :cond_14
    return v2
.end method

.method public notifyDeviceChange(J)V
    .registers 5
    .param p1, "newDeviceState"    # J

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1231
    :try_start_3
    iput-wide p1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDeviceState:J

    .line 1232
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifyDeviceChangeRetryLocked(I)V

    .line 1233
    monitor-exit v0

    .line 1234
    return-void

    .line 1233
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1217
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_19

    .line 1218
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 1219
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mDisplayFoldListener:Landroid/view/IDisplayFoldListener$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    goto :goto_39

    .line 1220
    :cond_19
    const/16 v0, 0x258

    if-ne p1, v0, :cond_39

    .line 1221
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mShakeEventListener:Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker$ShakeEventListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1222
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1223
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->scheduleLogging()V

    .line 1225
    :cond_34
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mRequestInjectorService:Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker$RequestInjectorService;->tryRegisterCameraOpenListener()V

    .line 1227
    :cond_39
    :goto_39
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 1155
    const-string v0, "CameraService_worker"

    const-string v1, "CameraServiceWorker is started."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1158
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.ACTION_MOTOR_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    const-string v1, "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1162
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker$Stub;

    const-string/jumbo v2, "media.camera.worker"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1163
    const-class v1, Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {p0, v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1164
    return-void
.end method

.method public updateSCPMParametersFromDB()V
    .registers 4

    .line 1522
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mPackgeManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1523
    const-string v0, "CameraService_worker"

    const-string v1, "SCPM does not working."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-void

    .line 1527
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1528
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mAllowListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1529
    :try_start_1c
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->getSCPMPolicyItemFromDB()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1530
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/CameraServiceWorker;->notifySCPMParamChangeRetryLocked(I)V

    .line 1532
    :cond_27
    monitor-exit v0

    goto :goto_34

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw v1

    .line 1534
    :cond_2c
    const-string v0, "CameraService_worker"

    const-string/jumbo v1, "scpm doesn\'t find the Policy name for Camera3rdPartyWhiteList"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :goto_34
    return-void
.end method
