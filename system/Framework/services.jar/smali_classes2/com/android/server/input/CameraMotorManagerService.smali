.class public Lcom/android/server/input/CameraMotorManagerService;
.super Landroid/hardware/input/ICameraMotorManager$Stub;
.source "CameraMotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;,
        Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;,
        Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;,
        Lcom/android/server/input/CameraMotorManagerService$LocalService;,
        Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;
    }
.end annotation


# static fields
.field private static final CAMERA_CONTROL_DOWN:I = 0x0

.field private static final CAMERA_CONTROL_UP:I = 0x1

.field private static final CAMERA_MOTOR_PATH:Ljava/lang/String; = "/sys/class/sec/sliding_motor/enable"

.field private static final CAMERA_MOTOR_RETRY_PATH:Ljava/lang/String; = "/sys/class/sec/sliding_motor/retry"

.field private static final CAMERA_POSITION_AUTO_DOWN:I = 0x7

.field private static final CAMERA_POSITION_BOTTOM:I = 0x0

.field private static final CAMERA_POSITION_CHANGED_BY_USER_DOWN:I = -0x64

.field private static final CAMERA_POSITION_CHANGED_BY_USER_UP:I = -0xc8

.field private static final CAMERA_POSITION_HIGHSHOCK:I = -0x190

.field private static final CAMERA_POSITION_MASK:I = 0xff

.field private static final CAMERA_POSITION_MASK_EX:I = -0x100

.field private static final CAMERA_POSITION_PATH:Ljava/lang/String; = "/sys/class/sec/sec_key/enableHALL"

.field private static final CAMERA_POSITION_TOP:I = 0x9

.field private static final CAMERA_POSITION_UNKNOWN:I = -0x12c

.field private static final CAMERA_REVERSE_POSITION_PATH:Ljava/lang/String; = "/sys/class/sec/sec_key/enableReverseHALL"

.field private static final CHECK_COUNT_FOR_TOP_POSITION:I = 0x5

.field private static final DEBUG:Z = false

.field private static final FACTORY_BINARY:Z

.field private static final FROM_CAMERA:I = 0x5

.field private static final FROM_POSITION_BACK:I = 0x1

.field private static final FROM_POSITION_MONITOR:I = 0xa

.field private static final FROM_POSITION_RETRY:I = 0x2

.field private static final FROM_POWER_BOOTING:I = 0x8

.field private static final FROM_POWER_SHUTDOWN:I = 0x9

.field private static final FROM_SCREEN_OFF:I = 0x4

.field private static final FROM_SCREEN_ON:I = 0x3

.field private static final FROM_SENSOR_FREEFALL:I = 0x7

.field private static final FROM_SENSOR_NO_SHOCK:I = 0x6

.field private static final FROM_SWITCH_EVENT:I = 0x0

.field private static final GRIP_SENSOR_DELAY_7700US:I = 0x1e14

.field private static final LOW_TEMPERATURE:I = 0x50

.field private static final LOW_TEMPERATURE_RETRYCNT:I = 0x2

.field private static final MSG_DELIVER_CAMERA_MOTOR_POSITION_CHANGED:I = 0x5

.field private static final MSG_DELIVER_CAMERA_MOTOR_STOP:I = 0x1

.field private static final MSG_REQUEST_BLOCK_STOP:I = 0x6

.field private static final MSG_REQUEST_SENSOR_REGISTER:I = 0x2

.field private static final MSG_REQUEST_SENSOR_UNREGISTER:I = 0x3

.field private static final MSG_REQUEST_SENSOR_UNREGISTER_DELAYED:I = 0x4

.field private static final NORMAL_TEMPERATURE_RETRYCNT:I = 0x2

.field private static final PATH_MOTOR_CONTROL_COUNT:Ljava/lang/String; = "/efs/CamMotorSlideCnt"

.field private static final PATH_MOTOR_RETRY_COUNT:Ljava/lang/String; = "/efs/CamMotorRetryCnt"

.field private static final STATUS_FREEFALLSENSOR_FREEFALLING:I = 0x1

.field private static final STATUS_FREEFALLSENSOR_HIGH_SHOCK:I = 0x2

.field private static final STATUS_FREEFALLSENSOR_INIT:I = 0x0

.field private static final STATUS_FREEFALLSENSOR_NO_SHOCK:I = 0x3

.field private static final STATUS_GRIPSENSOR_GRIP:I = 0x0

.field private static final STATUS_GRIPSENSOR_NONGRIP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CameraMotorManagerService"

.field private static final WAIT_TIME_FOR_HIGH_SHOCK:J = 0x7d0L

.field private static mDropSensor:Landroid/hardware/Sensor;

.field private static mGripSensor:Landroid/hardware/Sensor;

.field private static mSensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private mActivatedCameraIds:I

.field private mBatteryTemp:I

.field private mBatteryTempQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

.field private mBlockCameraMotorControl:Z

.field private mBlockTimeForCamera:J

.field private mCamAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

.field private mCameraMotorControlHandlerThread:Landroid/os/HandlerThread;

.field private final mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraMotorPositionLock:Ljava/lang/Object;

.field private mCameraPositionHandler:Landroid/os/Handler;

.field private mCameraPositionHandlerThread:Landroid/os/HandlerThread;

.field private final mContext:Landroid/content/Context;

.field private mCount:J

.field private final mDropSensorListener:Landroid/hardware/SensorEventListener;

.field private mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

.field private final mGripSensorListener:Landroid/hardware/SensorEventListener;

.field private mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

.field private final mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailablePosition:Z

.field private mIsGripped:Z

.field private mIsInFreeFalling:Z

.field private mIsOpened:Z

.field private mIsStartedFromEndPoint:Z

.field private mLastDigitalHallIcRawAdc:Ljava/lang/String;

.field private mLastDropTime:J

.field private mLastPosition:I

.field private mLastRequestState:I

.field private mLastRequestStateFrom:I

.field private mLastRequestStateTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMotorControlCount:I

.field private mMotorOperationTimeMs:I

.field private mMotorRetryCount:I

.field private mMovingTo:I

.field private final mMovingToLock:Ljava/lang/Object;

.field private mNonTopPositionCount:I

.field private mPositionQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRetryCnt:I

.field private mSensorIsRegistered:Z

.field private mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

.field private final mStopper:Ljava/lang/Runnable;

.field private mSystemReady:Z

.field private mTargetPosition:I

.field private final mTempCameraMotorPositionChangedListenersToNotify:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopPositionChecker:Ljava/lang/Runnable;

.field private mTopPositionMonitorEnable:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/CameraMotorManagerService;->FACTORY_BINARY:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 163
    sput-object v0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensor:Landroid/hardware/Sensor;

    .line 164
    sput-object v0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 220
    invoke-direct {p0}, Landroid/hardware/input/ICameraMotorManager$Stub;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z

    .line 171
    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    .line 172
    iput-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mSensorIsRegistered:Z

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    .line 174
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateTime:J

    .line 175
    iput v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    .line 176
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    .line 179
    iput v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastPosition:I

    .line 180
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsStartedFromEndPoint:Z

    .line 181
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    .line 182
    iput-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionMonitorEnable:Z

    .line 184
    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    .line 185
    const/16 v5, 0x44c

    iput v5, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    .line 186
    iput-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z

    .line 187
    iput v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I

    .line 188
    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I

    .line 190
    iput-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z

    .line 191
    iput-boolean v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsAvailablePosition:Z

    .line 192
    iput-wide v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J

    .line 193
    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorControlCount:I

    .line 194
    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorRetryCount:I

    .line 206
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionLock:Ljava/lang/Object;

    .line 208
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mTempCameraMotorPositionChangedListenersToNotify:Ljava/util/List;

    .line 214
    iput-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockCameraMotorControl:Z

    .line 215
    iput-wide v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockTimeForCamera:J

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingToLock:Ljava/lang/Object;

    .line 218
    iput v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingTo:I

    .line 741
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$2;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCamAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 813
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$3;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mStopper:Ljava/lang/Runnable;

    .line 899
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$4;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionChecker:Ljava/lang/Runnable;

    .line 931
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$5;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 954
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$6;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorListener:Landroid/hardware/SensorEventListener;

    .line 1351
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$7;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iput-object p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mContext:Landroid/content/Context;

    .line 223
    const-class v0, Landroid/hardware/input/CameraMotorManagerInternal;

    new-instance v1, Lcom/android/server/input/CameraMotorManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/CameraMotorManagerService$LocalService;-><init>(Lcom/android/server/input/CameraMotorManagerService;Lcom/android/server/input/CameraMotorManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 225
    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService;

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 228
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CamMotorController"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandlerThread:Landroid/os/HandlerThread;

    .line 229
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 230
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;-><init>(Lcom/android/server/input/CameraMotorManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    .line 231
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CamMotorStopper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandlerThread:Landroid/os/HandlerThread;

    .line 232
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 233
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;

    .line 236
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    invoke-direct {v0, p0}, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;-><init>(Lcom/android/server/input/CameraMotorManagerService;)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    .line 237
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;-><init>(Lcom/android/server/input/CameraMotorManagerService;I)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    .line 238
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;-><init>(Lcom/android/server/input/CameraMotorManagerService;I)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    .line 239
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;-><init>(Lcom/android/server/input/CameraMotorManagerService;I)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTempQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    .line 240
    new-instance v0, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;-><init>(Lcom/android/server/input/CameraMotorManagerService;I)V

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mPositionQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    .line 242
    const-string v0, "CameraMotorManagerService"

    const-string v1, "CameraMotorManagerService()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method private FromToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "stateFrom"    # I

    .line 1211
    const-string v0, ""

    .line 1212
    .local v0, "ret":Ljava/lang/String;
    packed-switch p1, :pswitch_data_e8

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e7

    .line 1223
    :pswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "monitor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1224
    goto/16 :goto_e7

    .line 1229
    :pswitch_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shutdown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    goto/16 :goto_e7

    .line 1226
    :pswitch_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "boot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    goto/16 :goto_e7

    .line 1238
    :pswitch_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "freefall"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    goto/16 :goto_e7

    .line 1241
    :pswitch_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no_shock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1242
    goto :goto_e7

    .line 1214
    :pswitch_77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    goto :goto_e7

    .line 1232
    :pswitch_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screen_off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    goto :goto_e7

    .line 1235
    :pswitch_9c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screen_on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    goto :goto_e7

    .line 1220
    :pswitch_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1221
    goto :goto_e7

    .line 1217
    :pswitch_c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "back"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    goto :goto_e7

    .line 1244
    :pswitch_d4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "switch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    nop

    .line 1250
    :goto_e7
    return-object v0

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_c2
        :pswitch_af
        :pswitch_9c
        :pswitch_89
        :pswitch_77
        :pswitch_64
        :pswitch_51
        :pswitch_3e
        :pswitch_2a
        :pswitch_16
    .end packed-switch
.end method

.method private StateToString(I)Ljava/lang/String;
    .registers 5
    .param p1, "updownState"    # I

    .line 697
    const-string v0, ""

    .line 698
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 700
    :cond_17
    if-nez p1, :cond_2b

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 703
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    :goto_3a
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/input/CameraMotorManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService;->onCameraMotorPositionChangedListenerDied(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/input/CameraMotorManagerService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->acquireWakeLockForCameraMotor()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/input/CameraMotorManagerService;JIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1308(Lcom/android/server/input/CameraMotorManagerService;)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-wide v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorStop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->releaseWakeLockForCameraMotor()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->requestRegisterFreeFall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->requestUnregisterFreeFall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/input/CameraMotorManagerService;JI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/CameraMotorManagerService;->deliverCameraMotorPositionChanged(JI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/input/CameraMotorManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService;->getCameraPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/input/CameraMotorManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-wide v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsStartedFromEndPoint:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/input/CameraMotorManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionMonitorEnable:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/input/CameraMotorManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionMonitorEnable:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionChecker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/input/CameraMotorManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/input/CameraMotorManagerService;JIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/input/CameraMotorManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mStopper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/input/CameraMotorManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsInFreeFalling:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/input/CameraMotorManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->writeMotorRetryCountToEfs()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/input/CameraMotorManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    iput p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I

    return p1
.end method

.method static synthetic access$3512(Lcom/android/server/input/CameraMotorManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mNonTopPositionCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/input/CameraMotorManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/input/CameraMotorManagerService;)Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/input/CameraMotorManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-wide v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/server/input/CameraMotorManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # J

    .line 77
    iput-wide p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDropTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/input/CameraMotorManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget-boolean v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/input/CameraMotorManagerService;JII)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/input/CameraMotorManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/input/CameraMotorManagerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService;->StateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/input/CameraMotorManagerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService;->FromToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/input/CameraMotorManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    return v0
.end method

.method static synthetic access$972(Lcom/android/server/input/CameraMotorManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    return v0
.end method

.method static synthetic access$976(Lcom/android/server/input/CameraMotorManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/input/CameraMotorManagerService;
    .param p1, "x1"    # I

    .line 77
    iget v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    return v0
.end method

.method private acquireWakeLockForCameraMotor()V
    .registers 5

    .line 1331
    const-string v0, "CameraMotorManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1332
    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    .line 1337
    :cond_16
    goto :goto_1d

    .line 1335
    :catch_17
    move-exception v1

    .line 1336
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1338
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1d
    return-void
.end method

.method private cameraMotorControlInnerLocked(JII)Z
    .registers 11
    .param p1, "time"    # J
    .param p3, "updownState"    # I
    .param p4, "from"    # I

    .line 510
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorControlInnerLocked(JIII)Z

    move-result v0

    return v0
.end method

.method private cameraMotorControlInnerLocked(JIII)Z
    .registers 24
    .param p1, "time"    # J
    .param p3, "updownState"    # I
    .param p4, "from"    # I
    .param p5, "flags"    # I

    .line 515
    move-object/from16 v0, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    sget-boolean v1, Lcom/android/server/input/CameraMotorManagerService;->FACTORY_BINARY:Z

    const-string v11, "CameraMotorManagerService"

    const/4 v12, 0x0

    if-eqz v1, :cond_15

    .line 516
    const-string v1, "cameraMotorControlInnerLocked:: no control in factory binary."

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v12

    .line 519
    :cond_15
    const-string v1, "/sys/class/sec/sliding_motor/enable"

    invoke-direct {v0, v1, v12}, Lcom/android/server/input/CameraMotorManagerService;->sysfsCheck(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_23

    .line 520
    const-string v1, "cameraMotorControlInnerLocked:: no control without motor path"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return v12

    .line 525
    :cond_23
    if-nez v8, :cond_27

    .line 526
    move v1, v12

    goto :goto_29

    :cond_27
    const/16 v1, 0x9

    :goto_29
    move v14, v1

    .line 527
    .local v14, "targetPosition":I
    invoke-direct {v0, v14}, Lcom/android/server/input/CameraMotorManagerService;->getCameraPosition(I)I

    move-result v15

    .line 528
    .local v15, "currentPosition":I
    const/4 v7, -0x1

    if-ne v15, v7, :cond_3e

    .line 529
    const-string v1, "cameraMotorControlInnerLocked:: Position ERROR!!"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/16 v1, -0x12c

    move-wide/from16 v4, p1

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/input/CameraMotorManagerService;->notifyResultMotorPosition(JI)Z

    .line 531
    return v12

    .line 533
    :cond_3e
    move-wide/from16 v4, p1

    const-wide/16 v16, 0x1

    const/4 v2, 0x2

    if-ne v14, v15, :cond_85

    .line 534
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    if-eq v1, v8, :cond_6e

    .line 535
    if-ne v9, v2, :cond_4e

    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    goto :goto_4f

    :cond_4e
    move v1, v9

    :goto_4f
    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    .line 536
    iput v8, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    .line 537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateTime:J

    .line 538
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    iget-wide v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    add-long v6, v2, v16

    iput-wide v6, v0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    const/4 v7, 0x2

    move-wide/from16 v4, p1

    const/4 v13, 0x1

    move/from16 v6, p3

    const/4 v12, -0x1

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->add(JJII)V

    goto :goto_70

    .line 534
    :cond_6e
    move v12, v7

    const/4 v13, 0x1

    .line 540
    :goto_70
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->onGetMovingTo()I

    move-result v1

    if-eq v1, v8, :cond_7c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->onGetMovingTo()I

    move-result v1

    if-ne v1, v12, :cond_86

    .line 541
    :cond_7c
    const-string v1, "cameraMotorControlInnerLocked:: targetPosition == currentPosition"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->releaseWakeLockForCameraMotor()V

    .line 543
    return v13

    .line 533
    :cond_85
    const/4 v13, 0x1

    .line 548
    :cond_86
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->onGetMovingTo()I

    move-result v1

    if-eq v1, v8, :cond_9f

    .line 549
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mStopper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 550
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v1, v13}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 553
    :cond_9f
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTopPositionMonitorEnable:Z

    .line 555
    if-eqz v15, :cond_ac

    const/16 v2, 0x9

    if-ne v15, v2, :cond_a9

    goto :goto_ac

    .line 558
    :cond_a9
    iput-boolean v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mIsStartedFromEndPoint:Z

    goto :goto_ae

    .line 556
    :cond_ac
    :goto_ac
    iput-boolean v13, v0, Lcom/android/server/input/CameraMotorManagerService;->mIsStartedFromEndPoint:Z

    .line 562
    :goto_ae
    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 563
    .local v12, "battTemp":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    .line 564
    const/16 v2, 0x50

    if-gt v1, v2, :cond_ca

    .line 565
    const/16 v1, 0x960

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    .line 566
    const/4 v7, 0x2

    if-ne v9, v7, :cond_d5

    .line 567
    add-int/lit16 v1, v1, 0x258

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    goto :goto_d5

    .line 570
    :cond_ca
    const/4 v7, 0x2

    const/16 v1, 0x44c

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    .line 571
    if-ne v9, v7, :cond_d5

    .line 572
    add-int/lit16 v1, v1, 0x15e

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    .line 575
    :cond_d5
    :goto_d5
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTempQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    iget-wide v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateTime:J

    iget v4, v0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 578
    if-nez v8, :cond_ea

    .line 579
    if-eq v9, v7, :cond_e6

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorDown()Z

    goto :goto_f5

    .line 582
    :cond_e6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorRetryDown()Z

    goto :goto_f5

    .line 584
    :cond_ea
    if-ne v8, v13, :cond_f5

    .line 585
    if-eq v9, v7, :cond_f2

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorUp()Z

    goto :goto_f5

    .line 588
    :cond_f2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/input/CameraMotorManagerService;->cameraMotorRetryUp()Z

    .line 591
    :cond_f5
    :goto_f5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraMotorControlInnerLocked::("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-direct {v0, v8}, Lcom/android/server/input/CameraMotorManagerService;->StateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Lcom/android/server/input/CameraMotorManagerService;->FromToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BatteryTemp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-ne v9, v7, :cond_13a

    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    goto :goto_13b

    :cond_13a
    move v1, v9

    :goto_13b
    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    .line 597
    iput v8, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateTime:J

    .line 599
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    iget-wide v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    add-long v4, v2, v16

    iput-wide v4, v0, Lcom/android/server/input/CameraMotorManagerService;->mCount:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move v11, v7

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->add(JJII)V

    .line 602
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    if-nez v1, :cond_15f

    .line 603
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    goto :goto_163

    .line 605
    :cond_15f
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    .line 607
    :goto_163
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_16e

    .line 608
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    goto :goto_178

    .line 609
    :cond_16e
    and-int/lit16 v1, v10, 0x200

    if-eqz v1, :cond_178

    .line 610
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    .line 614
    :cond_178
    :goto_178
    if-eq v9, v11, :cond_17d

    .line 615
    iput v13, v0, Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I

    goto :goto_182

    .line 617
    :cond_17d
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mRetryCnt:I

    .line 619
    :goto_182
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraPositionHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/server/input/CameraMotorManagerService;->mStopper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    const/4 v2, 0x3

    if-ne v1, v13, :cond_199

    .line 623
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 624
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->sendEmptyMessage(I)Z

    goto :goto_1b3

    .line 625
    :cond_199
    if-nez v1, :cond_1b3

    .line 626
    const-wide/16 v3, 0x0

    .line 627
    .local v3, "delay":J
    iget v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestStateFrom:I

    const/4 v5, 0x7

    if-ne v1, v5, :cond_1a4

    .line 629
    const-wide/16 v3, 0x7d0

    .line 633
    :cond_1a4
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 634
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 635
    iget-object v1, v0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 638
    .end local v3    # "delay":J
    :cond_1b3
    :goto_1b3
    return v13
.end method

.method private cameraMotorDown()Z
    .registers 3

    .line 673
    const-string v0, "/sys/class/sec/sliding_motor/enable"

    const-string v1, "1 0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 674
    .local v0, "ret":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V

    .line 675
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->writeMotorContorlCountToEfs()V

    .line 676
    return v0
.end method

.method private cameraMotorRetryDown()Z
    .registers 5

    .line 661
    const/4 v0, 0x0

    .line 662
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    const-string v2, "/sys/class/sec/sliding_motor/retry"

    const/16 v3, 0x50

    if-gt v1, v3, :cond_10

    .line 663
    const-string v1, "600 -1"

    invoke-direct {p0, v2, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    .line 665
    :cond_10
    const-string v1, "350 -1"

    invoke-direct {p0, v2, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 667
    :goto_16
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V

    .line 668
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->writeMotorContorlCountToEfs()V

    .line 669
    return v0
.end method

.method private cameraMotorRetryUp()Z
    .registers 5

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "ret":Z
    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTemp:I

    const-string v2, "/sys/class/sec/sliding_motor/retry"

    const/16 v3, 0x50

    if-gt v1, v3, :cond_10

    .line 651
    const-string v1, "600 1"

    invoke-direct {p0, v2, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_16

    .line 653
    :cond_10
    const-string v1, "350 1"

    invoke-direct {p0, v2, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 655
    :goto_16
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V

    .line 656
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->writeMotorContorlCountToEfs()V

    .line 657
    return v0
.end method

.method private cameraMotorStop()Z
    .registers 3

    .line 680
    const-string v0, "CameraMotorManagerService"

    const-string v1, "cameraMotorSTOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v0, "/sys/class/sec/sliding_motor/enable"

    const-string v1, "0 0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 682
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V

    .line 683
    const/4 v0, 0x1

    return v0
.end method

.method private cameraMotorUp()Z
    .registers 3

    .line 642
    const-string v0, "/sys/class/sec/sliding_motor/enable"

    const-string v1, "1 1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 643
    .local v0, "ret":Z
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/input/CameraMotorManagerService;->onSetMovingTo(I)V

    .line 644
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->writeMotorContorlCountToEfs()V

    .line 645
    return v0
.end method

.method private deliverCameraMotorPositionChanged(JI)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "updown"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mTempCameraMotorPositionChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 347
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 349
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 350
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mTempCameraMotorPositionChangedListenersToNotify:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    .line 351
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;

    .line 350
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 353
    .end local v2    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_34

    .line 354
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_33

    .line 355
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mTempCameraMotorPositionChangedListenersToNotify:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;->notifyCameraMotorPositionChanged(JI)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 358
    .end local v0    # "i":I
    :cond_33
    return-void

    .line 353
    .end local v1    # "numListeners":I
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private fileExist(Ljava/lang/String;)Z
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1122
    const/4 v0, 0x0

    .line 1124
    .local v0, "exist":Z
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move v0, v1

    .line 1128
    goto :goto_10

    .line 1126
    :catch_c
    move-exception v1

    .line 1127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1130
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_10
    return v0
.end method

.method private getBlockCameraMotorControl()Z
    .registers 3

    .line 417
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockCameraMotorControl:Z

    monitor-exit v0

    return v1

    .line 419
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getCameraPosition(I)I
    .registers 7
    .param p1, "target"    # I

    .line 1134
    const/4 v0, -0x1

    .line 1135
    .local v0, "pos":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsAvailablePosition:Z

    .line 1136
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne p1, v2, :cond_32

    .line 1137
    const-string v2, "/sys/class/sec/sec_key/enableHALL"

    invoke-direct {p0, v2}, Lcom/android/server/input/CameraMotorManagerService;->readDistanceFromSysfs(Ljava/lang/String;)I

    move-result v2

    .line 1138
    .local v2, "distanceUp":I
    if-nez v2, :cond_14

    .line 1139
    const/16 v0, 0x9

    goto :goto_1b

    .line 1141
    :cond_14
    if-lez v2, :cond_19

    .line 1142
    rsub-int/lit8 v0, v2, 0x9

    goto :goto_1b

    .line 1144
    :cond_19
    iput-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsAvailablePosition:Z

    .line 1146
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    .end local v2    # "distanceUp":I
    goto :goto_5a

    .line 1147
    :cond_32
    if-nez p1, :cond_5a

    .line 1148
    const-string v2, "/sys/class/sec/sec_key/enableReverseHALL"

    invoke-direct {p0, v2}, Lcom/android/server/input/CameraMotorManagerService;->readDistanceFromSysfs(Ljava/lang/String;)I

    move-result v2

    .line 1149
    .local v2, "distanceDown":I
    if-nez v2, :cond_3e

    .line 1150
    const/4 v0, 0x0

    goto :goto_44

    .line 1152
    :cond_3e
    if-lez v2, :cond_42

    .line 1153
    move v0, v2

    goto :goto_44

    .line 1155
    :cond_42
    iput-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsAvailablePosition:Z

    .line 1157
    :goto_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    goto :goto_5b

    .line 1147
    .end local v2    # "distanceDown":I
    :cond_5a
    :goto_5a
    nop

    .line 1161
    :goto_5b
    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastPosition:I

    if-eq v1, v0, :cond_91

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraPosition:: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iput v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastPosition:I

    .line 1164
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mPositionQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastPosition:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 1166
    :cond_91
    return v0
.end method

.method private notifyResultMotorPosition(JI)Z
    .registers 7
    .param p1, "whenNanos"    # J
    .param p3, "result"    # I

    .line 687
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 688
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 689
    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 690
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 691
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 693
    const/4 v1, 0x1

    return v1
.end method

.method private onCameraMotorPositionChangedListenerDied(I)V
    .registers 4
    .param p1, "pid"    # I

    .line 338
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private onGetMovingTo()I
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingToLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingTo:I

    monitor-exit v0

    return v1

    .line 300
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private onSetMovingTo(I)V
    .registers 4
    .param p1, "movingTo"    # I

    .line 304
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingToLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    const/4 v1, -0x1

    :try_start_4
    iput v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingTo:I

    .line 306
    if-eqz p1, :cond_b

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    .line 307
    :cond_b
    iput p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMovingTo:I

    .line 309
    :cond_d
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private readDistanceFromSysfs(Ljava/lang/String;)I
    .registers 12
    .param p1, "path"    # Ljava/lang/String;

    .line 1170
    const-string v0, "CameraMotorManagerService"

    const/4 v1, -0x1

    if-nez p1, :cond_c

    .line 1171
    const-string/jumbo v2, "readDistanceFromSysfs:: path is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    return v1

    .line 1175
    :cond_c
    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    .line 1176
    .local v3, "data":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/input/CameraMotorManagerService;->sysfsRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1177
    .local v4, "values":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1179
    .local v5, "ret":I
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    .line 1180
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v0, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v2, :cond_3e

    .line 1182
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 1183
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 1184
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    .line 1190
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :cond_3e
    nop

    .line 1195
    aget-object v0, v3, v9

    .line 1196
    .local v0, "distance":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 1197
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1198
    .end local v5    # "ret":I
    .local v1, "ret":I
    if-ltz v1, :cond_50

    const/4 v2, 0x4

    if-le v1, v2, :cond_51

    .line 1199
    :cond_50
    const/4 v1, -0x1

    .line 1206
    :cond_51
    aget-object v2, v3, v8

    iput-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastDigitalHallIcRawAdc:Ljava/lang/String;

    .line 1207
    return v1

    .line 1203
    .end local v1    # "ret":I
    .restart local v5    # "ret":I
    :cond_56
    return v1

    .line 1191
    .end local v0    # "distance":Ljava/lang/String;
    :cond_57
    const-string v2, "camera position raw is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return v1
.end method

.method private releaseWakeLockForCameraMotor()V
    .registers 4

    .line 1342
    const-string v0, "CameraMotorManagerService"

    :try_start_2
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1343
    const-string/jumbo v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    .line 1348
    :cond_15
    goto :goto_1c

    .line 1346
    :catch_16
    move-exception v1

    .line 1347
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1349
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method private requestRegisterFreeFall()Z
    .registers 7

    .line 457
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mSensorIsRegistered:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 460
    monitor-exit v0

    return v2

    .line 462
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mSensorIsRegistered:Z

    .line 463
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3f

    .line 464
    const-string v0, "CameraMotorManagerService"

    const-string/jumbo v1, "requestRegisterFreeFall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/android/server/input/CameraMotorManagerService;->mDropSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 467
    sget-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v3, Lcom/android/server/input/CameraMotorManagerService;->mGripSensor:Landroid/hardware/Sensor;

    const/16 v4, 0x1e14

    iget-object v5, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 471
    .local v0, "time":J
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    const/16 v4, 0x63

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 472
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 473
    return v2

    .line 463
    .end local v0    # "time":J
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private requestUnregisterFreeFall()Z
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mSensorIsRegistered:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 480
    monitor-exit v0

    return v2

    .line 482
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mSensorIsRegistered:Z

    .line 483
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_34

    .line 484
    const-string v0, "CameraMotorManagerService"

    const-string/jumbo v1, "requestUnregisterFreeFall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 486
    sget-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 489
    .local v0, "time":J
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 490
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->add(JI)V

    .line 491
    return v2

    .line 483
    .end local v0    # "time":J
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private runCameraMotorControlInner(JIII)Z
    .registers 15
    .param p1, "time"    # J
    .param p3, "updownState"    # I
    .param p4, "from"    # I
    .param p5, "flags"    # I

    .line 495
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    if-nez v0, :cond_6

    .line 496
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_6
    new-instance v8, Lcom/android/server/input/CameraMotorManagerService$1;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/input/CameraMotorManagerService$1;-><init>(Lcom/android/server/input/CameraMotorManagerService;JIII)V

    invoke-virtual {v0, v8}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->post(Ljava/lang/Runnable;)Z

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method private sysfsCheck(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "read"    # Z

    .line 1035
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_19

    .line 1036
    const/4 v2, 0x0

    .line 1039
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_f} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_15

    move-object v2, v3

    .line 1042
    nop

    .line 1043
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 1044
    return v1

    .line 1045
    :catch_15
    move-exception v0

    .line 1046
    .local v0, "io":Ljava/io/IOException;
    return v1

    .line 1040
    .end local v0    # "io":Ljava/io/IOException;
    :catch_17
    move-exception v1

    .line 1041
    .local v1, "e":Ljava/io/FileNotFoundException;
    return v0

    .line 1049
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "in":Ljava/io/FileInputStream;
    :cond_19
    const/4 v2, 0x0

    .line 1052
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_24} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_2a

    move-object v2, v3

    .line 1055
    nop

    .line 1056
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    .line 1057
    return v1

    .line 1058
    :catch_2a
    move-exception v0

    .line 1059
    .restart local v0    # "io":Ljava/io/IOException;
    return v1

    .line 1053
    .end local v0    # "io":Ljava/io/IOException;
    :catch_2c
    move-exception v1

    .line 1054
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    return v0
.end method

.method private sysfsRead(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "filepath"    # Ljava/lang/String;

    .line 1091
    const-string v0, ""

    .line 1092
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1095
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    .line 1096
    nop

    .line 1097
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1098
    if-eqz v0, :cond_1d

    .line 1099
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_29
    .catchall {:try_start_3 .. :try_end_1c} :catchall_27

    move-object v0, v2

    .line 1105
    :cond_1d
    nop

    .line 1107
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 1110
    :goto_21
    goto :goto_33

    .line 1108
    :catch_22
    move-exception v2

    .line 1109
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_21

    .line 1105
    :catchall_27
    move-exception v2

    goto :goto_39

    .line 1102
    :catch_29
    move-exception v2

    .line 1103
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 1105
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_33

    .line 1107
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_22

    goto :goto_21

    .line 1114
    :cond_33
    :goto_33
    if-eqz v0, :cond_36

    .line 1115
    return-object v0

    .line 1117
    :cond_36
    const-string v2, ""

    return-object v2

    .line 1105
    :goto_39
    if-eqz v1, :cond_43

    .line 1107
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 1110
    goto :goto_43

    .line 1108
    :catch_3f
    move-exception v3

    .line 1109
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1112
    .end local v3    # "e":Ljava/io/IOException;
    :cond_43
    :goto_43
    throw v2
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1065
    const/4 v0, 0x0

    .line 1068
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1b

    move-object v0, v2

    .line 1072
    nop

    .line 1073
    :try_start_e
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1074
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1083
    nop

    .line 1084
    const/4 v1, 0x1

    return v1

    .line 1075
    :catch_1b
    move-exception v2

    goto :goto_22

    .line 1069
    :catch_1d
    move-exception v2

    .line 1070
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_1b

    .line 1071
    return v1

    .line 1076
    .local v2, "e":Ljava/io/IOException;
    :goto_22
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1078
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 1081
    goto :goto_2d

    .line 1079
    :catch_29
    move-exception v3

    .line 1080
    .local v3, "err":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1082
    .end local v3    # "err":Ljava/lang/Exception;
    :goto_2d
    return v1
.end method

.method private writeMotorContorlCountToEfs()V
    .registers 5

    .line 1009
    const-string v0, "/efs/CamMotorSlideCnt"

    invoke-direct {p0, v0}, Lcom/android/server/input/CameraMotorManagerService;->sysfsRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "prevCnt":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1012
    const/4 v2, 0x0

    .local v2, "cnt":I
    goto :goto_14

    .line 1014
    .end local v2    # "cnt":I
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1016
    .restart local v2    # "cnt":I
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 1017
    iput v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorControlCount:I

    .line 1018
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1019
    return-void
.end method

.method private writeMotorRetryCountToEfs()V
    .registers 5

    .line 1022
    const-string v0, "/efs/CamMotorRetryCnt"

    invoke-direct {p0, v0}, Lcom/android/server/input/CameraMotorManagerService;->sysfsRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, "prevCnt":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1025
    const/4 v2, 0x0

    .local v2, "cnt":I
    goto :goto_14

    .line 1027
    .end local v2    # "cnt":I
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1029
    .restart local v2    # "cnt":I
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 1030
    iput v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorRetryCount:I

    .line 1031
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1032
    return-void
.end method


# virtual methods
.method public cameraMotorControl(IZI)Z
    .registers 14
    .param p1, "fromwho"    # I
    .param p2, "updown"    # Z
    .param p3, "flags"    # I

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraMotorControl:: from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_12

    const-string v1, " UP"

    goto :goto_14

    :cond_12
    const-string v1, " DOWN"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/android/server/input/CameraMotorManagerService;->getBlockCameraMotorControl()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 437
    const-string v0, "CameraMotorManagerService"

    const-string v1, "cameraMotorControl:: mBlockCameraMotorControl is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v0, 0x0

    return v0

    .line 441
    :cond_37
    move v0, p2

    .line 442
    .local v0, "updownState":I
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_3b
    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mLastRequestState:I

    const/4 v7, 0x1

    if-ne v2, v0, :cond_4f

    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mTargetPosition:I

    and-int/lit16 v2, v2, -0x100

    if-ne v2, p3, :cond_4f

    .line 445
    const-string v2, "CameraMotorManagerService"

    const-string v3, "cameraMotorControl:: return : same as before(state, flag)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v1

    return v7

    .line 448
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_5d

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 451
    .local v8, "time":J
    move-object v1, p0

    move-wide v2, v8

    move v4, v0

    move v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z

    .line 453
    return v7

    .line 448
    .end local v8    # "time":J
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1399
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "CameraMotorManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1400
    :cond_b
    const-string v0, "Camera Motor Manager (dumpsys cameramotor)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  CAMERA_MOTOR_PATH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/class/sec/sliding_motor/enable"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/CameraMotorManagerService;->sysfsCheck(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  CAMERA_POSITION_PATH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/class/sec/sec_key/enableHALL"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/input/CameraMotorManagerService;->sysfsCheck(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  CAMERA_REVERSE_POSITION_PATH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sys/class/sec/sec_key/enableReverseHALL"

    invoke-direct {p0, v1, v3}, Lcom/android/server/input/CameraMotorManagerService;->sysfsCheck(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  PATH_MOTOR_CONTROL_COUNT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/efs/CamMotorSlideCnt"

    invoke-direct {p0, v1, v2}, Lcom/android/server/input/CameraMotorManagerService;->sysfsCheck(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1408
    :try_start_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  last State Queue([cnt, time, state, from] state=1:up,0:down) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mStateQueue:Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;

    invoke-virtual {v2}, Lcom/android/server/input/CameraMotorManagerService$CameraPositionStateQueue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    const-string v1, "  Conditions of camera position :"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mActivatedCameraIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mActivatedCameraIds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsOpened = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsGripped = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsGripped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_7d .. :try_end_df} :catchall_1dd

    .line 1415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Battery Temperature Queue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBatteryTempQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-virtual {v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMotorOperationTimeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorOperationTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDropSensor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/input/CameraMotorManagerService;->mDropSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Drop Sensor Queue([time, value] value=-1:unr,99:reg) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-virtual {v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGripSensor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/input/CameraMotorManagerService;->mGripSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Grip Sensor Queue([time, value] value=-1:unr,99:reg) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensorQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-virtual {v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAvailablePosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsAvailablePosition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Positions Queue([time, value] value=0~9) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mPositionQueue:Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;

    invoke-virtual {v1}, Lcom/android/server/input/CameraMotorManagerService$SensorEventQueue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mMotorControlCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1426
    :try_start_1c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  CameraMotorPositionChangedListeners = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    monitor-exit v1

    .line 1428
    return-void

    .line 1427
    :catchall_1da
    move-exception v0

    monitor-exit v1
    :try_end_1dc
    .catchall {:try_start_1c2 .. :try_end_1dc} :catchall_1da

    throw v0

    .line 1413
    :catchall_1dd
    move-exception v1

    :try_start_1de
    monitor-exit v0
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1dd

    throw v1
.end method

.method public getBlockTimeForCamera()J
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockTimeForCamera:J

    monitor-exit v0

    return-wide v1

    .line 431
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public registerCameraMotorPositionChangedListener(Landroid/hardware/input/ICameraMotorPositionChangedListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/ICameraMotorPositionChangedListener;

    .line 315
    if-eqz p1, :cond_38

    .line 319
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 321
    .local v1, "callingPid":I
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 325
    new-instance v2, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;-><init>(Lcom/android/server/input/CameraMotorManagerService;ILandroid/hardware/input/ICameraMotorPositionChangedListener;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_35

    .line 328
    .local v2, "record":Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;
    :try_start_16
    invoke-interface {p1}, Landroid/hardware/input/ICameraMotorPositionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 329
    .local v3, "binder":Landroid/os/IBinder;
    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_26
    .catchall {:try_start_16 .. :try_end_1e} :catchall_35

    .line 332
    .end local v3    # "binder":Landroid/os/IBinder;
    nop

    .line 333
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorPositionChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    .end local v1    # "callingPid":I
    .end local v2    # "record":Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;
    monitor-exit v0

    .line 335
    return-void

    .line 330
    .restart local v1    # "callingPid":I
    .restart local v2    # "record":Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;
    :catch_26
    move-exception v3

    .line 331
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/input/CameraMotorManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ICameraMotorPositionChangedListener;
    throw v4

    .line 322
    .end local v2    # "record":Lcom/android/server/input/CameraMotorManagerService$CameraMotorPositionChangedListenerRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/input/CameraMotorManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ICameraMotorPositionChangedListener;
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The calling process has already registered a CameraMotorPositionChangedListener."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/input/CameraMotorManagerService;
    .end local p1    # "listener":Landroid/hardware/input/ICameraMotorPositionChangedListener;
    throw v2

    .line 334
    .end local v1    # "callingPid":I
    .restart local p0    # "this":Lcom/android/server/input/CameraMotorManagerService;
    .restart local p1    # "listener":Landroid/hardware/input/ICameraMotorPositionChangedListener;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1

    .line 316
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlockCameraMotorControl(Z)V
    .registers 7
    .param p1, "block"    # Z

    .line 404
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockCameraMotorControl:Z

    if-eq v1, p1, :cond_19

    .line 406
    iput-boolean p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockCameraMotorControl:Z

    .line 407
    const/4 v1, 0x6

    if-eqz p1, :cond_14

    .line 408
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19

    .line 410
    :cond_14
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->removeMessages(I)V

    .line 413
    :cond_19
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_34

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBlockCameraMotorControl:: block = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockCameraMotorControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 413
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public setBlockTimeForCamera(J)V
    .registers 8
    .param p1, "time"    # J

    .line 423
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    iput-wide p1, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockTimeForCamera:J

    .line 425
    const-string v1, "CameraMotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBlockTimeForCamera:: time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mBlockTimeForCamera:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    monitor-exit v0

    .line 427
    return-void

    .line 426
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public start()V
    .registers 3

    .line 246
    const-string v0, "CameraMotorManagerService"

    const-string v1, "Starting CameraMotor manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public systemRunning()V
    .registers 9

    .line 250
    const-string v0, "CameraMotorManagerService"

    const-string v1, "CameraMotorManagerService System ready."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v2}, Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 254
    const v1, 0x10042

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/CameraMotorManagerService;->mDropSensor:Landroid/hardware/Sensor;

    .line 255
    sget-object v0, Lcom/android/server/input/CameraMotorManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10018

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/input/CameraMotorManagerService;->mGripSensor:Landroid/hardware/Sensor;

    .line 258
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 259
    iget-object v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mCamAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mCameraMotorControlHandler:Lcom/android/server/input/CameraMotorManagerService$CameraMotorControlHandler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const/4 v1, -0x1

    const/16 v2, -0x100

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    .line 263
    iget-object v0, p0, Lcom/android/server/input/CameraMotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_4e
    iput-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mIsOpened:Z

    .line 265
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/input/CameraMotorManagerService;->runCameraMotorControlInner(JIII)Z

    .line 266
    monitor-exit v0

    goto :goto_5f

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_5c

    throw v1

    .line 270
    :cond_5f
    :goto_5f
    sget-boolean v0, Lcom/android/server/input/CameraMotorManagerService;->FACTORY_BINARY:Z

    if-eqz v0, :cond_73

    .line 271
    const-string v0, "CameraMotorManagerService"

    const-string v2, "factory binary. this means that CameraMotorManagerService can\'t control motor."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v0, "vendor.camera.motor.service"

    const-string v2, "CANNOT_CONTROL"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 274
    :cond_73
    const-string/jumbo v0, "vendor.camera.motor.service"

    const-string v2, "STARTED"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_7b
    const-string v0, "/efs/CamMotorSlideCnt"

    invoke-direct {p0, v0}, Lcom/android/server/input/CameraMotorManagerService;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 279
    const-string v0, "/efs/CamMotorSlideCnt"

    const-string v2, "0"

    invoke-direct {p0, v0, v2}, Lcom/android/server/input/CameraMotorManagerService;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    .line 283
    :cond_8a
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/input/CameraMotorManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 289
    iget-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 290
    const-string v3, "CameraMotorService Wake Lock"

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/input/CameraMotorManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 292
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 294
    iput-boolean v1, p0, Lcom/android/server/input/CameraMotorManagerService;->mSystemReady:Z

    .line 295
    return-void
.end method
