.class Lcom/android/server/display/IntelligenceBrightnessControl;
.super Ljava/lang/Object;
.source "IntelligenceBrightnessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;,
        Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEYGUARD_STATE_UPDATE:Ljava/lang/String; = "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

.field private static final DEBUG:Z = false

.field private static final DEBUG_IBC:Z = true

.field private static final DEBUG_MID:Z

.field private static final DEBUG_SCREENSHOT:Z = false

.field private static final IBC_BRIGHTNESS_EPSILON:F = 1.0E-5f

.field private static final IBC_GRAY_FACTOR:[F

.field private static final IBC_HIGH_TURNING_POINT:F = 0.9411765f

.field private static final IBC_LOW_TURNING_POINT:F = 0.48235294f

.field private static final IBC_MAX_BRIGHTNESS:F = 1.0f

.field private static final IBC_MIN_BRIGHTNESS:F = 0.39215687f

.field private static final IBC_SCENARIO_LIST:[Ljava/lang/String;

.field private static final INPUT_TAIL_DURATION:I = 0x1f4

.field private static final MSG_CHECK_MULTIWINDOW_MODE:I = 0x2

.field private static final MSG_GET_PIXEL_GRAY_FACTOR:I = 0x0

.field private static final MSG_UPDATE_IBC_STATE:I = 0x3

.field private static final MSG_UPDATE_SCREEN_BRIGHTNESS:I = 0x1

.field private static final NO_INPUT_DURATION:I = 0xbb8

.field private static final SAMSUNG_MTP:Ljava/lang/String; = "com.samsung.android.MtpApplication"

.field private static final SAMSUNG_PACKAGEINSTALLER:Ljava/lang/String; = "com.samsung.android.packageinstaller"

.field private static final SAMSUNG_PERMISSIONCONTROLLER:Ljava/lang/String; = "com.samsung.android.permissioncontroller"

.field private static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "IntelligenceBrightnessControl"

.field private static mHeight:I

.field private static mPixels:[I

.field private static mWidth:I


# instance fields
.field private final SCREENSHOT_PERIOD:I

.field private final SET_PERIOD:I

.field private final UPDATE_PERIOD:I

.field private mAutoBrightnessEnable:Z

.field private final mBacklight:Lcom/android/server/lights/LogicalLight;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppPkgName:Ljava/lang/String;

.field private mDpcModiTarget:F

.field private mDpcOrigTarget:F

.field private mGrayLevel:I

.field private final mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIBCEnabled:Z

.field private mIBCReceiver:Landroid/content/BroadcastReceiver;

.field private mIBCWaitAnimating:Z

.field private mIbcCurrent:F

.field private mIbcTarget:F

.field private mInputManager:Landroid/hardware/input/IInputManager;

.field private mIsIBCScenario:Z

.field private mIsScreenOn:Z

.field private mMultiWindowOff:Z

.field private mNeedFirstScreenshot:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mRealMetrics:Landroid/util/DisplayMetrics;

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mSetBrightnessRunable:Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 30

    .line 64
    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.baidu.searchbox"

    const-string v4, "com.facebook.katana"

    const-string v5, "com.google.android.talk"

    const-string v6, "com.kakao.talk"

    const-string v7, "com.whatsapp"

    const-string v8, "com.sec.android.app.sbrowser"

    const-string v9, "com.UCMobile"

    const-string v10, "com.tencent.mtt"

    const-string v11, "com.qihoo.browser"

    const-string v12, "com.android.chrome"

    const-string v13, "com.taobao.taobao"

    const-string v14, "com.jingdong.app.mall"

    const-string v15, "com.tmall.wireless"

    const-string v16, "com.xunmeng.pinduoduo"

    const-string v17, "com.achievo.vipshop"

    const-string v18, "com.ss.android.article.news"

    const-string v19, "com.netease.newsreader.activity"

    const-string v20, "com.sohu.newsclient"

    const-string v21, "com.tencent.news"

    const-string v22, "com.tencent.reading"

    const-string v23, "com.ifeng.news2"

    const-string v24, "com.zhihu.android"

    const-string v25, "com.mci.smagazine"

    const-string v26, "com.shuqi.controller"

    const-string v27, "com.qq.reader"

    const-string v28, "com.tencent.weread"

    const-string v29, "com.ophone.reader.ui"

    filled-new-array/range {v0 .. v29}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/IntelligenceBrightnessControl;->IBC_SCENARIO_LIST:[Ljava/lang/String;

    .line 81
    nop

    .line 82
    const-string/jumbo v0, "ro.boot.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/android/server/display/IntelligenceBrightnessControl;->IBC_GRAY_FACTOR:[F

    return-void

    nop

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
        0x3f666666    # 0.9f
        0x3f59999a    # 0.85f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/RampAnimator;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p2, "rampAnimator":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<Lcom/android/server/display/DisplayPowerState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mGrayLevel:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    .line 109
    iput v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcOrigTarget:F

    .line 110
    iput v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F

    .line 111
    iput v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    .line 113
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mAutoBrightnessEnable:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsScreenOn:Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mMultiWindowOff:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mNeedFirstScreenshot:Z

    .line 121
    const/16 v2, 0x7530

    iput v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->SCREENSHOT_PERIOD:I

    .line 122
    const/16 v2, 0x2bc

    iput v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->SET_PERIOD:I

    .line 123
    const/16 v2, 0x2710

    iput v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->UPDATE_PERIOD:I

    .line 131
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mCurrentAppPkgName:Ljava/lang/String;

    .line 779
    new-instance v2, Lcom/android/server/display/IntelligenceBrightnessControl$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/IntelligenceBrightnessControl$1;-><init>(Lcom/android/server/display/IntelligenceBrightnessControl;)V

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 810
    new-instance v2, Lcom/android/server/display/IntelligenceBrightnessControl$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/IntelligenceBrightnessControl$2;-><init>(Lcom/android/server/display/IntelligenceBrightnessControl;)V

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mContext:Landroid/content/Context;

    .line 146
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "IBC Handler Thread"

    invoke-direct {v2, v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 147
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v2, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;-><init>(Lcom/android/server/display/IntelligenceBrightnessControl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    .line 150
    new-instance v2, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;-><init>(Lcom/android/server/display/IntelligenceBrightnessControl;Lcom/android/server/display/IntelligenceBrightnessControl$1;)V

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mSetBrightnessRunable:Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;

    .line 151
    iput-object p2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 152
    const-string/jumbo v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mInputManager:Landroid/hardware/input/IInputManager;

    .line 153
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 164
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mWindowManager:Landroid/view/WindowManager;

    .line 165
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    .line 167
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->pixelGcd(II)I

    move-result v2

    .line 173
    .local v2, "mRealMetricsGcd":I
    if-le v2, v1, :cond_b0

    .line 174
    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v3, v2

    sput v3, Lcom/android/server/display/IntelligenceBrightnessControl;->mWidth:I

    .line 175
    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v3, v2

    sput v3, Lcom/android/server/display/IntelligenceBrightnessControl;->mHeight:I

    goto :goto_c0

    .line 177
    :cond_b0
    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x64

    sput v3, Lcom/android/server/display/IntelligenceBrightnessControl;->mWidth:I

    .line 178
    iget-object v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x64

    sput v3, Lcom/android/server/display/IntelligenceBrightnessControl;->mHeight:I

    .line 180
    :goto_c0
    sget v3, Lcom/android/server/display/IntelligenceBrightnessControl;->mWidth:I

    sget v4, Lcom/android/server/display/IntelligenceBrightnessControl;->mHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/display/IntelligenceBrightnessControl;->mPixels:[I

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IBC-v1.0 pixels: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/IntelligenceBrightnessControl;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/display/IntelligenceBrightnessControl;->mHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IntelligenceBrightnessControl"

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    .line 187
    .local v3, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mBacklight:Lcom/android/server/lights/LogicalLight;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-direct {p0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->registerProcessObserver(Z)V

    .line 192
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/IntelligenceBrightnessControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    invoke-direct {p0}, Lcom/android/server/display/IntelligenceBrightnessControl;->getPixelGrayFactor()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/IntelligenceBrightnessControl;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # F

    .line 62
    iput p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/IntelligenceBrightnessControl;FF)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IntelligenceBrightnessControl;->float_equals(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/IntelligenceBrightnessControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/IntelligenceBrightnessControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/IntelligenceBrightnessControl;F)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # F

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/RampAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .line 62
    sget-boolean v0, Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/IntelligenceBrightnessControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/IntelligenceBrightnessControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    invoke-direct {p0}, Lcom/android/server/display/IntelligenceBrightnessControl;->getCurrentAppPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/display/IntelligenceBrightnessControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/IntelligenceBrightnessControl;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/IntelligenceBrightnessControl;F)F
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # F

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/display/IntelligenceBrightnessControl;->getPolicyBrightness(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/IntelligenceBrightnessControl;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # F

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/display/IntelligenceBrightnessControl;->updateScreenBrightness(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/IntelligenceBrightnessControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mMultiWindowOff:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/IntelligenceBrightnessControl;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mCurrentAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/display/IntelligenceBrightnessControl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mCurrentAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/display/IntelligenceBrightnessControl;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/display/IntelligenceBrightnessControl;->isIBCScenarioListApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/IntelligenceBrightnessControl;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p1, "x1"    # Z

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/display/IntelligenceBrightnessControl;->updateIBCState(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 62
    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F

    return v0
.end method

.method private brightnessToInt(F)Ljava/lang/String;
    .registers 4
    .param p1, "brightness"    # F

    .line 254
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1c

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-float v1, p1

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_1c
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private calculateBrightness(II)I
    .registers 9
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 593
    const-wide/16 v0, 0x0

    .line 594
    .local v0, "Y":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_1b

    .line 595
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_6
    if-ge v3, p1, :cond_18

    .line 597
    sget-object v4, Lcom/android/server/display/IntelligenceBrightnessControl;->mPixels:[I

    mul-int v5, v2, p1

    add-int/2addr v5, v3

    aget v4, v4, v5

    invoke-direct {p0, v4}, Lcom/android/server/display/IntelligenceBrightnessControl;->rgb_to_brightness(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 595
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 594
    .end local v3    # "j":I
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 602
    .end local v2    # "i":I
    :cond_1b
    mul-int v2, p1, p2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 603
    long-to-int v2, v0

    return v2
.end method

.method private float_equals(FF)Z
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 278
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    .line 279
    const/4 v0, 0x1

    return v0

    .line 281
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentAppPkgName()Ljava/lang/String;
    .registers 4

    .line 650
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 651
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 653
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 654
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 656
    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPixelBrightness_screenshot(II)I
    .registers 15
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 527
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 533
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 534
    .local v1, "pixelBrightness":I
    if-nez v0, :cond_e

    goto :goto_28

    .line 542
    :cond_e
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 543
    .local v2, "swBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    sget-object v5, Lcom/android/server/display/IntelligenceBrightnessControl;->mPixels:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move v7, p1

    move v10, p1

    move v11, p2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IntelligenceBrightnessControl;->calculateBrightness(II)I

    move-result v1

    .line 549
    .end local v2    # "swBitmap":Landroid/graphics/Bitmap;
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IBC pixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntelligenceBrightnessControl"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return v1
.end method

.method private getPixelBrightness_wmScreenshot(II)I
    .registers 15
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .line 561
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 569
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 570
    .local v1, "pixelBrightness":I
    if-nez v0, :cond_15

    goto :goto_2f

    .line 578
    :cond_15
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 579
    .local v2, "swBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 580
    sget-object v5, Lcom/android/server/display/IntelligenceBrightnessControl;->mPixels:[I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move v7, p1

    move v10, p1

    move v11, p2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 581
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IntelligenceBrightnessControl;->calculateBrightness(II)I

    move-result v1

    .line 585
    .end local v2    # "swBitmap":Landroid/graphics/Bitmap;
    :goto_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IBC wmpixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IntelligenceBrightnessControl"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return v1
.end method

.method private getPixelGrayFactor()V
    .registers 9

    .line 446
    const-wide/16 v0, 0x0

    .line 449
    .local v0, "noInputDuration":J
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mInputManager:Landroid/hardware/input/IInputManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    .line 453
    :try_start_7
    invoke-interface {v2, v3}, Landroid/hardware/input/IInputManager;->semGetMotionIdleTimeMillis(Z)J

    move-result-wide v4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move-wide v0, v4

    .line 462
    goto :goto_e

    .line 457
    :catch_d
    move-exception v2

    .line 466
    :cond_e
    :goto_e
    iget-boolean v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mNeedFirstScreenshot:Z

    const-wide/16 v4, 0x7530

    if-eqz v2, :cond_23

    .line 472
    iput-boolean v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mNeedFirstScreenshot:Z

    .line 473
    invoke-direct {p0}, Lcom/android/server/display/IntelligenceBrightnessControl;->requestDoScreenshot()V

    .line 474
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_62

    .line 475
    :cond_23
    cmp-long v2, v0, v4

    if-gez v2, :cond_57

    .line 477
    const-wide/16 v6, 0x190

    cmp-long v2, v0, v6

    if-gez v2, :cond_3a

    .line 479
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1c2

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 480
    return-void

    .line 481
    :cond_3a
    const-wide/16 v6, 0x1f4

    cmp-long v2, v0, v6

    if-lez v2, :cond_4a

    .line 483
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    return-void

    .line 488
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/display/IntelligenceBrightnessControl;->requestDoScreenshot()V

    .line 489
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_62

    .line 492
    :cond_57
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 494
    :goto_62
    return-void
.end method

.method private getPolicyBrightness(F)F
    .registers 12
    .param p1, "brightness"    # F

    .line 398
    move v0, p1

    .line 399
    .local v0, "policyBrightness":F
    sget-object v1, Lcom/android/server/display/IntelligenceBrightnessControl;->IBC_GRAY_FACTOR:[F

    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mGrayLevel:I

    aget v1, v1, v2

    .line 400
    .local v1, "grayFactor":F
    move v3, p1

    .line 403
    .local v3, "baseBrightness":F
    iget-boolean v4, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    if-eqz v4, :cond_87

    if-lez v2, :cond_87

    .line 406
    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcOrigTarget:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_19

    .line 407
    add-float/2addr v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v3, v2, v4

    .line 410
    :cond_19
    const v2, 0x3f70f0f1

    .line 411
    .local v2, "highTurningPoint":F
    const v4, 0x3ef6f6f7

    div-float/2addr v4, v1

    .line 414
    .local v4, "lowTurningPoint":F
    cmpl-float v5, v3, v2

    if-lez v5, :cond_35

    .line 415
    const v5, 0x3d70f0f0

    .line 416
    .local v5, "levelRange":F
    mul-float v6, v2, v1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    .line 417
    .local v6, "brightnessRange":F
    div-float v8, v6, v5

    .line 418
    .local v8, "slope":F
    sub-float v9, v3, v2

    mul-float/2addr v9, v8

    sub-float/2addr v7, v6

    add-float/2addr v9, v7

    .line 421
    .end local v0    # "policyBrightness":F
    .end local v5    # "levelRange":F
    .end local v6    # "brightnessRange":F
    .end local v8    # "slope":F
    .local v9, "policyBrightness":F
    goto :goto_4a

    .end local v9    # "policyBrightness":F
    .restart local v0    # "policyBrightness":F
    :cond_35
    cmpg-float v5, v3, v4

    if-gez v5, :cond_48

    .line 422
    const v5, 0x3ec8c8c9

    sub-float v6, v4, v5

    .line 423
    .local v6, "levelRange":F
    const v7, 0x3db8b8b8

    .line 424
    .local v7, "brightnessRange":F
    div-float v8, v7, v6

    .line 425
    .restart local v8    # "slope":F
    sub-float v9, v3, v5

    mul-float/2addr v9, v8

    add-float/2addr v9, v5

    .line 428
    .end local v0    # "policyBrightness":F
    .end local v6    # "levelRange":F
    .end local v7    # "brightnessRange":F
    .end local v8    # "slope":F
    .restart local v9    # "policyBrightness":F
    goto :goto_4a

    .line 429
    .end local v9    # "policyBrightness":F
    .restart local v0    # "policyBrightness":F
    :cond_48
    mul-float v9, v3, v1

    .line 433
    .end local v0    # "policyBrightness":F
    .restart local v9    # "policyBrightness":F
    :goto_4a
    invoke-static {p1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 435
    .end local v9    # "policyBrightness":F
    .restart local v0    # "policyBrightness":F
    sget-boolean v5, Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z

    if-eqz v5, :cond_87

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IBC policy : [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {p0, v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", sf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 436
    const-string v6, "IntelligenceBrightnessControl"

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v2    # "highTurningPoint":F
    .end local v4    # "lowTurningPoint":F
    :cond_87
    return v0
.end method

.method private isIBCScenarioListApp(Ljava/lang/String;)Z
    .registers 8
    .param p1, "appName"    # Ljava/lang/String;

    .line 641
    sget-object v0, Lcom/android/server/display/IntelligenceBrightnessControl;->IBC_SCENARIO_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 642
    .local v4, "filter":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 643
    const/4 v0, 0x1

    return v0

    .line 641
    .end local v4    # "filter":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 646
    :cond_14
    return v2
.end method

.method private needIbcUpdateBrightness(FF)Z
    .registers 8
    .param p1, "ibcTargetGap"    # F
    .param p2, "dpcModiTargetGap"    # F

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "needUpdate":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 288
    .local v1, "ibcTargetGap_abs":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 293
    .local v2, "dpcModiTargetGap_abs":F
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/IntelligenceBrightnessControl;->float_equals(FF)Z

    move-result v3

    if-nez v3, :cond_3e

    const v3, 0x3c40c0c1

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_3e

    const v3, 0x3e48c8c9

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1e

    goto :goto_3e

    .line 299
    :cond_1e
    add-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float v4, v1, v2

    invoke-direct {p0, v3, v4}, Lcom/android/server/display/IntelligenceBrightnessControl;->float_equals(FF)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 300
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3f

    .line 301
    const/4 v0, 0x1

    goto :goto_3f

    .line 306
    :cond_32
    add-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_3f

    .line 307
    const/4 v0, 0x1

    goto :goto_3f

    .line 295
    :cond_3e
    :goto_3e
    const/4 v0, 0x0

    .line 316
    :cond_3f
    :goto_3f
    return v0
.end method

.method private pixelGcd(II)I
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 263
    if-eqz p1, :cond_e

    if-ne p1, p2, :cond_5

    goto :goto_e

    .line 265
    :cond_5
    :goto_5
    if-eqz p2, :cond_d

    .line 266
    if-le p1, p2, :cond_b

    .line 267
    sub-int/2addr p1, p2

    goto :goto_5

    .line 269
    :cond_b
    sub-int/2addr p2, p1

    goto :goto_5

    .line 272
    :cond_d
    return p1

    .line 264
    :cond_e
    :goto_e
    return p2
.end method

.method private registerProcessObserver(Z)V
    .registers 5
    .param p1, "register"    # Z

    .line 321
    const-string v0, "IntelligenceBrightnessControl"

    if-eqz p1, :cond_18

    .line 330
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_17

    .line 331
    :catch_e
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException - registerProcessObserver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    goto :goto_2b

    .line 344
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    .line 348
    goto :goto_2b

    .line 345
    :catch_22
    move-exception v1

    .line 346
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException - unregisterProcessObserver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 354
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method private requestDoScreenshot()V
    .registers 4

    .line 500
    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mGrayLevel:I

    .line 501
    .local v0, "graylevel":I
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    if-eqz v1, :cond_11

    .line 502
    sget v1, Lcom/android/server/display/IntelligenceBrightnessControl;->mWidth:I

    sget v2, Lcom/android/server/display/IntelligenceBrightnessControl;->mHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->getPixelBrightness_wmScreenshot(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x32

    .end local v0    # "graylevel":I
    .local v1, "graylevel":I
    goto :goto_1b

    .line 504
    .end local v1    # "graylevel":I
    .restart local v0    # "graylevel":I
    :cond_11
    sget v1, Lcom/android/server/display/IntelligenceBrightnessControl;->mWidth:I

    sget v2, Lcom/android/server/display/IntelligenceBrightnessControl;->mHeight:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->getPixelBrightness_screenshot(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x32

    .line 508
    .end local v0    # "graylevel":I
    .restart local v1    # "graylevel":I
    :goto_1b
    const/4 v0, 0x5

    if-gez v1, :cond_20

    const/4 v0, 0x0

    goto :goto_24

    :cond_20
    if-le v1, v0, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    .line 509
    .end local v1    # "graylevel":I
    .restart local v0    # "graylevel":I
    :goto_24
    iget v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mGrayLevel:I

    if-eq v1, v0, :cond_39

    .line 510
    iput v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mGrayLevel:I

    .line 511
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 513
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 519
    :cond_39
    return-void
.end method

.method private rgb_to_brightness(I)I
    .registers 5
    .param p1, "pixel"    # I

    .line 609
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 610
    .local v0, "color":I
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x4d

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit16 v2, v2, 0x96

    add-int/2addr v1, v2

    and-int/lit16 v2, v0, 0xff

    mul-int/lit8 v2, v2, 0x1d

    add-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setIBCEnable(ZF)V
    .registers 13
    .param p1, "autoBrightnessEnable"    # Z
    .param p2, "brightness"    # F

    .line 360
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsScreenOn:Z

    const-string v1, " ]"

    const-string v2, " [ "

    const-string/jumbo v3, "setIBCEnable = "

    const-string v4, "IntelligenceBrightnessControl"

    const-wide/16 v5, 0x2710

    const/4 v7, 0x1

    const-string v8, ", "

    const/4 v9, 0x0

    if-eqz v0, :cond_87

    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    if-eqz v0, :cond_87

    if-eqz p1, :cond_87

    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcOrigTarget:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_87

    const v0, 0x3ec8c8c9

    cmpl-float v0, p2, v0

    if-lez v0, :cond_87

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_87

    .line 362
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    if-nez v0, :cond_e3

    .line 363
    iput-boolean v7, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    .line 364
    iput-boolean v7, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mNeedFirstScreenshot:Z

    .line 366
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    sget-boolean v0, Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z

    if-eqz v0, :cond_e3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcOrigTarget:F

    .line 373
    invoke-direct {p0, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {p0, p2}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e3

    .line 378
    :cond_87
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    if-eqz v0, :cond_e3

    .line 379
    iput-boolean v9, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    .line 380
    iput-boolean v9, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mNeedFirstScreenshot:Z

    .line 381
    iput v9, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mGrayLevel:I

    .line 382
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 386
    sget-boolean v0, Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z

    if-eqz v0, :cond_e3

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcOrigTarget:F

    .line 389
    invoke-direct {p0, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-direct {p0, p2}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_e3
    :goto_e3
    return-void
.end method

.method private updateIBCState(Z)V
    .registers 4
    .param p1, "isIBCScenario"    # Z

    .line 769
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    if-eq p1, v0, :cond_d

    .line 770
    iput-boolean p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsIBCScenario:Z

    .line 771
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mAutoBrightnessEnable:Z

    iget v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->setIBCEnable(ZF)V

    .line 777
    :cond_d
    return-void
.end method

.method private updateScreenBrightness(F)V
    .registers 7
    .param p1, "policyBrightness"    # F

    .line 616
    move v0, p1

    .line 620
    .local v0, "newTarget":F
    iget v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->float_equals(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 621
    return-void

    .line 624
    :cond_a
    iput v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F

    .line 625
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z

    .line 629
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mSetBrightnessRunable:Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 630
    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mSetBrightnessRunable:Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IBC Animating start: [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    invoke-direct {p0, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F

    .line 634
    invoke-direct {p0, v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F

    iget v4, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    sub-float/2addr v3, v4

    .line 635
    invoke-direct {p0, v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    const-string v2, "IntelligenceBrightnessControl"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void
.end method


# virtual methods
.method public updateBrightnessControl(ZIFF)F
    .registers 8
    .param p1, "autoBrightnessEnable"    # Z
    .param p2, "screenState"    # I
    .param p3, "origTarget"    # F
    .param p4, "modiTarget"    # F

    .line 206
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsScreenOn:Z

    .line 207
    iput p3, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcOrigTarget:F

    .line 208
    invoke-direct {p0, p1, p4}, Lcom/android/server/display/IntelligenceBrightnessControl;->setIBCEnable(ZF)V

    .line 211
    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_36

    .line 217
    invoke-direct {p0, p4}, Lcom/android/server/display/IntelligenceBrightnessControl;->getPolicyBrightness(F)F

    move-result v0

    .line 218
    .local v0, "policyBrightness":F
    iget v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    sub-float v2, p4, v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->needIbcUpdateBrightness(FF)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 219
    iget v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    add-float/2addr v1, p4

    iget v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    sub-float/2addr v1, v2

    .line 225
    .local v1, "newCurrent":F
    iput v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    .line 227
    invoke-direct {p0, v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->updateScreenBrightness(F)V

    .line 228
    .end local v1    # "newCurrent":F
    goto :goto_48

    .line 229
    :cond_31
    iput v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    iput v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F

    goto :goto_48

    .line 237
    .end local v0    # "policyBrightness":F
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIsScreenOn:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mAutoBrightnessEnable:Z

    if-eqz v0, :cond_48

    if-nez p1, :cond_48

    .line 243
    invoke-direct {p0, p4}, Lcom/android/server/display/IntelligenceBrightnessControl;->getPolicyBrightness(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->updateScreenBrightness(F)V

    goto :goto_49

    .line 237
    :cond_48
    :goto_48
    nop

    .line 246
    :goto_49
    iput p4, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F

    .line 247
    iput-boolean p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mAutoBrightnessEnable:Z

    .line 249
    iget v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F

    return v0
.end method
