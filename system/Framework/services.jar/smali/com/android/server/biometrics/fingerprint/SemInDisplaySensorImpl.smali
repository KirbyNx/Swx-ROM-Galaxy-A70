.class public Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
.super Ljava/lang/Object;
.source "SemInDisplaySensorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$A11yVisibilityLimit;,
        Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$DisplayAdjustmentManager;,
        Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;,
        Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;,
        Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;,
        Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FOD_POS_PATH:Ljava/lang/String; = "/sys/class/fingerprint/fingerprint/position"

.field private static final FOD_TSP_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field protected static final HW_LIGHT_GREEN_CIRCLE_DRAW:Ljava/lang/String; = "1"

.field protected static final HW_LIGHT_GREEN_CIRCLE_HIDE:Ljava/lang/String; = "0"

.field private static final HW_LIGHT_SOURCE_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/fp_green_circle"

.field private static final IS_OPTICAL:Z

.field private static final OPTICAL_CALIBRATION_LOW_BRIGHTNESS:I = 0x2

.field private static final OPTICAL_CALIBRATION_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field public static final TIME_DOZE_RESET:I = 0x2710

.field protected static final TSP_FOD_DISABLE:Ljava/lang/String; = "fod_enable,0"

.field protected static final TSP_FOD_ENABLE_0:Ljava/lang/String; = "fod_enable,1,1,0"

.field protected static final TSP_FOD_ENABLE_50:Ljava/lang/String; = "fod_enable,1,0,0"

.field protected static final TSP_FOD_LP_DISABLE:Ljava/lang/String; = "fod_lp_mode,0"

.field protected static final TSP_FOD_LP_ENABLE:Ljava/lang/String; = "fod_lp_mode,1"

.field protected static final TSP_FOD_STRICT_ENABLE_0:Ljava/lang/String; = "fod_enable,1,1,1"

.field protected static final TSP_FOD_STRICT_ENABLE_50:Ljava/lang/String; = "fod_enable,1,0,1"

.field protected static final TSP_FOD_STRICT_MODE:Ljava/lang/String; = "fod_strict"

.field protected static final TSP_FOD_TEMPERATURE:Ljava/lang/String; = "set_temperature,1"

.field private static mIsStrictMode:Z

.field private static mIsTspLpMode:Z

.field private static mLatestTspMode:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mBurnInHelper:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;

.field private mContext:Landroid/content/Context;

.field private mFodLimitationListener:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

.field private mHandler:Landroid/os/Handler;

.field private mLatestHwLightMode:Ljava/lang/String;

.field private mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

.field private mSemSensorActiveArea:Ljava/lang/String;

.field private mSemSensorAreaHeight:Ljava/lang/String;

.field private mSemSensorAreaWidth:Ljava/lang/String;

.field private mSemSensorDraggingArea:Ljava/lang/String;

.field private mSemSensorImageSize:Ljava/lang/String;

.field private mSemSensorMarginBottom:Ljava/lang/String;

.field private mSemSensorMarginLeft:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z

    .line 63
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->sInstanceLock:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mIsStrictMode:Z

    .line 96
    const-string v0, ""

    sput-object v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "9"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 90
    const-string v0, "4"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 91
    const-string v0, "13.77"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 92
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 93
    const-string v0, "13.00"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorImageSize:Ljava/lang/String;

    .line 94
    const-string v0, "14.80"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorActiveArea:Ljava/lang/String;

    .line 95
    const-string v0, "5.00"

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestHwLightMode:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemFingerprintServiceExtImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mFodLimitationListener:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    .line 109
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v0, :cond_43

    .line 110
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;-><init>(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    .line 112
    :cond_43
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 55
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .line 55
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;
    .registers 2

    .line 115
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->sInstance:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    if-nez v1, :cond_e

    .line 117
    new-instance v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    invoke-direct {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->sInstance:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    .line 119
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 120
    sget-object v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->sInstance:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    return-object v0

    .line 119
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static getOpticalSensorHelper()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;
    .registers 1

    .line 124
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInstance()Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    return-object v0
.end method

.method static synthetic lambda$notifyFingerStartEventToTSP$0()V
    .registers 2

    .line 141
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "set_temperature,1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    .line 142
    return-void
.end method

.method static synthetic lambda$setTspLpMode$1(Z)V
    .registers 4
    .param p0, "on"    # Z

    .line 175
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mIsTspLpMode:Z

    if-ne v0, p0, :cond_5

    .line 176
    return-void

    .line 178
    :cond_5
    sput-boolean p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mIsTspLpMode:Z

    .line 179
    if-eqz p0, :cond_c

    const-string v0, "fod_lp_mode,1"

    goto :goto_e

    :cond_c
    const-string v0, "fod_lp_mode,0"

    .line 180
    .local v0, "lpCmd":Ljava/lang/String;
    :goto_e
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    .line 181
    sget-boolean v1, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-nez v1, :cond_26

    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 182
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTspLpMode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_42
    return-void
.end method

.method static synthetic lambda$setTspMode$2(Ljava/lang/String;)V
    .registers 5
    .param p0, "mode"    # Ljava/lang/String;

    .line 191
    move-object v0, p0

    .line 192
    .local v0, "currentCmd":Ljava/lang/String;
    const-string v1, "fod_strict"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "fod_enable,1,0,0"

    const-string v3, "fod_enable,1,1,0"

    if-eqz v1, :cond_41

    .line 193
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mIsStrictMode:Z

    if-eqz v1, :cond_27

    .line 194
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 195
    const-string v0, "fod_enable,1,1,1"

    goto :goto_56

    .line 196
    :cond_1c
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 197
    const-string v0, "fod_enable,1,0,1"

    goto :goto_56

    .line 200
    :cond_27
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    const-string v2, "fod_enable,1,1,1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 201
    const-string v0, "fod_enable,1,1,0"

    goto :goto_56

    .line 202
    :cond_34
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    const-string v2, "fod_enable,1,0,1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 203
    const-string v0, "fod_enable,1,0,0"

    goto :goto_56

    .line 207
    :cond_41
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mIsStrictMode:Z

    if-eqz v1, :cond_56

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 209
    const-string v0, "fod_enable,1,1,1"

    goto :goto_56

    .line 210
    :cond_4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 211
    const-string v0, "fod_enable,1,0,1"

    .line 216
    :cond_56
    :goto_56
    sget-object v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 217
    sput-object v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    .line 218
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTspMode: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestTspMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] done"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_8c
    return-void
.end method

.method public static setTspLpMode(Z)V
    .registers 3
    .param p0, "on"    # Z

    .line 174
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$UaXRL1DH6_m19Ojx7ryEPTav3fw;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$UaXRL1DH6_m19Ojx7ryEPTav3fw;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public static setTspMode(Ljava/lang/String;)V
    .registers 3
    .param p0, "mode"    # Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$O0jiMqk3ZntEj-0Sq6pTAhc-jGk;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$O0jiMqk3ZntEj-0Sq6pTAhc-jGk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method


# virtual methods
.method public addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 460
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v0, :cond_9

    .line 461
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 463
    :cond_9
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FOD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInDisplaySensorArea()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v0, :cond_b7

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, HW_LS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    if-eqz v0, :cond_b7

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, B : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, N : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Optical, C : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$300(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$600(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;

    .line 489
    .local v1, "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Optical, M : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    .end local v1    # "c":Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$MaskClient;
    goto :goto_92

    .line 495
    :cond_b7
    return-void
.end method

.method public getFodSensorAreaRect(ILandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 19
    .param p1, "argRotation"    # I
    .param p2, "argSize"    # Landroid/graphics/Point;

    .line 378
    move-object/from16 v1, p0

    const-string v2, "FingerprintService"

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v0

    .line 379
    .local v3, "rect":Landroid/graphics/Rect;
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v0, :cond_f

    .line 380
    return-object v3

    .line 383
    :cond_f
    :try_start_f
    iget-object v0, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 385
    .local v0, "wm":Landroid/view/WindowManager;
    if-nez p2, :cond_29

    .line 386
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 387
    .local v4, "size":Landroid/graphics/Point;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_2b

    .line 389
    .end local v4    # "size":Landroid/graphics/Point;
    :cond_29
    move-object/from16 v4, p2

    .line 392
    .restart local v4    # "size":Landroid/graphics/Point;
    :goto_2b
    if-gez p1, :cond_36

    .line 393
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    .local v5, "rotation":I
    goto :goto_38

    .line 395
    .end local v5    # "rotation":I
    :cond_36
    move/from16 v5, p1

    .line 397
    .restart local v5    # "rotation":I
    :goto_38
    iget-object v6, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 399
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget-object v7, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorImageSize:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x5

    invoke-static {v8, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 400
    .local v7, "fingerImageSize":F
    iget-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v8, v9, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 401
    .local v9, "fingerSensorMarginBottom":F
    iget-object v10, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v8, v10, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 402
    .local v10, "fingerSensorMarginLeft":F
    iget-object v11, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v8, v11, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    .line 405
    .local v8, "fingerSensorHeight":F
    float-to-int v11, v7

    const/4 v12, 0x2

    div-int/2addr v11, v12

    float-to-int v13, v10

    sub-int/2addr v11, v13

    .line 406
    .local v11, "posX":I
    float-to-int v13, v9

    float-to-int v14, v8

    div-int/2addr v14, v12

    add-int/2addr v13, v14

    float-to-int v14, v7

    div-int/2addr v14, v12

    add-int/2addr v13, v14

    .line 408
    .local v13, "posY":I
    if-eqz v5, :cond_c4

    const/4 v14, 0x1

    if-eq v5, v14, :cond_ac

    if-eq v5, v12, :cond_97

    const/4 v14, 0x3

    if-eq v5, v14, :cond_82

    goto :goto_dc

    .line 428
    :cond_82
    iput v13, v3, Landroid/graphics/Rect;->right:I

    .line 429
    iget v14, v3, Landroid/graphics/Rect;->right:I

    float-to-int v15, v7

    sub-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->left:I

    .line 430
    iget v14, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v14, v12

    sub-int/2addr v14, v11

    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 431
    iget v12, v3, Landroid/graphics/Rect;->top:I

    float-to-int v14, v7

    add-int/2addr v12, v14

    iput v12, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_dc

    .line 422
    :cond_97
    iget v14, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v14, v12

    add-int/2addr v14, v11

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 423
    iget v12, v3, Landroid/graphics/Rect;->right:I

    float-to-int v14, v7

    sub-int/2addr v12, v14

    iput v12, v3, Landroid/graphics/Rect;->left:I

    .line 424
    iput v13, v3, Landroid/graphics/Rect;->bottom:I

    .line 425
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    float-to-int v14, v7

    sub-int/2addr v12, v14

    iput v12, v3, Landroid/graphics/Rect;->top:I

    .line 426
    goto :goto_dc

    .line 416
    :cond_ac
    iget v14, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v13

    iput v14, v3, Landroid/graphics/Rect;->left:I

    .line 417
    iget v14, v3, Landroid/graphics/Rect;->left:I

    float-to-int v15, v7

    add-int/2addr v14, v15

    iput v14, v3, Landroid/graphics/Rect;->right:I

    .line 418
    iget v14, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v14, v12

    add-int/2addr v14, v11

    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 419
    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    float-to-int v14, v7

    sub-int/2addr v12, v14

    iput v12, v3, Landroid/graphics/Rect;->top:I

    .line 420
    goto :goto_dc

    .line 410
    :cond_c4
    iget v14, v4, Landroid/graphics/Point;->x:I

    div-int/2addr v14, v12

    sub-int/2addr v14, v11

    iput v14, v3, Landroid/graphics/Rect;->left:I

    .line 411
    iget v12, v3, Landroid/graphics/Rect;->left:I

    float-to-int v14, v7

    add-int/2addr v12, v14

    iput v12, v3, Landroid/graphics/Rect;->right:I

    .line 412
    iget v12, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    iput v12, v3, Landroid/graphics/Rect;->top:I

    .line 413
    iget v12, v3, Landroid/graphics/Rect;->top:I

    float-to-int v14, v7

    add-int/2addr v12, v14

    iput v12, v3, Landroid/graphics/Rect;->bottom:I

    .line 414
    nop

    .line 434
    :goto_dc
    sget-boolean v12, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z

    if-eqz v12, :cond_101

    .line 435
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getFodSensorAreaRect: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_101} :catch_102

    .line 439
    .end local v0    # "wm":Landroid/view/WindowManager;
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "rotation":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "fingerImageSize":F
    .end local v8    # "fingerSensorHeight":F
    .end local v9    # "fingerSensorMarginBottom":F
    .end local v10    # "fingerSensorMarginLeft":F
    .end local v11    # "posX":I
    .end local v13    # "posY":I
    :cond_101
    goto :goto_11b

    .line 437
    :catch_102
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_11b
    return-object v3
.end method

.method public getFodSensorAreaRectForKeyguard()Landroid/graphics/Rect;
    .registers 9

    .line 330
    const-string/jumbo v0, "getFodSensorAreaRectForKeyguard: "

    const-string v1, "FingerprintService"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getFodSensorAreaRect(ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v2

    .line 332
    .local v2, "rect":Landroid/graphics/Rect;
    :try_start_b
    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 333
    .local v3, "wm":Landroid/view/WindowManager;
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 335
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorActiveArea:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x5

    invoke-static {v6, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorImageSize:Ljava/lang/String;

    .line 337
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 336
    invoke-static {v6, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 339
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 338
    invoke-static {v6, v7, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    .line 341
    .local v5, "fingerprintTouchAreaMargin":I
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    if-eqz v6, :cond_97

    const/4 v7, 0x1

    if-eq v6, v7, :cond_82

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6d

    const/4 v7, 0x3

    if-eq v6, v7, :cond_58

    goto :goto_ac

    .line 361
    :cond_58
    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 362
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 363
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 364
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_ac

    .line 355
    :cond_6d
    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 356
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 357
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 358
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 359
    goto :goto_ac

    .line 349
    :cond_82
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 350
    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 351
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 352
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 353
    goto :goto_ac

    .line 343
    :cond_97
    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 344
    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 345
    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 346
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->bottom:I
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_ab} :catch_ad

    .line 347
    nop

    .line 369
    .end local v3    # "wm":Landroid/view/WindowManager;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "fingerprintTouchAreaMargin":I
    :goto_ac
    goto :goto_c4

    .line 367
    :catch_ad
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_c4
    sget-boolean v3, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z

    if-eqz v3, :cond_de

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_de
    return-object v2
.end method

.method public getInDisplaySensorArea()Landroid/os/Bundle;
    .registers 2

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInDisplaySensorArea(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "b"    # Landroid/os/Bundle;

    .line 267
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 268
    .local v0, "area":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaWidth:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 269
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaHeight:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 270
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginBottom:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 271
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginLeft:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 272
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorImageSize:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 273
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorActiveArea:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 274
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorDraggingArea:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, "sem_area"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    sget-boolean v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v1, :cond_59

    .line 277
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->updateOpticalBundle()V
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$000(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mMaxBrightness:F
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$100(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)F

    move-result v1

    const-string v2, "brightness"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 279
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mNits:I
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$200(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)I

    move-result v1

    int-to-float v1, v1

    const-string/jumbo v2, "lightColor"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 280
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # getter for: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$300(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nits"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_59
    return-object p1
.end method

.method public getSensorAreaMarginFromBottomForFod()I
    .registers 6

    .line 444
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->getFodSensorAreaRect(ILandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    .line 445
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 446
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 447
    .local v2, "size":Landroid/graphics/Point;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 448
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    return v3
.end method

.method public getSensorIconRandomPos(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;

    .line 452
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mBurnInHelper:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;

    if-nez v0, :cond_d

    .line 453
    new-instance v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mBurnInHelper:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;

    .line 455
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mBurnInHelper:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->getNextPosition(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;->access$400(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$BurnInHelper;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method handleAuthenticated(Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;Z)V
    .registers 4
    .param p1, "ce"    # Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;
    .param p2, "authenticated"    # Z

    .line 159
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_LIMITATION_WIRELESS_CHARGER:Z

    if-eqz v0, :cond_13

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mFodLimitationListener:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    if-eqz v0, :cond_13

    .line 161
    invoke-virtual {p1}, Lcom/android/server/biometrics/fingerprint/SemFingerprintClientExtImpl;->isKeyguard()Z

    move-result v0

    if-nez v0, :cond_13

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mFodLimitationListener:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->onAuthenticatedResult(Z)V

    .line 166
    :cond_13
    return-void
.end method

.method public handleScreenOnOffBroadcast(ZZ)V
    .registers 4
    .param p1, "on"    # Z
    .param p2, "hasClient"    # Z

    .line 128
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v0, :cond_5

    .line 129
    return-void

    .line 132
    :cond_5
    if-eqz p1, :cond_d

    .line 133
    const-string v0, "fod_enable,1,1,0"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    goto :goto_17

    .line 135
    :cond_d
    if-eqz p2, :cond_12

    const-string v0, "fod_enable,1,0,0"

    goto :goto_14

    :cond_12
    const-string v0, "fod_enable,0"

    :goto_14
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 137
    :goto_17
    return-void
.end method

.method isWirelessPowerLimitationRunning()Z
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mFodLimitationListener:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->isWirelessPowerLimitationRunning()Z

    move-result v0

    return v0

    .line 155
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public notifyFingerStartEventToTSP()V
    .registers 3

    .line 140
    invoke-static {}, Lcom/android/server/biometrics/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;->INSTANCE:Lcom/android/server/biometrics/fingerprint/-$$Lambda$SemInDisplaySensorImpl$rY4LVtcOPK-0OpYBb4MwXxhMJZs;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method observeFodLimitationListener(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 146
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mFodLimitationListener:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;

    if-eqz v0, :cond_7

    .line 147
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$FodLimitationListener;->observe(Z)V

    .line 149
    :cond_7
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .line 474
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v0, :cond_9

    .line 475
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    # invokes: Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->init()V
    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->access$500(Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;)V

    .line 477
    :cond_9
    return-void
.end method

.method public readSensorPosInfo()V
    .registers 17

    .line 235
    move-object/from16 v1, p0

    const-string/jumbo v2, "readSensorConfig: "

    const-string v3, "FingerprintService"

    const-string v0, ", "

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/fingerprint/fingerprint/position"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v5

    .line 237
    .local v5, "buffer":[B
    if-eqz v5, :cond_b0

    .line 239
    :try_start_16
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 240
    .local v6, "sensor":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "sensorConfig":Ljava/lang/String;
    const-string v8, "\\,"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 242
    .local v8, "values":[Ljava/lang/String;
    array-length v9, v8

    const/4 v11, 0x7

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v10, 0x8

    if-lt v9, v10, :cond_4c

    .line 243
    aget-object v9, v8, v15

    iput-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginBottom:Ljava/lang/String;

    .line 244
    aget-object v9, v8, v14

    iput-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginLeft:Ljava/lang/String;

    .line 245
    aget-object v9, v8, v13

    iput-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaWidth:Ljava/lang/String;

    .line 246
    aget-object v9, v8, v12

    iput-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaHeight:Ljava/lang/String;

    .line 247
    aget-object v9, v8, v11

    iput-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorImageSize:Ljava/lang/String;

    .line 248
    const/4 v9, 0x5

    aget-object v11, v8, v9

    iput-object v11, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorActiveArea:Ljava/lang/String;

    .line 249
    aget-object v9, v8, v10

    iput-object v9, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorDraggingArea:Ljava/lang/String;

    .line 251
    :cond_4c
    sget-boolean v9, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->DEBUG:Z

    if-eqz v9, :cond_98

    .line 252
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v13

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " x "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v15

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v14

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x7

    aget-object v11, v8, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    aget-object v11, v8, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v8, v10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_98} :catch_99

    .line 257
    .end local v6    # "sensor":Ljava/lang/String;
    .end local v7    # "sensorConfig":Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    :cond_98
    goto :goto_b0

    .line 255
    :catch_99
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b0
    :goto_b0
    return-void
.end method

.method public removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 467
    sget-boolean v0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->IS_OPTICAL:Z

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mOpticalImpl:Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl$OpticalSensorHelper;->removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 470
    :cond_9
    return-void
.end method

.method public setFodRect()V
    .registers 26

    .line 287
    move-object/from16 v1, p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v2, v0

    .line 290
    .local v2, "size":Landroid/graphics/Point;
    :try_start_8
    iget-object v0, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 291
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 292
    .local v3, "windowManager":Landroid/view/IWindowManager;
    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 295
    iget-object v5, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/biometrics/Utils;->isCutoutNotchHidden(Landroid/content/Context;)Z

    move-result v5
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_d7

    if-eqz v5, :cond_34

    .line 296
    :try_start_22
    iget v5, v2, Landroid/graphics/Point;->y:I

    const-string/jumbo v6, "persist.sys.displayinset.top"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Point;->y:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2e} :catch_2f

    goto :goto_34

    .line 324
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    :catch_2f
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_da

    .line 300
    .restart local v0    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "windowManager":Landroid/view/IWindowManager;
    :cond_34
    :goto_34
    :try_start_34
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 301
    .local v5, "width":I
    int-to-double v6, v5

    iget v8, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v8, v8

    div-double/2addr v6, v8

    .line 302
    .local v6, "widthInch":D
    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-double v8, v8

    div-double/2addr v8, v6

    .line 304
    .local v8, "maxResXdpi":D
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 306
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v11, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorActiveArea:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double/2addr v11, v8

    const-wide v13, 0x3fa42850a0000000L    # 0.03937007859349251

    mul-double/2addr v11, v13

    .line 307
    .local v11, "fingerActiveArea":D
    iget-object v15, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginBottom:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v8

    move/from16 v18, v5

    .end local v5    # "width":I
    .local v18, "width":I
    mul-double v4, v15, v13

    .line 308
    .local v4, "fingerSensorMarginBottom":D
    iget-object v15, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorMarginLeft:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v8

    move-wide/from16 v19, v6

    .end local v6    # "widthInch":D
    .local v19, "widthInch":D
    mul-double v6, v15, v13

    .line 309
    .local v6, "fingerSensorMarginLeft":D
    iget-object v15, v1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mSemSensorAreaHeight:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v15, v8

    mul-double/2addr v13, v15

    .line 312
    .local v13, "fingerSensorHeight":D
    double-to-int v15, v11

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v21, v0

    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    double-to-int v0, v6

    sub-int/2addr v15, v0

    .line 313
    .local v15, "posX":I
    double-to-int v0, v4

    double-to-int v1, v13

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    double-to-int v1, v11

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 316
    .local v0, "posY":I
    iget v1, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v15

    iput v1, v10, Landroid/graphics/Rect;->left:I

    .line 317
    iget v1, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v22, v3

    .end local v3    # "windowManager":Landroid/view/IWindowManager;
    .local v22, "windowManager":Landroid/view/IWindowManager;
    double-to-int v3, v11

    add-int/2addr v1, v3

    iput v1, v10, Landroid/graphics/Rect;->right:I

    .line 318
    iget v1, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, v10, Landroid/graphics/Rect;->top:I

    .line 319
    iget v1, v10, Landroid/graphics/Rect;->top:I

    double-to-int v3, v11

    add-int/2addr v1, v3

    iput v1, v10, Landroid/graphics/Rect;->bottom:I

    .line 321
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "set_fod_rect,%d,%d,%d,%d"

    move/from16 v23, v0

    .end local v0    # "posY":I
    .local v23, "posY":I
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_a5} :catch_d7

    move-object/from16 v24, v2

    .end local v2    # "size":Landroid/graphics/Point;
    .local v24, "size":Landroid/graphics/Point;
    :try_start_a7
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0x0

    aput-object v2, v0, v17

    iget v2, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v17, 0x1

    aput-object v2, v0, v17

    iget v2, v10, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v16

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x3

    aput-object v2, v0, v16

    .line 321
    invoke-static {v1, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_d4} :catch_d5

    .line 326
    .end local v4    # "fingerSensorMarginBottom":D
    .end local v6    # "fingerSensorMarginLeft":D
    .end local v8    # "maxResXdpi":D
    .end local v10    # "rect":Landroid/graphics/Rect;
    .end local v11    # "fingerActiveArea":D
    .end local v13    # "fingerSensorHeight":D
    .end local v15    # "posX":I
    .end local v18    # "width":I
    .end local v19    # "widthInch":D
    .end local v22    # "windowManager":Landroid/view/IWindowManager;
    .end local v23    # "posY":I
    goto :goto_e1

    .line 324
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    :catch_d5
    move-exception v0

    goto :goto_da

    .end local v24    # "size":Landroid/graphics/Point;
    .restart local v2    # "size":Landroid/graphics/Point;
    :catch_d7
    move-exception v0

    move-object/from16 v24, v2

    .line 325
    .end local v2    # "size":Landroid/graphics/Point;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "size":Landroid/graphics/Point;
    :goto_da
    const-string v1, "FingerprintService"

    const-string v2, " setFodRect: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e1
    return-void
.end method

.method public setFodStrictMode(Z)V
    .registers 3
    .param p1, "isStrictMode"    # Z

    .line 169
    sput-boolean p1, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mIsStrictMode:Z

    .line 170
    const-string v0, "fod_strict"

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->setTspMode(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setHwLightMode(Ljava/lang/String;)V
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestHwLightMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 226
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/fp_green_circle"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    .line 227
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-nez v0, :cond_20

    invoke-static {}, Lcom/android/server/biometrics/Utils;->isDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 228
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHwLightMode: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3c
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/SemInDisplaySensorImpl;->mLatestHwLightMode:Ljava/lang/String;

    .line 232
    :cond_3e
    return-void
.end method
