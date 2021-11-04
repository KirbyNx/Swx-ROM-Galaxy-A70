.class public Lcom/android/server/wm/ScreenshotController;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;,
        Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;,
        Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;
    }
.end annotation


# static fields
.field private static final DESKTOP_SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.samsung.desktopsystemui"

.field private static final DESKTOP_SYSTEM_UI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.samsung.desktopsystemui.screenshot.TakeScreenshotService"

.field private static final EXTRA_KEY:Ljava/lang/String; = "subject"

.field private static final EXTRA_PALM_MOTION:Ljava/lang/String; = "PalmMotion"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_VALUE:Ljava/lang/String; = "Screenshot"

.field private static final INTENT_ACTION_AUDIT_EVENT:Ljava/lang/String; = "com.dkitec.mdm.android.action.AUDIT_EVENT"

.field private static final INTENT_BIXBY_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.BixbyCapture"

.field private static final INTENT_DESKTOP_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.DesktopCapture"

.field private static final INTENT_QUICK_PANEL_CAPTURE:Ljava/lang/String; = "com.samsung.android.capture.QuickPanelCapture"

.field private static final INTENT_SWEEP_FULL_SCREEN:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_FULL_SCREEN"

.field private static final INTENT_SWEEP_LEFT:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_LEFT"

.field private static final INTENT_SWEEP_RIGHT:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_RIGHT"

.field private static final KEY_CONTROL_PERFORMANCE_LOGGING:Ljava/lang/String; = "performance_logging_ctrl"

.field private static final PERFETTO_LOG_DUMP:I = 0x3

.field private static final PERFETTO_LOG_SAVING:I = 0x5

.field private static final PERMISSION_CAPTURE:Ljava/lang/String; = "com.samsung.permission.CAPTURE"

.field private static final PERMISSION_PALM_MOTION:Ljava/lang/String; = "com.samsung.permission.PALM_MOTION"

.field private static final SCREENSHOT_DIRECTION_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_DIRECTION_SWEEP_FROM_LEFT:I = 0x2

.field private static final SCREENSHOT_DIRECTION_SWEEP_FROM_RIGHT:I = 0x3

.field private static final SCREENSHOT_DISPLAY_BOTH:I = 0x3

.field private static final SCREENSHOT_DISPLAY_DEX:I = 0x2

.field private static final SCREENSHOT_DISPLAY_MAIN:I = 0x0

.field private static final SCREENSHOT_DISPLAY_SUB:I = 0x4

.field private static final SCREENSHOT_ORIGIN_BIXBY:I = 0x5

.field private static final SCREENSHOT_ORIGIN_DEX:I = 0x4

.field private static final SCREENSHOT_ORIGIN_KEY:I = 0x1

.field private static final SCREENSHOT_ORIGIN_PALM:I = 0x2

.field private static final SCREENSHOT_ORIGIN_QUICK_PANEL:I = 0x3

.field private static final SCREENSHOT_SERVICE_CONNECTION_TIMEOUT:I = 0x2710

.field private static final SCREENSHOT_SERVICE_MAX_CONNECTION:I = 0x3

.field public static final SCREENSHOT_TYPE_FULLSCREEN:I = 0x1

.field private static final SCREENSHOT_TYPE_PARTIAL:I = 0x2

.field public static final SCREENSHOT_TYPE_WINDOW:I = 0x64

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSTEM_UI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mCaptureBelowVisibleWindow:Z

.field private mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdatedUserId:I

.field private mPalmMotionReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

.field private mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field private final mScreenshotLock:Ljava/lang/Object;

.field private mScreenshotRestrictionPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mServiceConnections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    .line 167
    new-instance v0, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;-><init>(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;

    .line 628
    new-instance v0, Lcom/android/server/wm/ScreenshotController$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenshotController$3;-><init>(Lcom/android/server/wm/ScreenshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mPalmMotionReceiver:Landroid/content/BroadcastReceiver;

    .line 682
    new-instance v0, Lcom/android/server/wm/ScreenshotController$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenshotController$4;-><init>(Lcom/android/server/wm/ScreenshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 722
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ScreenshotController;->mLastUpdatedUserId:I

    .line 723
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotRestrictionPolicies:Landroid/util/SparseArray;

    .line 863
    iput-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 174
    new-instance v0, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ScreenshotController$RestrictionPolicyObserver;-><init>(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$1;)V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController;->mPalmMotionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.permission.PALM_MOTION"

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 187
    .end local v0    # "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v1, "com.samsung.android.capture.BixbyCapture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "com.samsung.permission.CAPTURE"

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    .end local v0    # "filter":Landroid/content/IntentFilter;
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ScreenshotController;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotRestrictionPolicies:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ScreenshotController;Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/content/ServiceConnection;
    .param p3, "x3"    # Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ScreenshotController;->sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ScreenshotController;Landroid/content/ServiceConnection;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;
    .param p1, "x1"    # Landroid/content/ServiceConnection;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotController;->resetScreenshotConnection(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;
    .param p1, "x1"    # Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotController;->takeScreenshot(Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ScreenshotController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ScreenshotController;IIIILandroid/os/Bundle;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/os/Bundle;

    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/ScreenshotController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ScreenshotController;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ScreenshotController;

    .line 96
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->getRestrictionPolicyService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 866
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 868
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 888
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mSemPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private getRestrictionPolicyService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .registers 2

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_12

    .line 728
    nop

    .line 729
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 728
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 731
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mRestrictionPolicyService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method

.method private isScreenCaptureDisabledByDPM(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 872
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 873
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(IZ)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isScreenCaptureDisabledByDPM - win: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v0, 0x1

    return v0

    .line 877
    :cond_2c
    return v1
.end method

.method private isScreenshotDisabledLocked(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotRestrictionPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 807
    .local v0, "disabled":Ljava/lang/Boolean;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isScreenshotDisabledLocked: userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", disabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    if-nez v0, :cond_2b

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2f
    return v1
.end method

.method static synthetic lambda$sendScreenshotMessage$1(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p0, "focusedTask"    # Lcom/android/server/wm/Task;
    .param p1, "winFrame"    # Landroid/graphics/Rect;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 326
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 327
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 328
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_22

    iget v2, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v2, v3, :cond_22

    .line 330
    nop

    .line 331
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 332
    return v1

    .line 335
    :cond_1b
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 338
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_22
    return v1
.end method

.method static synthetic lambda$updateScreenshotRestrictionPolicyLocked$3(IZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "userId"    # I
    .param p1, "disabled"    # Z
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 774
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 775
    return-void

    .line 777
    :cond_9
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_13

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_13
    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 778
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq p0, v0, :cond_1c

    .line 779
    return-void

    .line 781
    :cond_1c
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_25

    .line 782
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 784
    :cond_25
    return-void
.end method

.method private preventTakingScreenshotToTargetWindow(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method private resetScreenshotConnection(Landroid/content/ServiceConnection;)V
    .registers 4
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 400
    if-eqz p1, :cond_17

    .line 401
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 402
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 405
    :cond_17
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private sendBroadcastForScreenshotRestriction()V
    .registers 4

    .line 819
    const-string v0, "WindowManager"

    const-string v1, "broadcast audit intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dkitec.mdm.android.action.AUDIT_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "subject"

    const-string v2, "Screenshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 823
    return-void
.end method

.method private sendScreenshotMessage(Landroid/os/IBinder;Landroid/content/ServiceConnection;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    .registers 30
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "info"    # Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    .line 276
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/wm/ScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v3

    .line 277
    :try_start_7
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 278
    monitor-exit v3

    return-void

    .line 281
    :cond_11
    const/4 v4, 0x0

    .line 282
    .local v4, "statusBarVisible":Z
    const/4 v5, 0x0

    .line 283
    .local v5, "navigationBarVisible":Z
    const/4 v6, 0x0

    .line 284
    .local v6, "statusBarHeight":I
    const/4 v7, 0x0

    .line 286
    .local v7, "navigationBarHeight":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 287
    .local v8, "focusedWindowInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v0

    .line 288
    .local v15, "stableInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v14, v0

    .line 290
    .local v14, "stackBounds":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_22b

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 291
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getDisplay()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 292
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_127

    .line 293
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v9

    .line 294
    .local v9, "dp":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isStatusBarVisibleLw()Z

    move-result v16
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_21b

    move/from16 v4, v16

    .line 295
    :try_start_47
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isNavigationBarVisibleLw()Z

    move-result v16
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_11d

    move/from16 v5, v16

    .line 297
    :try_start_4d
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v16
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_111

    move-object/from16 v17, v16

    .line 298
    .local v17, "di":Landroid/view/DisplayInfo;
    move/from16 v16, v4

    move-object/from16 v4, v17

    .end local v17    # "di":Landroid/view/DisplayInfo;
    .local v4, "di":Landroid/view/DisplayInfo;
    .local v16, "statusBarVisible":Z
    :try_start_57
    iget v10, v4, Landroid/view/DisplayInfo;->rotation:I

    iget v11, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v12, v4, Landroid/view/DisplayInfo;->logicalHeight:I
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_107

    move/from16 v18, v5

    .end local v5    # "navigationBarVisible":Z
    .local v18, "navigationBarVisible":Z
    :try_start_5f
    iget-object v5, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_fd

    move-object/from16 v19, v4

    const/4 v4, 0x1

    .end local v4    # "di":Landroid/view/DisplayInfo;
    .local v19, "di":Landroid/view/DisplayInfo;
    move-object/from16 v17, v13

    move-object v13, v5

    move-object v5, v14

    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .local v5, "stackBounds":Landroid/graphics/Rect;
    move-object v14, v15

    :try_start_69
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 301
    iget v10, v15, Landroid/graphics/Rect;->top:I

    move v6, v10

    .line 302
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v10

    if-eq v10, v4, :cond_80

    const/4 v11, 0x2

    if-eq v10, v11, :cond_7c

    .line 310
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    move v7, v10

    goto :goto_84

    .line 304
    :cond_7c
    iget v10, v15, Landroid/graphics/Rect;->right:I

    move v7, v10

    .line 305
    goto :goto_84

    .line 307
    :cond_80
    iget v10, v15, Landroid/graphics/Rect;->left:I

    move v7, v10

    .line 308
    nop

    .line 314
    :goto_84
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 315
    .local v10, "focusedWin":Lcom/android/server/wm/WindowState;
    if-eqz v10, :cond_8d

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    goto :goto_8e

    :cond_8d
    const/4 v11, 0x0

    .line 316
    .local v11, "focusedTask":Lcom/android/server/wm/Task;
    :goto_8e
    if-eqz v11, :cond_ef

    .line 317
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    if-eqz v12, :cond_9d

    .line 318
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 321
    :cond_9d
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getType()I

    move-result v12

    const/16 v13, 0x64

    if-ne v12, v13, :cond_f1

    .line 322
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 323
    .local v12, "winFrame":Landroid/graphics/Rect;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    new-instance v14, Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;

    invoke-direct {v14, v11, v12}, Lcom/android/server/wm/-$$Lambda$ScreenshotController$gm90MdAR2VmoprHnzJqX5DEX3qc;-><init>(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v14, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 341
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f1

    .line 342
    iget v14, v12, Landroid/graphics/Rect;->left:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    iget v14, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget v14, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catchall {:try_start_69 .. :try_end_ee} :catchall_f5

    goto :goto_f1

    .line 316
    .end local v12    # "winFrame":Landroid/graphics/Rect;
    :cond_ef
    const/16 v13, 0x64

    .line 350
    .end local v9    # "dp":Lcom/android/server/wm/DisplayPolicy;
    .end local v10    # "focusedWin":Lcom/android/server/wm/WindowState;
    .end local v11    # "focusedTask":Lcom/android/server/wm/Task;
    .end local v19    # "di":Landroid/view/DisplayInfo;
    :cond_f1
    :goto_f1
    move-object v9, v5

    move/from16 v5, v18

    goto :goto_14a

    .line 353
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_f5
    move-exception v0

    move-object/from16 v4, p1

    move-object v9, v5

    move/from16 v5, v18

    goto/16 :goto_224

    .end local v5    # "stackBounds":Landroid/graphics/Rect;
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :catchall_fd
    move-exception v0

    move-object/from16 v17, v13

    move-object/from16 v4, p1

    move-object v9, v14

    move/from16 v5, v18

    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .restart local v5    # "stackBounds":Landroid/graphics/Rect;
    goto/16 :goto_224

    .end local v18    # "navigationBarVisible":Z
    .local v5, "navigationBarVisible":Z
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :catchall_107
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v17, v13

    move-object/from16 v4, p1

    move-object v9, v14

    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .local v5, "stackBounds":Landroid/graphics/Rect;
    .restart local v18    # "navigationBarVisible":Z
    goto/16 :goto_224

    .end local v16    # "statusBarVisible":Z
    .end local v18    # "navigationBarVisible":Z
    .local v4, "statusBarVisible":Z
    .local v5, "navigationBarVisible":Z
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :catchall_111
    move-exception v0

    move/from16 v16, v4

    move/from16 v18, v5

    move-object/from16 v17, v13

    move-object/from16 v4, p1

    move-object v9, v14

    .end local v4    # "statusBarVisible":Z
    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .local v5, "stackBounds":Landroid/graphics/Rect;
    .restart local v16    # "statusBarVisible":Z
    .restart local v18    # "navigationBarVisible":Z
    goto/16 :goto_224

    .end local v16    # "statusBarVisible":Z
    .end local v18    # "navigationBarVisible":Z
    .restart local v4    # "statusBarVisible":Z
    .local v5, "navigationBarVisible":Z
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :catchall_11d
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v17, v13

    move-object v9, v14

    move-object/from16 v4, p1

    .end local v4    # "statusBarVisible":Z
    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .local v9, "stackBounds":Landroid/graphics/Rect;
    .restart local v16    # "statusBarVisible":Z
    goto/16 :goto_224

    .line 351
    .end local v9    # "stackBounds":Landroid/graphics/Rect;
    .end local v16    # "statusBarVisible":Z
    .restart local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "statusBarVisible":Z
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :cond_127
    move v10, v4

    move-object/from16 v17, v13

    move-object v9, v14

    const/4 v4, 0x1

    const/16 v13, 0x64

    .end local v4    # "statusBarVisible":Z
    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .restart local v9    # "stackBounds":Landroid/graphics/Rect;
    .local v10, "statusBarVisible":Z
    :try_start_12e
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Get screenshot display failed: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getDisplay()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_12e .. :try_end_148} :catchall_215

    move/from16 v16, v10

    .line 353
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v10    # "statusBarVisible":Z
    .restart local v16    # "statusBarVisible":Z
    :goto_14a
    :try_start_14a
    monitor-exit v17
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_211

    :try_start_14b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 355
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v10, v0

    .line 356
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "statusBarHeight"

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string/jumbo v0, "navigationBarHeight"

    invoke-virtual {v10, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string/jumbo v0, "sweepDirection"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getSweepDirection()I

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v0, "capturedDisplay"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getDisplay()I

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v0, "capturedOrigin"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getOrigin()I

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v0, "captureSharedBundle"

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 362
    const-string/jumbo v0, "stackBounds"

    invoke-virtual {v10, v0, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getType()I

    move-result v0

    if-ne v0, v13, :cond_1bc

    .line 364
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 365
    const/16 v21, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getSweepDirection()I

    move-result v22

    .line 366
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getDisplay()I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getOrigin()I

    move-result v24

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v25

    .line 365
    move-object/from16 v20, p3

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->set(IIIILandroid/os/Bundle;)V

    .line 367
    const-string v0, "WindowManager"

    const-string v11, "Change screenshotType to fullscreen"

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bc

    .line 369
    :cond_1b6
    const-string/jumbo v0, "windowCapture"

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 373
    :cond_1bc
    :goto_1bc
    new-instance v0, Lcom/android/server/wm/ScreenshotController$2;

    iget-object v11, v1, Lcom/android/server/wm/ScreenshotController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/wm/ScreenshotController$2;-><init>(Lcom/android/server/wm/ScreenshotController;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    move-object v11, v0

    .line 380
    .local v11, "unbindHandler":Landroid/os/Handler;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getType()I

    move-result v0

    const/4 v12, 0x0

    invoke-static {v12, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    move-object v12, v0

    .line 381
    .local v12, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v11}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v12, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 382
    const/4 v0, 0x0

    if-eqz v16, :cond_1de

    move v13, v4

    goto :goto_1df

    :cond_1de
    move v13, v0

    :goto_1df
    iput v13, v12, Landroid/os/Message;->arg1:I

    .line 383
    if-eqz v5, :cond_1e4

    move v0, v4

    :cond_1e4
    iput v0, v12, Landroid/os/Message;->arg2:I

    .line 384
    invoke-virtual {v12, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1e9
    .catchall {:try_start_14b .. :try_end_1e9} :catchall_22b

    .line 387
    :try_start_1e9
    new-instance v0, Landroid/os/Messenger;
    :try_end_1eb
    .catch Landroid/os/RemoteException; {:try_start_1e9 .. :try_end_1eb} :catch_1f6
    .catchall {:try_start_1e9 .. :try_end_1eb} :catchall_22b

    move-object/from16 v4, p1

    :try_start_1ed
    invoke-direct {v0, v4}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v12}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1f3
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_1f3} :catch_1f4
    .catchall {:try_start_1ed .. :try_end_1f3} :catchall_230

    .line 390
    goto :goto_20f

    .line 388
    :catch_1f4
    move-exception v0

    goto :goto_1f9

    :catch_1f6
    move-exception v0

    move-object/from16 v4, p1

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1f9
    :try_start_1f9
    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send screenshot message failed, "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "navigationBarVisible":Z
    .end local v6    # "statusBarHeight":I
    .end local v7    # "navigationBarHeight":I
    .end local v8    # "focusedWindowInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "stackBounds":Landroid/graphics/Rect;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v11    # "unbindHandler":Landroid/os/Handler;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v15    # "stableInsets":Landroid/graphics/Rect;
    .end local v16    # "statusBarVisible":Z
    :goto_20f
    monitor-exit v3
    :try_end_210
    .catchall {:try_start_1f9 .. :try_end_210} :catchall_230

    .line 392
    return-void

    .line 353
    .restart local v5    # "navigationBarVisible":Z
    .restart local v6    # "statusBarHeight":I
    .restart local v7    # "navigationBarHeight":I
    .restart local v8    # "focusedWindowInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "stackBounds":Landroid/graphics/Rect;
    .restart local v15    # "stableInsets":Landroid/graphics/Rect;
    .restart local v16    # "statusBarVisible":Z
    :catchall_211
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_224

    .end local v16    # "statusBarVisible":Z
    .local v10, "statusBarVisible":Z
    :catchall_215
    move-exception v0

    move-object/from16 v4, p1

    move/from16 v16, v10

    goto :goto_224

    .end local v9    # "stackBounds":Landroid/graphics/Rect;
    .end local v10    # "statusBarVisible":Z
    .restart local v4    # "statusBarVisible":Z
    .restart local v14    # "stackBounds":Landroid/graphics/Rect;
    :catchall_21b
    move-exception v0

    move v10, v4

    move-object/from16 v17, v13

    move-object v9, v14

    move-object/from16 v4, p1

    move/from16 v16, v10

    .end local v4    # "statusBarVisible":Z
    .end local v14    # "stackBounds":Landroid/graphics/Rect;
    .restart local v9    # "stackBounds":Landroid/graphics/Rect;
    .restart local v16    # "statusBarVisible":Z
    :goto_224
    :try_start_224
    monitor-exit v17
    :try_end_225
    .catchall {:try_start_224 .. :try_end_225} :catchall_229

    :try_start_225
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/ScreenshotController;
    .end local p1    # "service":Landroid/os/IBinder;
    .end local p2    # "conn":Landroid/content/ServiceConnection;
    .end local p3    # "info":Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;
    throw v0

    .restart local p0    # "this":Lcom/android/server/wm/ScreenshotController;
    .restart local p1    # "service":Landroid/os/IBinder;
    .restart local p2    # "conn":Landroid/content/ServiceConnection;
    .restart local p3    # "info":Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;
    :catchall_229
    move-exception v0

    goto :goto_224

    .line 391
    .end local v5    # "navigationBarVisible":Z
    .end local v6    # "statusBarHeight":I
    .end local v7    # "navigationBarHeight":I
    .end local v8    # "focusedWindowInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "stackBounds":Landroid/graphics/Rect;
    .end local v15    # "stableInsets":Landroid/graphics/Rect;
    .end local v16    # "statusBarVisible":Z
    :catchall_22b
    move-exception v0

    move-object/from16 v4, p1

    :goto_22e
    monitor-exit v3
    :try_end_22f
    .catchall {:try_start_225 .. :try_end_22f} :catchall_230

    throw v0

    :catchall_230
    move-exception v0

    goto :goto_22e
.end method

.method private sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "sweepDirection"    # I
    .param p3, "display"    # I
    .param p4, "origin"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;

    iget-object v1, v0, Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;->info:Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->set(IIIILandroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method private takeScreenshot(Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V
    .registers 10
    .param p1, "info"    # Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2a

    .line 215
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many screenshot service connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    .line 216
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit v0

    return-void

    .line 220
    :cond_2a
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 223
    .local v1, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 224
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/wm/PersonaActivityHelper;->getCurrentScreenUserId(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v3

    .line 225
    .local v3, "newUserHandle":Landroid/os/UserHandle;
    if-eqz v3, :cond_45

    .line 226
    move-object v1, v3

    .line 230
    .end local v3    # "newUserHandle":Landroid/os/UserHandle;
    :cond_45
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takeScreenshot: info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v3, 0x15

    const/16 v4, 0xa

    const-string v5, "TakeScreenshot"

    invoke-static {v3, v4, v5}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 236
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.PERFORMANCE_LOGGING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v3, "intentforperfettologging":Landroid/content/Intent;
    const-string/jumbo v4, "performance_logging_ctrl"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 240
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.PERFORMANCE_LOGGING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "intentforperfettosavinglogging":Landroid/content/Intent;
    const-string/jumbo v4, "performance_logging_ctrl"

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    iget-object v4, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 246
    .end local v2    # "intentforperfettosavinglogging":Landroid/content/Intent;
    .end local v3    # "intentforperfettologging":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;->getDisplay()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b3

    .line 248
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.desktopsystemui"

    const-string v5, "com.samsung.desktopsystemui.screenshot.TakeScreenshotService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_bf

    .line 251
    :cond_b3
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 253
    :goto_bf
    new-instance v3, Lcom/android/server/wm/ScreenshotController$1;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/ScreenshotController$1;-><init>(Lcom/android/server/wm/ScreenshotController;Lcom/android/server/wm/ScreenshotController$ScreenshotInfo;)V

    .line 265
    .local v3, "conn":Landroid/content/ServiceConnection;
    iget-object v4, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 266
    iget-object v4, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v4, p0, Lcom/android/server/wm/ScreenshotController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/-$$Lambda$ScreenshotController$h0BsV00DG1lcApTXpQ3X_UV5UD4;-><init>(Lcom/android/server/wm/ScreenshotController;Landroid/content/ServiceConnection;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 271
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "conn":Landroid/content/ServiceConnection;
    :cond_de
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_e0
    move-exception v1

    monitor-exit v0
    :try_end_e2
    .catchall {:try_start_3 .. :try_end_e2} :catchall_e0

    throw v1
.end method


# virtual methods
.method cancelPendingTakeScreenshotRunnable()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mTakeScreenshotRunnable:Lcom/android/server/wm/ScreenshotController$TakeScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    .line 894
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 897
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 11
    .param p1, "showMsg"    # Z

    .line 828
    nop

    .line 829
    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 828
    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    .line 832
    .local v0, "restrictionPolicyService":Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    .line 833
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenshotController;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "WindowManager"

    if-eqz v3, :cond_67

    if-eqz v1, :cond_67

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_67

    .line 834
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_67

    .line 836
    nop

    .line 837
    :try_start_2e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 836
    invoke-interface {v0, v6, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v6

    if-nez v6, :cond_59

    .line 837
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenshotController;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v4, v8}, Lcom/android/server/pm/PersonaManagerService;->isKnoxWindowExist(III)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 838
    const-string v6, "KnoxMultiwindowExist. isScreenCaptureEnabled() returns false"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_58} :catch_65
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2e .. :try_end_58} :catch_5d

    .line 839
    return v4

    .line 846
    :cond_59
    nop

    .line 834
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 843
    :catch_5d
    move-exception v4

    .line 844
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "getting information for Knox : failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return v2

    .line 841
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_65
    move-exception v4

    .line 842
    .local v4, "e":Landroid/os/RemoteException;
    return v2

    .line 851
    .end local v3    # "i":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_67
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_89

    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    .line 852
    invoke-virtual {v3, p1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    if-nez v3, :cond_89

    .line 853
    const-string/jumbo v2, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_PTT_KOR_PS_LTE:Z

    if-eqz v2, :cond_88

    .line 855
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->sendBroadcastForScreenshotRestriction()V

    .line 857
    :cond_88
    return v4

    .line 860
    :cond_89
    return v2
.end method

.method isScreenshotDisabledLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 788
    iget v0, p1, Lcom/android/server/wm/WindowState;->mShowUserId:I

    .line 791
    .local v0, "userId":I
    const-string/jumbo v1, "persist.sys.knox.userinfo"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, "property":Ljava/lang/String;
    const/4 v2, 0x1

    .line 793
    .local v2, "isWorkProfileExist":Z
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    .line 794
    :cond_12
    const/4 v2, 0x0

    .line 796
    :cond_13
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    if-eqz v3, :cond_23

    if-eqz v2, :cond_23

    .line 797
    invoke-direct {p0}, Lcom/android/server/wm/ScreenshotController;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    .line 801
    .end local v1    # "property":Ljava/lang/String;
    .end local v2    # "isWorkProfileExist":Z
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isScreenshotDisabledLocked - win: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0, v0}, Lcom/android/server/wm/ScreenshotController;->isScreenshotDisabledLocked(I)Z

    move-result v1

    return v1
.end method

.method public synthetic lambda$takeScreenshot$0$ScreenshotController(Landroid/content/ServiceConnection;)V
    .registers 2
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotController;->resetScreenshotConnection(Landroid/content/ServiceConnection;)V

    .line 269
    return-void
.end method

.method public synthetic lambda$takeScreenshotToTargetWindow$2$ScreenshotController(IZLcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "targetWindowType"    # I
    .param p2, "containsTargetSystemWindow"    # Z
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 505
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenshotController;->mCaptureBelowVisibleWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-nez v0, :cond_15

    .line 506
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 507
    return v1

    .line 509
    :cond_15
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, p1, :cond_26

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 510
    if-eqz p2, :cond_24

    .line 511
    return v1

    .line 513
    :cond_24
    iput-boolean v1, p0, Lcom/android/server/wm/ScreenshotController;->mCaptureBelowVisibleWindow:Z

    .line 515
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method resetScreenshotConnection()V
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/ScreenshotController;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 411
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 412
    .local v2, "conn":Landroid/content/ServiceConnection;
    if-eqz v2, :cond_24

    .line 413
    iget-object v3, p0, Lcom/android/server/wm/ScreenshotController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 415
    .end local v2    # "conn":Landroid/content/ServiceConnection;
    :cond_24
    goto :goto_11

    .line 416
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/ScreenshotController;->mServiceConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 418
    :cond_2a
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method sendTakeScreenshotRunnable(II)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "display"    # I

    .line 197
    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method takeScreenshotToTargetWindow(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;
    .registers 29
    .param p1, "displayId"    # I
    .param p2, "targetWindowType"    # I
    .param p3, "containsTargetSystemWindow"    # Z
    .param p4, "sourceCrop"    # Landroid/graphics/Rect;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "useIdentityTransform"    # Z
    .param p8, "rotation"    # I
    .param p9, "ignorePolicy"    # Z

    .line 478
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "takeScreenshotToTargetWindow: display="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", target="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", containsTarget="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", crop="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", w="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", h="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p6

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rot="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p8

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", useIdentityTransform="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", caller="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string v6, "WindowManager"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/wm/ScreenshotController;->mCaptureBelowVisibleWindow:Z

    .line 485
    const/4 v6, 0x0

    .line 486
    .local v6, "surfaceLayer":Landroid/view/SurfaceControl;
    const-string v7, ""

    .line 488
    .local v7, "reasonForNoScreenshot":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 490
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0
    :try_end_84
    .catchall {:try_start_79 .. :try_end_84} :catchall_271

    .line 491
    .local v0, "targetDisplay":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_a6

    .line 492
    :try_start_86
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "takeScreenshotToTargetWindow: display is null, displayId="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    monitor-exit v8
    :try_end_9e
    .catchall {:try_start_86 .. :try_end_9e} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v8, 0x0

    return-object v8

    .line 557
    .end local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    :catchall_a3
    move-exception v0

    goto/16 :goto_274

    .line 498
    .restart local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_a6
    if-nez p9, :cond_b4

    :try_start_a8
    invoke-direct {v1, v0}, Lcom/android/server/wm/ScreenshotController;->preventTakingScreenshotToTargetWindow(Lcom/android/server/wm/DisplayContent;)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 499
    monitor-exit v8
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_a3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v8, 0x0

    return-object v8

    .line 502
    :cond_b4
    const/16 v9, 0x7d0

    if-lt v3, v9, :cond_e2

    const/16 v9, 0xbb7

    if-gt v3, v9, :cond_e2

    .line 504
    :try_start_bc
    new-instance v9, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;

    invoke-direct {v9, v1, v3, v4}, Lcom/android/server/wm/-$$Lambda$ScreenshotController$sr7YlnPRiSX36_G8X-8r_JWlLUo;-><init>(Lcom/android/server/wm/ScreenshotController;IZ)V

    invoke-virtual {v0, v9}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v9

    .line 518
    .local v9, "target":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_cd

    .line 519
    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object v6, v10

    move-object v3, v6

    move-object v11, v7

    goto :goto_121

    .line 521
    :cond_cd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "[invalid systemWindow] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    move-object v3, v6

    move-object v11, v7

    goto :goto_121

    .line 523
    .end local v9    # "target":Lcom/android/server/wm/WindowState;
    :cond_e2
    const/4 v9, 0x1

    if-lt v3, v9, :cond_11f

    .line 528
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 529
    .local v9, "displayFocusedApp":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_10a

    .line 530
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    .line 531
    .local v10, "target":Lcom/android/server/wm/WindowState;
    if-eqz v10, :cond_f5

    .line 532
    iget-object v11, v9, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object v6, v11

    move-object v3, v6

    move-object v11, v7

    goto :goto_121

    .line 534
    :cond_f5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[invalid mainAppWindow] "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v6

    move-object v11, v7

    goto :goto_121

    .line 537
    .end local v10    # "target":Lcom/android/server/wm/WindowState;
    :cond_10a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "[invalid focusedApp] "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_11b
    .catchall {:try_start_bc .. :try_end_11b} :catchall_a3

    move-object v7, v3

    move-object v3, v6

    move-object v11, v7

    goto :goto_121

    .line 523
    .end local v9    # "displayFocusedApp":Lcom/android/server/wm/ActivityRecord;
    :cond_11f
    move-object v3, v6

    move-object v11, v7

    .line 541
    .end local v6    # "surfaceLayer":Landroid/view/SurfaceControl;
    .end local v7    # "reasonForNoScreenshot":Ljava/lang/String;
    .local v3, "surfaceLayer":Landroid/view/SurfaceControl;
    .local v11, "reasonForNoScreenshot":Ljava/lang/String;
    :goto_121
    if-eqz p9, :cond_1a2

    :try_start_123
    iget-object v6, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 542
    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowManagerServiceExt;->hasOneHandOpSpec(I)Z

    move-result v6

    if-eqz v6, :cond_193

    .line 543
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v6

    .line 544
    .local v6, "spec":Landroid/view/MagnificationSpec;
    if-eqz v6, :cond_18e

    .line 545
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7
    :try_end_137
    .catchall {:try_start_123 .. :try_end_137} :catchall_198

    .line 546
    .local v7, "di":Landroid/view/DisplayInfo;
    if-eqz v5, :cond_15d

    :try_start_139
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15d

    .line 547
    iget v9, v6, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->scale(F)V

    .line 548
    iget v9, v6, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v9, v9

    iget v10, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v10, v10

    move-object/from16 v16, v0

    .end local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .local v16, "targetDisplay":Lcom/android/server/wm/DisplayContent;
    iget v0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V
    :try_end_155
    .catchall {:try_start_139 .. :try_end_155} :catchall_158

    move-object/from16 v17, v11

    goto :goto_1a6

    .line 557
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .end local v7    # "di":Landroid/view/DisplayInfo;
    .end local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    :catchall_158
    move-exception v0

    move-object v6, v3

    move-object v7, v11

    goto/16 :goto_274

    .line 546
    .restart local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v7    # "di":Landroid/view/DisplayInfo;
    :cond_15d
    move-object/from16 v16, v0

    .line 551
    .end local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    :try_start_15f
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v6, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v9, v9

    iget v10, v6, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v10, v10

    iget v4, v6, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v4, v4

    iget v5, v7, Landroid/view/DisplayInfo;->logicalWidth:I
    :try_end_16c
    .catchall {:try_start_15f .. :try_end_16c} :catchall_198

    int-to-float v5, v5

    move-object/from16 v17, v11

    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .local v17, "reasonForNoScreenshot":Ljava/lang/String;
    :try_start_16f
    iget v11, v6, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v5, v11

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, v6, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v5, v5

    iget v11, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v11, v11

    move-object/from16 v18, v7

    .end local v7    # "di":Landroid/view/DisplayInfo;
    .local v18, "di":Landroid/view/DisplayInfo;
    iget v7, v6, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v11, v7

    float-to-int v7, v11

    add-int/2addr v5, v7

    invoke-direct {v0, v9, v10, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_184
    .catchall {:try_start_16f .. :try_end_184} :catchall_186

    move-object v4, v0

    .end local p4    # "sourceCrop":Landroid/graphics/Rect;
    .local v0, "sourceCrop":Landroid/graphics/Rect;
    goto :goto_1a8

    .line 557
    .end local v0    # "sourceCrop":Landroid/graphics/Rect;
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .end local v18    # "di":Landroid/view/DisplayInfo;
    .restart local p4    # "sourceCrop":Landroid/graphics/Rect;
    :catchall_186
    move-exception v0

    move-object/from16 v5, p4

    move-object v6, v3

    move-object/from16 v7, v17

    goto/16 :goto_274

    .line 544
    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .local v0, "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "spec":Landroid/view/MagnificationSpec;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_18e
    move-object/from16 v16, v0

    move-object/from16 v17, v11

    .end local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    goto :goto_1a6

    .line 542
    .end local v6    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_193
    move-object/from16 v16, v0

    move-object/from16 v17, v11

    .end local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    goto :goto_1a6

    .line 557
    .end local v16    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    :catchall_198
    move-exception v0

    move-object/from16 v17, v11

    move-object/from16 v5, p4

    move-object v6, v3

    move-object/from16 v7, v17

    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    goto/16 :goto_274

    .line 541
    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_1a2
    move-object/from16 v16, v0

    move-object/from16 v17, v11

    .line 557
    .end local v0    # "targetDisplay":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    :goto_1a6
    move-object/from16 v4, p4

    .end local p4    # "sourceCrop":Landroid/graphics/Rect;
    .local v4, "sourceCrop":Landroid/graphics/Rect;
    :goto_1a8
    :try_start_1a8
    monitor-exit v8
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_267

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 561
    if-eqz v3, :cond_1e2

    .line 562
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 563
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v5

    .line 562
    move-object v6, v4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v3

    move/from16 v10, p7

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .local v3, "reasonForNoScreenshot":Ljava/lang/String;
    .local v16, "surfaceLayer":Landroid/view/SurfaceControl;
    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v5 .. v12}, Landroid/view/SurfaceControl;->sec_screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 566
    .local v0, "resultBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1df

    .line 567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "[invalid sec_screenshot] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    goto/16 :goto_24d

    .line 566
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_1df
    move-object v11, v3

    goto/16 :goto_24d

    .line 569
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "surfaceLayer":Landroid/view/SurfaceControl;
    .local v3, "surfaceLayer":Landroid/view/SurfaceControl;
    .restart local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_1e2
    move-object/from16 v16, v3

    move-object/from16 v3, v17

    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .local v3, "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v16    # "surfaceLayer":Landroid/view/SurfaceControl;
    if-eqz p9, :cond_21b

    .line 570
    const-string v0, "WindowManager"

    const-string/jumbo v5, "takeScreenshotToTargetWindow: screenshot all layers including secure layers"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 572
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v7

    .line 571
    move-object v8, v4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v7 .. v12}, Landroid/view/SurfaceControl;->screenshotWithSecureLayersUnsafe(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 574
    .restart local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_219

    .line 575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "[invalid screenshotWithSecureLayersUnsafe] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    goto :goto_24d

    .line 574
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_219
    move-object v11, v3

    goto :goto_24d

    .line 578
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_21b
    const-string v0, "WindowManager"

    const-string/jumbo v5, "takeScreenshotToTargetWindow: screenshot all layers"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, v1, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 580
    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v7

    .line 579
    move-object v8, v4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v7 .. v12}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/graphics/Rect;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 582
    .restart local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_24c

    .line 583
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "[invalid screenshot] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    goto :goto_24d

    .line 582
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    :cond_24c
    move-object v11, v3

    .line 588
    .end local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    :goto_24d
    if-nez v0, :cond_266

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takeScreenshotToTargetWindow: result is null, reason="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WindowManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_266
    return-object v0

    .line 557
    .end local v0    # "resultBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "reasonForNoScreenshot":Ljava/lang/String;
    .end local v16    # "surfaceLayer":Landroid/view/SurfaceControl;
    .local v3, "surfaceLayer":Landroid/view/SurfaceControl;
    .restart local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    :catchall_267
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v3, v17

    move-object v7, v3

    move-object v5, v4

    move-object/from16 v6, v16

    .end local v17    # "reasonForNoScreenshot":Ljava/lang/String;
    .local v3, "reasonForNoScreenshot":Ljava/lang/String;
    .restart local v16    # "surfaceLayer":Landroid/view/SurfaceControl;
    goto :goto_274

    .end local v3    # "reasonForNoScreenshot":Ljava/lang/String;
    .end local v4    # "sourceCrop":Landroid/graphics/Rect;
    .end local v16    # "surfaceLayer":Landroid/view/SurfaceControl;
    .local v6, "surfaceLayer":Landroid/view/SurfaceControl;
    .local v7, "reasonForNoScreenshot":Ljava/lang/String;
    .restart local p4    # "sourceCrop":Landroid/graphics/Rect;
    :catchall_271
    move-exception v0

    move-object/from16 v5, p4

    .end local p4    # "sourceCrop":Landroid/graphics/Rect;
    .local v5, "sourceCrop":Landroid/graphics/Rect;
    :goto_274
    :try_start_274
    monitor-exit v8
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_279

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_279
    move-exception v0

    goto :goto_274
.end method

.method updateScreenshotRestrictionPolicyLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 769
    iput p1, p0, Lcom/android/server/wm/ScreenshotController;->mLastUpdatedUserId:I

    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenshotController;->isScreenshotDisabledLocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 771
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(IZ)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 773
    .local v0, "disabled":Z
    :goto_17
    iget-object v2, p0, Lcom/android/server/wm/ScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;

    invoke-direct {v3, p1, v0}, Lcom/android/server/wm/-$$Lambda$ScreenshotController$cM-bjhYQtqVCG2JYeqouNH68OaM;-><init>(IZ)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 785
    return-void
.end method
