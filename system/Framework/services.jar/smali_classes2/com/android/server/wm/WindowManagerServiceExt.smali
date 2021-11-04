.class public Lcom/android/server/wm/WindowManagerServiceExt;
.super Ljava/lang/Object;
.source "WindowManagerServiceExt.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;
    }
.end annotation


# static fields
.field static final APP_STARTING_EXIT_DURATION_MS:I = 0x32

.field public static final FORCED_HIDE_NOTCH_DEFAULT:I = -0x1

.field public static final FORCED_HIDE_NOTCH_OFF:I = 0x0

.field public static final FORCED_HIDE_NOTCH_ON:I = 0x1

.field public static final FORCED_HIDE_NOTCH_ON_WM_ONLY:I = 0x2

.field private static final INTENT_ACTION_SCREEN_ROTATION_ANIMATION_STARTED:Ljava/lang/String; = "com.samsung.android.action.SCREEN_ROTATION_ANIMATION_STARTED"

.field private static final MIN_SMALLEST_WIDTH_DP:I = 0x140

.field private static final MIN_SMALLEST_WIDTH_PX_FOR_SUB_BUILT_IN_DISPLAY:I = 0x348

.field private static final PERMISSION_SCREEN_ROTATION_ANIMATION_STARTED:Ljava/lang/String; = "com.samsung.android.permisson.SCREEN_ROTATION_ANIMATION_STARTED"

.field public static final RESOLUTION_FHD:I = 0x1

.field public static final RESOLUTION_HD:I = 0x0

.field public static final RESOLUTION_UNKNOWN:I = -0x1

.field public static final RESOLUTION_WQHD:I = 0x2

.field static final ROTATION_ANIMATION_MARGIN:I = 0x1e

.field private static final SYSFS_LCD_ID:Ljava/lang/String; = "/sys/class/lcd/panel/window_type"

.field private static final TAG:Ljava/lang/String; = "WindowManagerServiceExt"

.field private static final WM_LOGGING_FILE_NAME:Ljava/lang/String; = "wmlogs.txt"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBrThread:Ljava/lang/Thread;

.field mCommandLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

.field mCommandRefreshRateMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

.field final mContext:Landroid/content/Context;

.field final mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

.field private mDisplaySizeDensityChangedReason:Ljava/lang/String;

.field mDisplaySwitching:Z

.field mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

.field mForcedDisplaySizeRequested:Z

.field mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

.field private mGearVrPersistentVrMode:Z

.field private final mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

.field private mHasOneHandOpSpec:Z

.field private mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInputFilterRegistered:Z

.field private mLastReportedRotationToAudioManager:I

.field private mMainBaseDisplayHeight:I

.field private mMainBaseDisplayWidth:I

.field private mMetaScreenEnabled:Z

.field private mOneHandOpMonitor:Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;

.field final mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

.field mRefreshRateBinderToken:Landroid/os/IBinder;

.field mScreenshotController:Lcom/android/server/wm/ScreenshotController;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mTmpDisplaySize:Landroid/graphics/Point;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    .line 494
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandRefreshRateMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    .line 495
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mRefreshRateBinderToken:Landroid/os/IBinder;

    .line 585
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 608
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    .line 609
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIsInputFilterRegistered:Z

    .line 610
    new-instance v2, Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;Lcom/android/server/wm/WindowManagerServiceExt$1;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mOneHandOpMonitor:Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;

    .line 1108
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySwitching:Z

    .line 1109
    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayWidth:I

    .line 1110
    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayHeight:I

    .line 1111
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1508
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceExt$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceExt$1;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrStateCallbacks:Lcom/samsung/android/vr/IGearVrStateCallbacks;

    .line 137
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 140
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1, p0}, Lcom/android/server/policy/WindowManagerPolicy;->createPolicyExtension(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicyExt$WindowManagerFuncs;)Lcom/android/server/policy/WindowManagerPolicyExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 144
    new-instance v0, Lcom/android/server/wm/ScreenshotController;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ScreenshotController;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/ScreenshotController;

    .line 147
    new-instance v0, Lcom/android/server/wm/CustomStartingWindowController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/CustomStartingWindowController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070152

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    .line 156
    const-string v0, "WindowManagerServiceExt"

    const-string v1, "WindowManagerServiceExt :: created"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowManagerServiceExt;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerServiceExt;

    .line 102
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/WindowManagerServiceExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerServiceExt;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/wm/WindowManagerServiceExt;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerServiceExt;
    .param p1, "x1"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrPersistentVrMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowManagerServiceExt;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerServiceExt;
    .param p1, "x1"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->requestMetaScreenDisplayLocked(I)V

    return-void
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 1393
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->getWmLoggingFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_25

    .line 1394
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 1395
    .local v1, "line":Ljava/lang/String;
    :goto_f
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_1b

    move-object v1, v2

    if-eqz v2, :cond_17

    goto :goto_f

    .line 1399
    .end local v1    # "line":Ljava/lang/String;
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_25

    .line 1400
    .end local v0    # "in":Ljava/io/BufferedReader;
    goto :goto_26

    .line 1393
    .restart local v0    # "in":Ljava/io/BufferedReader;
    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v2

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :goto_24
    throw v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25

    .line 1399
    .end local v0    # "in":Ljava/io/BufferedReader;
    .restart local p0    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catch_25
    move-exception v0

    .line 1401
    :goto_26
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 1404
    const-string v0, "  "

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->getWmLoggingFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_3e

    .line 1405
    .local v1, "in":Ljava/io/BufferedReader;
    move-object v2, v0

    .line 1406
    .local v2, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1407
    .local v3, "line":Ljava/lang/String;
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1408
    const-string v4, "dumpCriticalInfo"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_2d

    .line 1410
    if-eqz p1, :cond_26

    .line 1411
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1413
    :cond_26
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 1416
    :cond_2d
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_34

    .line 1417
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3e

    .line 1418
    .end local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3f

    .line 1404
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :catchall_34
    move-exception v0

    :try_start_35
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "pw":Ljava/io/PrintWriter;
    .end local p1    # "msg":Ljava/lang/String;
    :goto_3d
    throw v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 1417
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local p0    # "pw":Ljava/io/PrintWriter;
    .restart local p1    # "msg":Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 1419
    :goto_3f
    return-void
.end method

.method private findTargetSPenGestureWindow(FFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .registers 10
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "topToken"    # Landroid/os/IBinder;

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 845
    float-to-int v1, p1

    .line 846
    .local v1, "x":I
    float-to-int v2, p2

    .line 847
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 848
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_1f

    .line 849
    const-string v4, "WindowManagerServiceExt"

    const-string v5, "findTargetSPenGestureWindow : failed to get display content"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v4, 0x0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 852
    :cond_1f
    :try_start_1f
    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$1U6ZaqaCbj7oONRorJORX_XlgT0;

    invoke-direct {v4, v1, v2, p3}, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$1U6ZaqaCbj7oONRorJORX_XlgT0;-><init>(IILandroid/os/IBinder;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 913
    .local v4, "touchedWin":Lcom/android/server/wm/WindowState;
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 914
    .end local v1    # "x":I
    .end local v2    # "y":I
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "touchedWin":Lcom/android/server/wm/WindowState;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private findTargetSmartClipWindow(FFLandroid/os/IBinder;I)Lcom/android/server/wm/WindowState;
    .registers 10
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "topToken"    # Landroid/os/IBinder;
    .param p4, "windowTargetingType"    # I

    .line 1269
    float-to-int v0, p1

    .line 1270
    .local v0, "x":I
    float-to-int v1, p2

    .line 1271
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1273
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_13

    .line 1274
    const-string v3, "WindowManagerServiceExt"

    const-string v4, "findTargetSmartClipWindow : failed to get display content"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v3, 0x0

    return-object v3

    .line 1278
    :cond_13
    new-instance v3, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$x9n6sWlf3iTAj2v7FjaTfLN38gY;

    invoke-direct {v3, v0, v1, p4, p3}, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$x9n6sWlf3iTAj2v7FjaTfLN38gY;-><init>(IIILandroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1354
    .local v3, "touchedWin":Lcom/android/server/wm/WindowState;
    return-object v3
.end method

.method private getAppIdOf(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 181
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    .line 182
    .end local v0    # "uid":I
    :catch_10
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to resolve "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'s UID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerServiceExt"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, -0x1

    return v0
.end method

.method public static getDisplayResolution(II)I
    .registers 7
    .param p0, "width"    # I
    .param p1, "height"    # I

    .line 431
    const/4 v0, -0x1

    .line 432
    .local v0, "displayResolution":I
    const/16 v1, 0x780

    const/16 v2, 0x438

    const/16 v3, 0x2d0

    if-lt p0, v3, :cond_11

    if-ge p0, v2, :cond_11

    if-lt p1, v2, :cond_11

    if-ge p1, v1, :cond_11

    .line 433
    const/4 v0, 0x0

    goto :goto_2c

    .line 434
    :cond_11
    const/16 v3, 0xa00

    const/16 v4, 0x5a0

    if-lt p0, v2, :cond_1f

    if-ge p0, v4, :cond_1f

    if-lt p1, v1, :cond_1f

    if-ge p1, v3, :cond_1f

    .line 435
    const/4 v0, 0x1

    goto :goto_2c

    .line 436
    :cond_1f
    if-lt p0, v4, :cond_2c

    const/16 v1, 0x870

    if-ge p0, v1, :cond_2c

    if-lt p1, v3, :cond_2c

    const/16 v1, 0xf00

    if-ge p1, v1, :cond_2c

    .line 437
    const/4 v0, 0x2

    .line 439
    :cond_2c
    :goto_2c
    return v0
.end method

.method public static getWmLoggingFile()Ljava/io/File;
    .registers 8

    .line 1381
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1382
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1383
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "wmlogs.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1385
    .local v2, "fileName":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x500000

    cmp-long v4, v4, v6

    if-lez v4, :cond_42

    .line 1386
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".backup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1387
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    .line 1389
    :cond_42
    return-object v2
.end method

.method private isLCDDetached()Z
    .registers 4

    .line 1063
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->readResultFromFile()Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, "resultId":Ljava/lang/String;
    const-string v1, "ff ff ff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LCD Detached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerServiceExt"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 v1, 0x1

    return v1

    .line 1068
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$findTargetSPenGestureWindow$3(IILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "topToken"    # Landroid/os/IBinder;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 853
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 854
    .local v0, "tmpRect":Landroid/graphics/Rect;
    iget-object v1, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 855
    .local v1, "flags":I
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 857
    .local v2, "type":I
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 859
    return v4

    .line 862
    :cond_15
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_1a

    .line 864
    return v4

    .line 867
    :cond_1a
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 868
    .local v3, "tmpRegion":Landroid/graphics/Region;
    invoke-virtual {p3, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 869
    invoke-virtual {v3, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v5

    if-nez v5, :cond_29

    .line 870
    return v4

    .line 874
    :cond_29
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 875
    iget v5, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5a

    .line 879
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 880
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 881
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 882
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_ad

    .line 883
    :cond_5a
    iget v5, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_84

    .line 887
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 888
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 889
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 890
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_ad

    .line 891
    :cond_84
    iget v5, p3, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_ad

    .line 895
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 896
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 897
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 898
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p3, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 901
    :cond_ad
    :goto_ad
    and-int/lit8 v5, v1, 0x28

    if-nez v5, :cond_b3

    move v5, v6

    goto :goto_b4

    :cond_b3
    move v5, v4

    .line 902
    .local v5, "consumesTouchForEntireScreenArea":Z
    :goto_b4
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    .line 904
    .local v7, "contains":Z
    if-nez v7, :cond_bc

    if-eqz v5, :cond_c5

    .line 906
    :cond_bc
    iget-object v8, p3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    if-eq v8, p2, :cond_c5

    .line 907
    return v6

    .line 911
    :cond_c5
    return v4
.end method

.method static synthetic lambda$findTargetSmartClipWindow$4(IIILandroid/os/IBinder;Lcom/android/server/wm/WindowState;)Z
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "windowTargetingType"    # I
    .param p3, "topToken"    # Landroid/os/IBinder;
    .param p4, "w"    # Lcom/android/server/wm/WindowState;

    .line 1279
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1280
    .local v0, "tmpRect":Landroid/graphics/Rect;
    iget-object v1, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1281
    .local v1, "flags":I
    iget-object v2, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1283
    .local v2, "type":I
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_15

    .line 1285
    return v4

    .line 1288
    :cond_15
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_1a

    .line 1290
    return v4

    .line 1293
    :cond_1a
    invoke-virtual {p4, v0}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    .line 1294
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1295
    return v4

    .line 1298
    :cond_24
    const/4 v3, 0x1

    if-ne p2, v3, :cond_36

    .line 1300
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    .line 1301
    .local v5, "tmpRegion":Landroid/graphics/Region;
    invoke-virtual {p4, v5}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1302
    invoke-virtual {v5, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-nez v6, :cond_36

    .line 1303
    return v4

    .line 1314
    .end local v5    # "tmpRegion":Landroid/graphics/Region;
    :cond_36
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1315
    iget v5, p4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-ne v5, v3, :cond_66

    .line 1319
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1320
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1321
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1322
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_b9

    .line 1323
    :cond_66
    iget v5, p4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_90

    .line 1327
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1328
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1329
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1330
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_b9

    .line 1331
    :cond_90
    iget v5, p4, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b9

    .line 1335
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 1336
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 1337
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 1338
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p4, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1341
    :cond_b9
    :goto_b9
    and-int/lit8 v5, v1, 0x28

    if-nez v5, :cond_bf

    move v5, v3

    goto :goto_c0

    :cond_bf
    move v5, v4

    .line 1342
    .local v5, "consumesTouchForEntireScreenArea":Z
    :goto_c0
    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    .line 1344
    .local v6, "contains":Z
    if-nez v6, :cond_c8

    if-eqz v5, :cond_d1

    .line 1346
    :cond_c8
    iget-object v7, p4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-eq v7, p3, :cond_d1

    .line 1347
    return v3

    .line 1351
    :cond_d1
    return v4
.end method

.method public static logCriticalInfo(Ljava/lang/String;)V
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;

    .line 1425
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceExt;->getWmLoggingFile()Ljava/io/File;

    move-result-object v0

    .line 1426
    .local v0, "fname":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1427
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1428
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1430
    .local v4, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 1432
    nop

    .line 1433
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    .line 1432
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_49} :catch_4b

    .line 1437
    nop

    .end local v0    # "fname":Ljava/io/File;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "dateString":Ljava/lang/String;
    goto :goto_4c

    .line 1436
    :catch_4b
    move-exception v0

    .line 1438
    :goto_4c
    return-void
.end method

.method private readResultFromFile()Ljava/lang/String;
    .registers 5

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/class/lcd/panel/window_type"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_2f

    .line 1077
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 1078
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_25

    goto :goto_11

    .line 1080
    :cond_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_2f

    .line 1082
    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_33

    .line 1075
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_25
    move-exception v2

    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    :goto_2e
    throw v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 1080
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    :catch_2f
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1083
    .end local v1    # "e":Ljava/io/IOException;
    :goto_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private requestMetaScreenDisplayLocked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[metascreen] requestMetaScreenDisplay displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->requestMetaScreenDisplay(I)V

    .line 1548
    return-void
.end method


# virtual methods
.method adjustHeightForHideNotchIfNeeded(Lcom/android/server/wm/DisplayContent;II)I
    .registers 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1360
    move v0, p3

    .line 1361
    .local v0, "fixedHeight":I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_cutout_hide_notch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1363
    .local v1, "hideNotch":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6b

    .line 1364
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1365
    .local v4, "ratio":F
    int-to-float v5, p2

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 1366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustHeightForHideNotchIfNeeded: ratio="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManagerServiceExt"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    if-eq v0, p3, :cond_62

    .line 1369
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "display_size_forced"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1372
    :cond_62
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1375
    .end local v4    # "ratio":F
    :cond_6b
    return v0
.end method

.method applyScreenRatioToSizeDensity(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;I)Z
    .registers 20
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "forcedSize"    # Ljava/lang/String;
    .param p3, "forcedDensity"    # I

    .line 1010
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_HIGH_PERFORMANCE_MODE:Z

    const-string v4, "WindowManagerServiceExt"

    const/4 v5, 0x0

    if-eqz v3, :cond_13

    .line 1011
    const-string v3, "don\'t need apply in high performance mode"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return v5

    .line 1015
    :cond_13
    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1c

    .line 1016
    return v5

    .line 1019
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerServiceExt;->isLCDDetached()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1020
    const-string v3, "LCD detached.. skip to set high performance concept"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return v5

    .line 1024
    :cond_28
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 1025
    .local v6, "baseScreenRatio":D
    const/4 v3, 0x0

    .line 1028
    .local v3, "changed":Z
    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 1029
    .local v8, "baseWidth":I
    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    int-to-double v12, v9

    mul-double/2addr v12, v10

    double-to-int v9, v12

    .line 1032
    .local v9, "baseHeight":I
    if-lez v2, :cond_3d

    int-to-double v12, v2

    mul-double/2addr v12, v10

    double-to-int v12, v12

    goto :goto_42

    .line 1033
    :cond_3d
    iget v12, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    int-to-double v12, v12

    mul-double/2addr v12, v10

    double-to-int v12, v12

    :goto_42
    nop

    .line 1035
    .local v12, "baseDensity":I
    iget v13, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v13, v8, :cond_54

    iget v13, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v13, v9, :cond_4c

    goto :goto_54

    .line 1039
    :cond_4c
    iget v13, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v13, v12, :cond_58

    .line 1040
    iput v12, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 1041
    const/4 v3, 0x1

    goto :goto_58

    .line 1037
    :cond_54
    :goto_54
    invoke-virtual {v1, v8, v9, v12}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    .line 1038
    const/4 v3, 0x1

    .line 1044
    :cond_58
    :goto_58
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "applyScreenRatioToSizeDensity init size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dpi base size: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dpi baseScreenRatio: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-eqz v3, :cond_bc

    .line 1053
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v4, v1, v5, v10}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 1055
    iget-object v4, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v5, v10}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 1058
    :cond_bc
    return v3
.end method

.method public broadcastScreenRotationAnimationStarted(J)V
    .registers 6
    .param p1, "duration"    # J

    .line 1483
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mBrThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1484
    :cond_a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$e1pSd6An8Ga8MpN1kNSgqIahV1U;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;J)V

    const-string/jumbo v2, "screenRotationBroadcast"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mBrThread:Ljava/lang/Thread;

    .line 1498
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1500
    :cond_1c
    return-void
.end method

.method canDispatchToDisplay(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 1579
    const/4 v0, 0x0

    return v0
.end method

.method public cancelPendingTakeScreenshotRunnable()V
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/ScreenshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenshotController;->cancelPendingTakeScreenshotRunnable()V

    .line 399
    return-void
.end method

.method changeDisplayScale(FFFZLandroid/view/IInputFilter;)V
    .registers 15
    .param p1, "scale"    # F
    .param p2, "offsetX"    # F
    .param p3, "offsetY"    # F
    .param p4, "registerInput"    # Z
    .param p5, "filter"    # Landroid/view/IInputFilter;

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 615
    const-string v1, "WindowManagerServiceExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDisplayScale, mHasOneHandOpSpec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", offsetX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", offsetY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", registerInput="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", filter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 622
    .local v1, "spec":Landroid/view/MagnificationSpec;
    const/4 v2, 0x0

    .line 623
    .local v2, "scheduleAnim":Z
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 625
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_61

    .line 626
    const-string v4, "WindowManagerServiceExt"

    const-string v5, "changeDisplayScale, display is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 630
    :cond_61
    const/4 v4, 0x0

    cmpg-float v4, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_c6

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_c6

    .line 631
    :try_start_6e
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 632
    .local v4, "displaySpec":Landroid/view/MagnificationSpec;
    if-eqz v4, :cond_ab

    .line 633
    iget-boolean v7, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    if-eqz v7, :cond_9f

    .line 635
    iget v7, v4, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v7, v7, p1

    if-eqz v7, :cond_80

    move v7, v6

    goto :goto_81

    :cond_80
    move v7, v5

    .line 636
    .local v7, "scaleChanged":Z
    :goto_81
    iget v8, v4, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v8, v8, p2

    if-nez v8, :cond_8d

    iget v8, v4, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v8, v8, p3

    if-eqz v8, :cond_8e

    :cond_8d
    move v5, v6

    .line 638
    .local v5, "offsetChanged":Z
    :cond_8e
    if-nez v7, :cond_9e

    if-nez v5, :cond_9e

    .line 639
    const-string v6, "WindowManagerServiceExt"

    const-string v8, "changeDisplayScale, the requested scale and offset are same"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_6e .. :try_end_9a} :catchall_f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 642
    .end local v5    # "offsetChanged":Z
    .end local v7    # "scaleChanged":Z
    :cond_9e
    goto :goto_ab

    .line 644
    :cond_9f
    :try_start_9f
    const-string v5, "WindowManagerServiceExt"

    const-string v6, "changeDisplayScale, other requested spec exists"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 648
    :cond_ab
    :goto_ab
    :try_start_ab
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    .line 649
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    .line 650
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v5, v7, v1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 651
    const/4 v2, 0x1

    .line 653
    if-eqz p4, :cond_c5

    .line 654
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v5, p5}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 655
    iput-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIsInputFilterRegistered:Z

    .line 657
    .end local v4    # "displaySpec":Landroid/view/MagnificationSpec;
    :cond_c5
    goto :goto_e2

    .line 658
    :cond_c6
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    if-eqz v4, :cond_e2

    .line 659
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v4, v7, v1}, Lcom/android/server/wm/WindowManagerService;->applyMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 660
    const/4 v2, 0x1

    .line 661
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    .line 662
    if-eqz p4, :cond_e2

    .line 663
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 664
    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIsInputFilterRegistered:Z

    .line 668
    :cond_e2
    :goto_e2
    if-eqz v2, :cond_f0

    .line 669
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 670
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 672
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    .end local v2    # "scheduleAnim":Z
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_ab .. :try_end_f1} :catchall_f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 673
    return-void

    .line 672
    :catchall_f5
    move-exception v1

    :try_start_f6
    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCustomStartingWindowController:Lcom/android/server/wm/CustomStartingWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CustomStartingWindowController;->clearDataForAllUsers(Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method clearForcedDisplaySizeDensity(I)V
    .registers 14
    .param p1, "displayId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_81

    .line 242
    if-nez p1, :cond_64

    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 248
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_54

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 249
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 250
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_3a

    .line 263
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->getForcedDisplaySize(Landroid/graphics/Point;)V

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 265
    .local v5, "width":I
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->y:I

    .line 266
    .local v6, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->getForcedDisplayDensity()I

    move-result v7

    .line 277
    .local v7, "density":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V

    .line 280
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "density":I
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_4e

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_54

    .line 282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, -0x1

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/wm/WindowManagerServiceExt;->updateDisplaySizeDensityChangedReason(IIIIIZI)V

    .line 285
    nop

    .line 286
    return-void

    .line 280
    :catchall_4e
    move-exception v3

    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .end local p1    # "displayId":I
    throw v3
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    .line 282
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .restart local p1    # "displayId":I
    :catchall_54
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, -0x1

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/WindowManagerServiceExt;->updateDisplaySizeDensityChangedReason(IIIIIZI)V

    .line 285
    throw v2

    .line 243
    .end local v0    # "ident":J
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input illegalArgument(displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_81
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method clearOneHandOpWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->clearOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 698
    return-void
.end method

.method public dispatchSPenGestureEvent(II[Landroid/view/InputEvent;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "inputEvents"    # [Landroid/view/InputEvent;
    .param p4, "topToken"    # Landroid/os/IBinder;

    .line 820
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1, p4}, Lcom/android/server/wm/WindowManagerServiceExt;->findTargetSPenGestureWindow(FFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 821
    .local v0, "target":Lcom/android/server/wm/WindowState;
    const-string v1, "WindowManagerServiceExt"

    if-eqz v0, :cond_56

    .line 822
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-ne v2, v3, :cond_1e

    .line 823
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1d

    .line 824
    const-string v2, "dispatchSPenGestureEvent : The target window is NavBar"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1d
    return-void

    .line 829
    :cond_1e
    :try_start_1e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_36

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSPenGestureEvent : The target window is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_36
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p3}, Landroid/view/IWindow;->dispatchSPenGestureEvent([Landroid/view/InputEvent;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_3c

    goto :goto_55

    .line 833
    :catch_3c
    move-exception v2

    .line 834
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call IWindow.dispatchSmartClipRemoteRequest()! e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 834
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_55
    goto :goto_8a

    .line 838
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSPenGestureEvent : Could not find the target window!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_7e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_80

    :cond_7e
    const-string v3, ""

    :goto_80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_8a
    return-void
.end method

.method dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V
    .registers 13
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p3, "request"    # Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;
    .param p4, "topToken"    # Landroid/os/IBinder;

    .line 1228
    const-string v0, "WindowManagerServiceExt"

    if-nez p3, :cond_a

    .line 1229
    const-string v1, "dispatchSmartClipRemoteRequest : request is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    return-void

    .line 1234
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerPid:I

    .line 1235
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mCallerUid:I

    .line 1237
    int-to-float v1, p1

    int-to-float v2, p2

    iget v3, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mWindowTargetingType:I

    invoke-direct {p0, v1, v2, p4, v3}, Lcom/android/server/wm/WindowManagerServiceExt;->findTargetSmartClipWindow(FFLandroid/os/IBinder;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1240
    .local v1, "target":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_44

    .line 1242
    iget v2, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v2, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mTargetWindowLayer:I

    .line 1244
    :try_start_24
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, p3}, Landroid/view/IWindow;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2a

    goto :goto_43

    .line 1245
    :catch_2a
    move-exception v2

    .line 1246
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchSmartClipRemoteRequest : Failed to call IWindow.dispatchSmartClipRemoteRequest()! e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_43
    goto :goto_97

    .line 1249
    :cond_44
    const-string v0, "WindowManagerServiceExt_SmartClip"

    .line 1250
    .local v0, "SMARTCLIP_TAG":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSmartClipRemoteRequest : Could not find the target window! x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManagerServiceExt_SmartClip"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v2, "dispatchSmartClipRemoteRequest : Send empty response..."

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "spengestureservice"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 1257
    .local v2, "spenGestureManager":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :try_start_74
    new-instance v4, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    iget v5, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    iget v6, p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 1260
    .local v4, "emptyResultData":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v2, v4}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_81} :catch_82

    .line 1263
    .end local v4    # "emptyResultData":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    goto :goto_97

    .line 1261
    :catch_82
    move-exception v4

    .line 1262
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchSmartClipRemoteRequest : Failed to send the empty result! e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v0    # "SMARTCLIP_TAG":Ljava/lang/String;
    .end local v2    # "spenGestureManager":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_97
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 936
    const-string v0, "WINDOW MANAGER EXTENSION (dumpsys window extension)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    const-string v0, "  "

    .line 939
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    const-string v2, "  "

    if-eqz v1, :cond_1e

    .line 940
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v1, "mDisplaySizeDensityChangedReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 946
    :cond_1e
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mHasOneHandOpSpec="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 947
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    const-string/jumbo v1, "mIsInputFilterRegistered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIsInputFilterRegistered:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 949
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 953
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 957
    invoke-static {p1, v2}, Lcom/android/server/wm/BoundsCompatController;->dumpStaticValues(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 965
    return-void
.end method

.method public ensureActivitiesVisible()V
    .registers 5

    .line 1220
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1221
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1222
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1223
    return-void

    .line 1222
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method executeRefreshRateTokenIfPossible(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 498
    const-string v0, "-lowRefreshRate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    .line 499
    array-length v0, p2

    if-ne v0, v3, :cond_3b

    aget-object v0, p2, v2

    if-nez v0, :cond_13

    goto :goto_3b

    .line 502
    :cond_13
    aget-object v0, p2, v2

    const-string/jumbo v4, "on"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    if-nez v0, :cond_2e

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 505
    const-string v1, "WindowManagerCommand-LowRefreshRate"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->acquireLowRefreshRateToken(Ljava/lang/String;)Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    .line 507
    :cond_2e
    return v3

    .line 509
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;

    if-eqz v0, :cond_8e

    .line 511
    :try_start_33
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/ILowRefreshRateToken;->release()V

    .line 512
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandLowRefreshRateToken:Lcom/samsung/android/hardware/display/ILowRefreshRateToken;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_38} :catch_39

    .line 514
    goto :goto_3a

    .line 513
    :catch_39
    move-exception v0

    .line 515
    :goto_3a
    return v3

    .line 500
    :cond_3b
    :goto_3b
    const-string v0, "Error: lowRefreshRateToken option requires [true/false]"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8e

    .line 519
    :cond_41
    const-string v0, "-refreshRateMaxLimit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 521
    array-length v0, p2

    if-ne v0, v3, :cond_89

    aget-object v0, p2, v2

    if-nez v0, :cond_51

    goto :goto_89

    .line 524
    :cond_51
    aget-object v0, p2, v2

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandRefreshRateMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-nez v0, :cond_7c

    .line 526
    nop

    .line 527
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 526
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 529
    .local v0, "dm":Landroid/hardware/display/IDisplayManager;
    :try_start_6a
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 530
    .local v1, "refreshRate":I
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mRefreshRateBinderToken:Landroid/os/IBinder;

    const-string v4, "WindowManagerCommand-MaxLimit"

    invoke-interface {v0, v2, v1, v4}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMaxLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandRefreshRateMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7a} :catch_7b

    .line 534
    .end local v1    # "refreshRate":I
    goto :goto_7c

    .line 533
    :catch_7b
    move-exception v1

    .line 536
    .end local v0    # "dm":Landroid/hardware/display/IDisplayManager;
    :cond_7c
    :goto_7c
    return v3

    .line 538
    :cond_7d
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandRefreshRateMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;

    if-eqz v0, :cond_8e

    .line 540
    :try_start_81
    invoke-interface {v0}, Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;->release()V

    .line 541
    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mCommandRefreshRateMaxLimitToken:Lcom/samsung/android/hardware/display/IRefreshRateMaxLimitToken;
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_86} :catch_87

    .line 543
    goto :goto_88

    .line 542
    :catch_87
    move-exception v0

    .line 544
    :goto_88
    return v3

    .line 522
    :cond_89
    :goto_89
    const-string v0, "Error: refreshRateMaxLimit option requires [RefreshRate] value"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    :cond_8e
    :goto_8e
    return v2
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "opti"    # I
    .param p4, "command"    # Ljava/lang/String;

    .line 444
    array-length v0, p2

    const/4 v1, 0x0

    if-ge p3, v0, :cond_9

    .line 445
    array-length v0, p2

    sub-int/2addr v0, p3

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_b

    :cond_9
    new-array v0, v1, [Ljava/lang/String;

    .line 446
    .local v0, "newArgs":[Ljava/lang/String;
    :goto_b
    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {p2, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    :try_start_10
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_PACKAGE_CONFIGURATION_BY_POLICY:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 449
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mPackageConfigurationController:Lcom/android/server/wm/PackageConfigurationController;

    invoke-virtual {v2, p4, v0, p1}, Lcom/android/server/wm/PackageConfigurationController;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 451
    return v3

    .line 455
    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_29} :catch_4d

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 456
    invoke-static {p4, v0, p1}, Lcom/android/server/wm/BoundsCompatController;->executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 457
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_47

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 459
    :cond_37
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_47

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 461
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v2, :cond_46

    .line 462
    invoke-virtual {p0, p4, v0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->executeRefreshRateTokenIfPossible(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_4d

    if-eqz v2, :cond_46

    .line 463
    return v3

    .line 468
    :cond_46
    goto :goto_51

    .line 459
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "newArgs":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    .end local p3    # "opti":I
    .end local p4    # "command":Ljava/lang/String;
    throw v3
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4d

    .line 466
    .restart local v0    # "newArgs":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "args":[Ljava/lang/String;
    .restart local p3    # "opti":I
    .restart local p4    # "command":Ljava/lang/String;
    :catch_4d
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_51
    return v1
.end method

.method public getCoverPolicyControllerLocked()Lcom/android/server/wm/CoverPolicyController;
    .registers 2

    .line 788
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mCoverController:Lcom/android/server/wm/CoverPolicyController;

    return-object v0
.end method

.method public getDisplayIdForPointerIcon()I
    .registers 2

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService;->getDisplayIdForPointerIcon()I

    move-result v0

    return v0
.end method

.method public getFocusedTaskIdWithoutHome()I
    .registers 3

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 922
    .local v0, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 923
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 924
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    return v1

    .line 926
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method getForcedDisplayDensity()I
    .registers 5

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "densityStr":Ljava/lang/String;
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_34

    if-lez v2, :cond_27

    .line 228
    :try_start_1d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_26
    .catchall {:try_start_1d .. :try_end_21} :catchall_34

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 229
    :catch_26
    move-exception v2

    .line 232
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 233
    .end local v1    # "densityStr":Ljava/lang/String;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getForcedDisplaySize(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "point"    # Landroid/graphics/Point;

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "sizeStr":Ljava/lang/String;
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    .line 205
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 206
    .local v3, "pos":I
    if-lez v3, :cond_46

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_58

    if-ne v2, v3, :cond_46

    .line 209
    const/4 v2, 0x0

    :try_start_2b
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, "width":I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 211
    .local v4, "height":I
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Point;->set(II)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_40} :catch_45
    .catchall {:try_start_2b .. :try_end_40} :catchall_58

    .line 212
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 213
    .end local v2    # "width":I
    .end local v4    # "height":I
    :catch_45
    move-exception v2

    .line 217
    .end local v3    # "pos":I
    :cond_46
    :try_start_46
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 218
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 219
    .end local v1    # "sizeStr":Ljava/lang/String;
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 220
    return-void

    .line 219
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getInitialDisplayProperties(I)[I
    .registers 7
    .param p1, "displayId"    # I

    .line 970
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 971
    .local v0, "displayProperties":[I
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 972
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 973
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_2e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 974
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    aput v4, v0, v3

    .line 975
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    aput v4, v0, v3

    .line 976
    const/4 v3, 0x2

    iget v4, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    aput v4, v0, v3

    .line 978
    .end local v2    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 979
    return-object v0

    .line 978
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getMetaScreenDisplayId()I
    .registers 3

    .line 1562
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1563
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrManagerInternal:Lcom/samsung/android/vr/GearVrManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/vr/GearVrManagerInternal;->getMetaScreenDisplayId()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, -0x1

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1564
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPenState()I
    .registers 5

    .line 1091
    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v2, -0x100

    const/16 v3, 0x13

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_16

    .line 1093
    .local v1, "switchState":I
    if-nez v1, :cond_11

    .line 1094
    const/4 v0, 0x1

    return v0

    .line 1095
    :cond_11
    if-lez v1, :cond_15

    .line 1096
    const/4 v0, 0x0

    return v0

    .line 1100
    .end local v1    # "switchState":I
    :cond_15
    goto :goto_1e

    .line 1098
    :catch_16
    move-exception v1

    .line 1099
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "WindowManagerServiceExt"

    const-string v3, "getPenState failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return v0
.end method

.method getSubBuiltInDisplaySize(Landroid/graphics/Point;ILandroid/view/DisplayInfo;)V
    .registers 7
    .param p1, "outSize"    # Landroid/graphics/Point;
    .param p2, "density"    # I
    .param p3, "nonOverrideInfo"    # Landroid/view/DisplayInfo;

    .line 1193
    mul-int/lit16 v0, p2, 0x140

    int-to-float v0, v0

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1194
    .local v0, "minWidth":I
    const/16 v1, 0x348

    if-ge v0, v1, :cond_e

    .line 1195
    const/16 v0, 0x348

    .line 1197
    :cond_e
    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v1, v0, :cond_1d

    .line 1198
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 1199
    iget v1, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v1, v0

    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_25

    .line 1201
    :cond_1d
    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1202
    iget v1, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1204
    :goto_25
    return-void
.end method

.method getVisibleWindowInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 564
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 565
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_23

    .line 566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 567
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v2

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 569
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 570
    const/4 v0, 0x0

    return-object v0

    .line 569
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public handleDexDpadShortcut(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "focusedToken"    # Landroid/os/IBinder;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1000
    return-void
.end method

.method public hasOneHandOpSpec(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 677
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mHasOneHandOpSpec:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public ignoreHideNoneSystemOverlayWindowAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1445
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnoreHideNonSystemOverlayWindowApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isForceCrossFadeRotationAnimation()Z
    .registers 3

    .line 1568
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1569
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrPersistentVrMode:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMetaScreenEnabled:Z

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1570
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isGearVrPersistentVrMode()Z
    .registers 3

    .line 1556
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1557
    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mGearVrPersistentVrMode:Z

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1558
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isIgnorePolicyNotAllowedUid(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method isPreventWakingUpLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-nez v0, :cond_e

    .line 800
    const-class v0, Lcom/samsung/android/edge/EdgeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    .line 802
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mEdgeInternal:Lcom/samsung/android/edge/EdgeManagerInternal;

    if-eqz v0, :cond_23

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    .line 803
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/edge/EdgeManagerInternal;->showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 805
    const/4 v0, 0x1

    return v0

    .line 807
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$broadcastScreenRotationAnimationStarted$5$WindowManagerServiceExt(J)V
    .registers 7
    .param p1, "duration"    # J

    .line 1486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1487
    invoke-interface {v0}, Landroid/app/IActivityManager;->getProcessesReady()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.SCREEN_ROTATION_ANIMATION_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "now"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1490
    const-string v1, "duration"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1491
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.permisson.SCREEN_ROTATION_ANIMATION_STARTED"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    .line 1496
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2f
    goto :goto_3a

    .line 1494
    :catch_30
    move-exception v0

    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProcessesReady() "

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3a
    return-void
.end method

.method public synthetic lambda$screenTurnedOn$0$WindowManagerServiceExt()V
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceExt;->setRotationInfoForAudioManager()V

    return-void
.end method

.method public synthetic lambda$setRotationInfoForAudioManager$1$WindowManagerServiceExt(Ljava/lang/String;)V
    .registers 3
    .param p1, "param"    # Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$updateCoverState$2$WindowManagerServiceExt()V
    .registers 2

    .line 778
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    .line 780
    return-void
.end method

.method public launchHomeForDesktopMode(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->launchHomeForDesktopMode(I)V

    .line 984
    return-void
.end method

.method public onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V
    .registers 4
    .param p1, "features"    # Landroid/util/SparseIntArray;

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 556
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v1, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->onLockTaskFeaturesChanged(Landroid/util/SparseIntArray;)V

    .line 557
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 558
    return-void

    .line 557
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reconfigureDisplay(I)V
    .registers 7
    .param p1, "displayId"    # I

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 476
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_33

    .line 477
    const-string v2, "WindowManagerServiceExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconfigureDisplay: displayContent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 480
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 481
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 482
    return-void

    .line 481
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method registerOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 3
    .param p1, "watcher"    # Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 681
    if-eqz p1, :cond_7

    .line 682
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mOneHandOpMonitor:Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;->registerWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    .line 684
    :cond_7
    return-void
.end method

.method public removeTask(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->removeTask(I)Z

    .line 932
    return-void
.end method

.method public resetScreenshotConnection()V
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/ScreenshotController;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenshotController;->resetScreenshotConnection()V

    .line 404
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$mUToOJUZwxTNTKevRSQwEABKMPk;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$mUToOJUZwxTNTKevRSQwEABKMPk;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 489
    return-void
.end method

.method public sendTakeScreenshotRunnable(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "display"    # I

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mScreenshotController:Lcom/android/server/wm/ScreenshotController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ScreenshotController;->sendTakeScreenshotRunnable(II)V

    .line 394
    return-void
.end method

.method setForcedDisplaySizeDensity(IIIIZI)V
    .registers 23
    .param p1, "displayId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .param p5, "saveToSettings"    # Z
    .param p6, "forcedHideNotch"    # I

    .line 291
    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d4

    .line 295
    if-nez v10, :cond_b7

    .line 299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 301
    .local v11, "ident":J
    :try_start_14
    iget-object v0, v9, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_9d

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 302
    iget-object v0, v9, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 303
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_67

    .line 304
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p5, :cond_30

    if-ltz p2, :cond_30

    if-ltz p3, :cond_30

    move v6, v2

    goto :goto_31

    :cond_30
    move v6, v3

    .line 305
    .local v6, "saveSize":Z
    :goto_31
    if-eqz p5, :cond_37

    if-ltz p4, :cond_37

    move v7, v2

    goto :goto_38

    :cond_37
    move v7, v3

    .line 306
    .local v7, "saveDensity":Z
    :goto_38
    if-gez p2, :cond_3e

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I
    :try_end_3c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_8b

    move v3, v2

    goto :goto_40

    :cond_3e
    move/from16 v3, p2

    .line 307
    .end local p2    # "width":I
    .local v3, "width":I
    :goto_40
    if-gez p3, :cond_4c

    :try_start_42
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_46

    move v4, v2

    goto :goto_4e

    .line 336
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "saveSize":Z
    .end local v7    # "saveDensity":Z
    :catchall_46
    move-exception v0

    move/from16 v4, p3

    move/from16 v15, p4

    goto :goto_92

    .line 307
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "saveSize":Z
    .restart local v7    # "saveDensity":Z
    :cond_4c
    move/from16 v4, p3

    .line 308
    .end local p3    # "height":I
    .local v4, "height":I
    :goto_4e
    if-gez p4, :cond_58

    :try_start_50
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_54

    move v5, v2

    goto :goto_5a

    .line 336
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "saveSize":Z
    .end local v7    # "saveDensity":Z
    :catchall_54
    move-exception v0

    move/from16 v15, p4

    goto :goto_92

    .line 308
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "saveSize":Z
    .restart local v7    # "saveDensity":Z
    :cond_58
    move/from16 v5, p4

    .line 333
    .end local p4    # "density":I
    .local v5, "density":I
    :goto_5a
    move-object v2, v0

    move/from16 v8, p6

    :try_start_5d
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZZI)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_64

    move v13, v3

    move v14, v4

    move v15, v5

    goto :goto_6d

    .line 336
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "saveSize":Z
    .end local v7    # "saveDensity":Z
    :catchall_64
    move-exception v0

    move v15, v5

    goto :goto_92

    .line 303
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "density":I
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "density":I
    :cond_67
    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    .line 336
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "density":I
    .local v13, "width":I
    .local v14, "height":I
    .local v15, "density":I
    :goto_6d
    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_87

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_85

    .line 338
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    const/4 v3, -0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WindowManagerServiceExt;->updateDisplaySizeDensityChangedReason(IIIIIZI)V

    .line 341
    nop

    .line 342
    return-void

    .line 338
    :catchall_85
    move-exception v0

    goto :goto_a4

    .line 336
    :catchall_87
    move-exception v0

    move v3, v13

    move v4, v14

    goto :goto_92

    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "density":I
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "density":I
    :catchall_8b
    move-exception v0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v15, p4

    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "density":I
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v15    # "density":I
    :goto_92
    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_9b

    :try_start_93
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v11    # "ident":J
    .end local v15    # "density":I
    .end local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .end local p1    # "displayId":I
    .end local p5    # "saveToSettings":Z
    .end local p6    # "forcedHideNotch":I
    throw v0
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_97

    .line 338
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    .restart local v11    # "ident":J
    .restart local v15    # "density":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .restart local p1    # "displayId":I
    .restart local p5    # "saveToSettings":Z
    .restart local p6    # "forcedHideNotch":I
    :catchall_97
    move-exception v0

    move v13, v3

    move v14, v4

    goto :goto_a4

    .line 336
    :catchall_9b
    move-exception v0

    goto :goto_92

    .line 338
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v15    # "density":I
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "density":I
    :catchall_9d
    move-exception v0

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    .end local p2    # "width":I
    .end local p3    # "height":I
    .end local p4    # "density":I
    .restart local v13    # "width":I
    .restart local v14    # "height":I
    .restart local v15    # "density":I
    :goto_a4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    const/4 v3, -0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/WindowManagerServiceExt;->updateDisplaySizeDensityChangedReason(IIIIIZI)V

    .line 341
    throw v0

    .line 296
    .end local v11    # "ident":J
    .end local v13    # "width":I
    .end local v14    # "height":I
    .end local v15    # "density":I
    .restart local p2    # "width":I
    .restart local p3    # "height":I
    .restart local p4    # "density":I
    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input illegalArgument(displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_d4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must hold permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setForcedDisplaySizeRequestedLocked(Z)V
    .registers 4
    .param p1, "requested"    # Z

    .line 1207
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mForcedDisplaySizeRequested:Z

    if-eq v0, p1, :cond_35

    .line 1208
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mForcedDisplaySizeRequested:Z

    .line 1209
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2e

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForcedDisplaySizeRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    .line 1211
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    const-string v1, "WindowManagerServiceExt"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setForcedDisplaySizeRequestedLw(Z)V

    .line 1215
    :cond_35
    return-void
.end method

.method setMainBaseDisplaySize(II)V
    .registers 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1188
    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayWidth:I

    .line 1189
    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayHeight:I

    .line 1190
    return-void
.end method

.method setOneHandOpWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicyExt;->setOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 694
    return-void
.end method

.method public setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "fillInIntent"    # Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicyExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 411
    return-void
.end method

.method public setRotationInfoForAudioManager()V
    .registers 6

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mAudioManager:Landroid/media/AudioManager;

    .line 591
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    .line 593
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 594
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 595
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_30

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 596
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    .line 597
    .local v2, "rotation":I
    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    if-eq v3, v2, :cond_53

    .line 598
    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mLastReportedRotationToAudioManager:I

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g_hw_display_rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "param":Ljava/lang/String;
    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$bMKlbqP6834N95yN-1R6V_V_NPk;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$bMKlbqP6834N95yN-1R6V_V_NPk;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 603
    .end local v1    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "rotation":I
    .end local v3    # "param":Ljava/lang/String;
    :cond_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 604
    return-void

    .line 603
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showForAllUsers(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 576
    const/16 v0, 0x96b

    if-eq p1, v0, :cond_6

    .line 580
    const/4 v0, 0x0

    return v0

    .line 578
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public startLockscreenFingerprintAuth()V
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->startLockscreenFingerprintAuth()V

    .line 417
    return-void
.end method

.method public switchBuiltInDisplays(ZZ)V
    .registers 12
    .param p1, "switched"    # Z
    .param p2, "isSlept"    # Z

    .line 1120
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_f

    .line 1121
    const-string v0, "WindowManagerServiceExt"

    const-string/jumbo v1, "switchBuiltInDisplays: mDisplayEnabled false"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void

    .line 1125
    :cond_f
    const-wide/16 v0, 0x20

    const-string/jumbo v2, "switchBuiltInDisplays"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1127
    const/4 v2, 0x0

    :try_start_18
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_b2

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1128
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManagerInternal;->switchBuiltInDisplays(Z)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1129
    const-string v4, "WindowManagerServiceExt"

    const-string/jumbo v5, "switchBuiltInDisplays: DisplayManager return false"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_ac

    .line 1182
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySwitching:Z

    .line 1183
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1130
    return-void

    .line 1132
    :cond_3c
    const/4 v4, 0x1

    :try_start_3d
    iput-boolean v4, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySwitching:Z

    .line 1136
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 1137
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1140
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 1141
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz p1, :cond_7f

    .line 1142
    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v7, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wm/WindowManagerServiceExt;->setMainBaseDisplaySize(II)V

    .line 1144
    iget-boolean v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mForcedDisplaySizeRequested:Z

    if-nez v6, :cond_91

    .line 1145
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v7, v5, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v6, v2, v7}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 1147
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v7, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/wm/WindowManagerServiceExt;->getSubBuiltInDisplaySize(Landroid/graphics/Point;ILandroid/view/DisplayInfo;)V

    .line 1149
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1150
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_91

    .line 1153
    :cond_7f
    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayWidth:I

    if-lez v6, :cond_8b

    .line 1154
    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayWidth:I

    iput v6, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 1155
    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMainBaseDisplayHeight:I

    iput v6, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 1157
    :cond_8b
    if-eqz p2, :cond_91

    .line 1158
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->setRotationAnimation(Lcom/android/server/wm/ScreenRotationAnimation;)V

    .line 1164
    :cond_91
    :goto_91
    iput-boolean p1, v5, Lcom/android/server/wm/DisplayContent;->mIsSubBuiltInDisplay:Z

    .line 1177
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 1178
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_9d

    .line 1179
    goto :goto_9e

    :cond_9d
    move v4, v2

    .line 1178
    :goto_9e
    invoke-virtual {v6, v4}, Landroid/os/PowerManager;->setDualScreenPolicy(I)V

    .line 1180
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_a2
    .catchall {:try_start_3d .. :try_end_a2} :catchall_ac

    :try_start_a2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_b2

    .line 1182
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySwitching:Z

    .line 1183
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1184
    nop

    .line 1185
    return-void

    .line 1180
    :catchall_ac
    move-exception v4

    :try_start_ad
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    :try_start_ae
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .end local p1    # "switched":Z
    .end local p2    # "isSlept":Z
    throw v4
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_b2

    .line 1182
    .restart local p0    # "this":Lcom/android/server/wm/WindowManagerServiceExt;
    .restart local p1    # "switched":Z
    .restart local p2    # "isSlept":Z
    :catchall_b2
    move-exception v3

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySwitching:Z

    .line 1183
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1184
    throw v3
.end method

.method systemReady()V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getAppIdOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.app.appsedge"

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getAppIdOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.launcher"

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getAppIdOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    .line 171
    const-string v1, "com.samsung.android.app.cocktailbarservice"

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getAppIdOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mIgnorePolicyAllowedAppIds:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.app.galaxyfinder"

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceExt;->getAppIdOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method unregisterOneHandOpWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V
    .registers 3
    .param p1, "watcher"    # Lcom/samsung/android/onehandop/IOneHandOpWatcher;

    .line 687
    if-eqz p1, :cond_7

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mOneHandOpMonitor:Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerServiceExt$OneHandOpMonitor;->unregisterWatcher(Lcom/samsung/android/onehandop/IOneHandOpWatcher;)V

    .line 690
    :cond_7
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 7
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .line 764
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 765
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceExt;->getCoverPolicyControllerLocked()Lcom/android/server/wm/CoverPolicyController;

    move-result-object v1

    .line 766
    .local v1, "coverController":Lcom/android/server/wm/CoverPolicyController;
    if-eqz v1, :cond_3d

    .line 767
    invoke-virtual {v1, p1}, Lcom/android/server/wm/CoverPolicyController;->setCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 769
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 770
    .local v2, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->hideImmersiveModeConfirmation()V

    .line 772
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 773
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 775
    :cond_27
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 776
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 777
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$SXu6PfV8H5peYjL-BDYwcZivV2Q;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerServiceExt$SXu6PfV8H5peYjL-BDYwcZivV2Q;-><init>(Lcom/android/server/wm/WindowManagerServiceExt;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 782
    .end local v1    # "coverController":Lcom/android/server/wm/CoverPolicyController;
    .end local v2    # "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 784
    return-void

    .line 782
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateDisplaySizeDensityChangedReason(IIIIIZI)V
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "userId"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "density"    # I
    .param p6, "saveToSettings"    # Z
    .param p7, "forcedHideNotch"    # I

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 349
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v2, ", Pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    const-string v2, ", processName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v2, ", displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    const/4 v2, -0x1

    if-eq p2, v2, :cond_3b

    .line 357
    const-string v3, ", UserId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    :cond_3b
    if-eq p3, v2, :cond_50

    if-eq p4, v2, :cond_50

    .line 361
    const-string v3, ", Size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_50
    if-eq p5, v2, :cond_5a

    .line 367
    const-string v3, ", Density="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    :cond_5a
    if-eqz p6, :cond_61

    .line 371
    const-string v3, ", bSave=true"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_61
    if-eq p7, v2, :cond_6b

    .line 374
    const-string v2, ", forcedHideNotch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    :cond_6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "reason":Ljava/lang/String;
    if-nez p1, :cond_76

    .line 379
    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    .line 381
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;)V

    .line 384
    :cond_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDisplaySizeDensityChangedReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManagerServiceExt"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method updateSafeModeReason(IIIII)V
    .registers 8
    .param p1, "menuState"    # I
    .param p2, "sState"    # I
    .param p3, "dpadState"    # I
    .param p4, "trackballState"    # I
    .param p5, "volumeDownState"    # I

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1453
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Safe Mode Reason ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    if-lez p1, :cond_11

    .line 1455
    const-string v1, " KEYCODE_MENU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    :cond_11
    if-lez p2, :cond_18

    .line 1458
    const-string v1, " KEYCODE_S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    :cond_18
    if-lez p3, :cond_1f

    .line 1461
    const-string v1, " KEYCODE_DPAD_CENTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    :cond_1f
    if-lez p4, :cond_26

    .line 1464
    const-string v1, " BTN_MOUSE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    :cond_26
    if-lez p5, :cond_2d

    .line 1467
    const-string v1, " KEYCODE_VOLUME_DOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;)V

    .line 1470
    return-void
.end method
