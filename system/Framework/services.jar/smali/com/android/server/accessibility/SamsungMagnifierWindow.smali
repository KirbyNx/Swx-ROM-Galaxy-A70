.class public final Lcom/android/server/accessibility/SamsungMagnifierWindow;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$State;,
        Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    }
.end annotation


# static fields
.field private static final AOD_SHOW_STATE:Ljava/lang/String; = "aod_show_state"

.field private static final CLOSE_TYPE:I = 0x3

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = true

.field private static final DEBUG_WINDOW_POLICY:Z = false

.field private static final DEFAULT_OF_MAGNIFIER_REGION:I = 0x0

.field private static final HANDLER_MESSAGE_CHANGE_CONFIG:I = 0x2

.field private static final HANDLER_MESSAGE_HIDE_CONTROL:I = 0x0

.field private static final HANDLER_MESSAGE_SHOW_CONTROL:I = 0x1

.field private static final HORIZONTAL_LOCK_TYPE:I = 0x2

.field private static final INSIDE_OF_MAGNIFIER_REGION:I = 0x1

.field private static final INTENT_ACTION_SIP_AVAILABLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final INTENT_ACTION_SIP_NAME:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final INTENT_ACTION_TEXT_SELECTION_CHANGED:Ljava/lang/String; = "TextSelectionChanged_For_MagnifierWindow"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SCALE:F = 8.0f

.field private static final MIN_SCALE:F = 1.0f

.field private static final MY_PID:I

.field private static final NAVIGATIONBAR_HEIGHT_GESTURE:I = 0xf

.field private static final NONE_TYPE:I = 0x0

.field private static final OUTSIDE_OF_MAGNIFIER_REGION:I = 0x2

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_PANNING_SCALING:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3

.field private static final WINDOW_ANIMATION_PERIOD_SIZE:I = 0x5

.field private static final WINDOW_SIZE_COUNT_MAX:I = 0x3

.field private static final WINDOW_SIZE_LARGE:I = 0x2

.field private static final WINDOW_SIZE_MEDIUM:I = 0x1

.field private static final WINDOW_SIZE_SMALL:I = 0x0

.field private static final WINDOW_SIZE_TYPE:I = 0x1

.field private static mCurrentFollowingStatus:Z

.field private static mCurrentTouchEventAction:Z

.field private static mDefaultDisplayName:Ljava/lang/String;

.field private static mDisplayInfo:Landroid/view/DisplayInfo;

.field private static mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private static mInputDeviceSource:I

.field private static mIsHidedByShortcutTriggered:Z

.field private static mIsNeedToConfigWindow:Z

.field private static mIsShowMagnifyController:Z

.field private static mIsWindowStateChanged:Z

.field private static mNavigationBarGestureWhileHidden:Z

.field private static mNavigationBarHeightButtonP:I

.field private static mNavigationBarHeightGesture:I

.field private static mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private static mWindowmanager:Landroid/view/WindowManager;

.field private static magnifier_editBox_right:I

.field private static magnifier_offset_X:F

.field private static magnifier_offset_Y:F

.field private static magnifier_text_cursor_X:I

.field private static magnifier_text_cursor_Y:I


# instance fields
.field private final ADD_BORDER_BOUNDAY_MOVE_SIZE:I

.field private final ADD_BORDER_BOUNDAY_SIZE:I

.field private final HORIZONTAL_FOCUS_LOCK_DEGREE:I

.field private final mAODStateContentObserver:Landroid/database/ContentObserver;

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mAodShowStateUri:Landroid/net/Uri;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

.field private final mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

.field private final mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

.field private mDisplay:Landroid/hardware/display/DisplayManager;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayState:I

.field private mDisplayType:I

.field private mIsShowSamsungMagnifierWindow:Z

.field private final mMagnificationSettingsObserver:Landroid/database/ContentObserver;

.field private final mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

.field private mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

.field private mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

.field private mShowMoveAnimationRunnable:Ljava/lang/Runnable;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTimeHandler:Landroid/os/Handler;

.field private final mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

.field private originalOffsetX:F

.field private originalOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 82
    const-class v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    .line 89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->MY_PID:I

    .line 135
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    .line 136
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    .line 153
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    .line 154
    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    .line 155
    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    .line 157
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    .line 158
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    .line 159
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    .line 160
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    .line 161
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I

    .line 162
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I

    .line 164
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 168
    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    .line 170
    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    .line 171
    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    .line 172
    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    .line 187
    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 195
    sput-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    .line 197
    const-string v0, ""

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 201
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 109
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->ADD_BORDER_BOUNDAY_SIZE:I

    .line 110
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->ADD_BORDER_BOUNDAY_MOVE_SIZE:I

    .line 111
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->HORIZONTAL_FOCUS_LOCK_DEGREE:I

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->originalOffsetX:F

    .line 133
    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->originalOffsetY:F

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    .line 149
    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAodShowStateUri:Landroid/net/Uri;

    .line 199
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I

    .line 963
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    .line 1550
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$4;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 1573
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$5;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAODStateContentObserver:Landroid/database/ContentObserver;

    .line 1594
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$6;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    .line 203
    const-string v2, "display"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    sput-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 204
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 205
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    sput-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    .line 206
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 208
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayState:I

    .line 209
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I

    .line 212
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    .line 213
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I

    .line 214
    const/16 v4, 0xf

    sput v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I

    .line 215
    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    sput-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 218
    new-instance v4, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-direct {v4, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 222
    :try_start_af
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v4, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V

    .line 223
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v4, v3}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b9} :catch_ba

    .line 226
    goto :goto_be

    .line 224
    :catch_ba
    move-exception v4

    .line 225
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 228
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_be
    sget v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_de

    sget v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_de

    .line 229
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sput v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    .line 230
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sput v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    .line 233
    :cond_de
    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    .line 235
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 236
    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 235
    invoke-virtual {v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 238
    const-string/jumbo v5, "hover_zoom_value"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 237
    invoke-virtual {v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 239
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 240
    const-string/jumbo v5, "magnifier_window_horizontal_focus_lock"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 239
    invoke-virtual {v4, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 243
    const-string/jumbo v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    .line 242
    invoke-virtual {v4, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAodShowStateUri:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAODStateContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v6, "TextSelectionChanged_For_MagnifierWindow"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v6, "ResponseAxT9Info"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    new-instance v6, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    .line 256
    new-instance v6, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-direct {v6, p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    .line 257
    new-instance v6, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    invoke-direct {v6, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    .line 258
    new-instance v6, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-direct {v6, p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    .line 260
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    .line 263
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    .line 264
    new-instance v2, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$1;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 327
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    if-eqz v6, :cond_188

    .line 328
    invoke-virtual {v6, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 332
    :cond_188
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    .line 334
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_19a

    move v1, v3

    :cond_19a
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    .line 338
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    return-object v0
.end method

.method static synthetic access$1200()I
    .registers 1

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 80
    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(FF)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(F)F
    .registers 1
    .param p0, "x0"    # F

    .line 80
    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    return p0
.end method

.method static synthetic access$1602(F)F
    .registers 1
    .param p0, "x0"    # F

    .line 80
    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->enableMagnifierWindowController(Z)V

    return-void
.end method

.method static synthetic access$1800()Landroid/hardware/display/IDisplayManager;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    return-object v0
.end method

.method static synthetic access$1900()Landroid/util/DisplayMetrics;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Landroid/view/WindowManager;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/view/DisplayInfo;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/view/DisplayInfo;)Landroid/view/DisplayInfo;
    .registers 1
    .param p0, "x0"    # Landroid/view/DisplayInfo;

    .line 80
    sput-object p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .line 80
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    return v0
.end method

.method static synthetic access$2300()Z
    .registers 1

    .line 80
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    return v0
.end method

.method static synthetic access$2302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarGestureWhileHidden:Z

    return p0
.end method

.method static synthetic access$2400()I
    .registers 1

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightGesture:I

    return v0
.end method

.method static synthetic access$2500()I
    .registers 1

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mNavigationBarHeightButtonP:I

    return v0
.end method

.method static synthetic access$2600()Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # I

    .line 80
    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayType:I

    return p1
.end method

.method static synthetic access$2800()I
    .registers 1

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    return v0
.end method

.method static synthetic access$2802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 80
    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    return p0
.end method

.method static synthetic access$2900()I
    .registers 1

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    return v0
.end method

.method static synthetic access$2902(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 80
    sput p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 80
    sput-object p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100()I
    .registers 1

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    return v0
.end method

.method static synthetic access$3172(I)I
    .registers 2
    .param p0, "x0"    # I

    .line 80
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/SamsungMagnifierWindow;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setFollowingMagnifierWindow(FF)V

    return-void
.end method

.method static synthetic access$3302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    return-void
.end method

.method static synthetic access$3802(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 80
    sput-boolean p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    return p0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 80
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    return-object v0
.end method

.method static synthetic access$4101(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 80
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/view/MotionEvent;

    .line 80
    invoke-static {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 80
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p1, "x1"    # Z

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged(Z)V

    return-void
.end method

.method private configChanged(Z)V
    .registers 6
    .param p1, "force"    # Z

    .line 751
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 752
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 754
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 768
    :cond_1d
    return-void
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 431
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 432
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_35

    .line 437
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getControlButtonType()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 439
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    .line 442
    :cond_2c
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v0, :cond_3c

    .line 443
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V

    goto :goto_3c

    .line 433
    :cond_35
    :goto_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleMotionEventOnMagnifierWindow(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 434
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V

    .line 435
    return-void

    .line 448
    :cond_3c
    :goto_3c
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 449
    return-void
.end method

.method private enableMagnifierWindowController(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 956
    :try_start_0
    sput-boolean p1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    .line 957
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->enableMagnifierWindowController(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 960
    goto :goto_c

    .line 958
    :catch_8
    move-exception v0

    .line 959
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 961
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "stateHandler"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 356
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->access$900(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 357
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->access$1000(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 362
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    if-eq p1, v0, :cond_1e

    .line 363
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 365
    :cond_1e
    return-void
.end method

.method private handleFollowingMagnifierWindow(ZZ)V
    .registers 9
    .param p1, "prevStatus"    # Z
    .param p2, "curStatus"    # Z

    .line 773
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5f

    if-nez p2, :cond_5f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 774
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isChangedFollowDisplayHeight()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 775
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 776
    .local v0, "screenTop":F
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 777
    .local v1, "screenBottom":F
    add-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 778
    .local v2, "heightSpec":F
    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleFollowingMagnifierWindow: offSetY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v5

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", NewOffSetY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v3, v4, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    .line 780
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 783
    .end local v0    # "screenTop":F
    .end local v1    # "screenBottom":F
    .end local v2    # "heightSpec":F
    :cond_5f
    return-void
.end method

.method private handleMotionEventOnMagnifierWindow(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string/jumbo v1, "onMotionEvent: isOnMagnifierWindowWithoutBorder. action is "

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_14a

    const-string/jumbo v7, "onMotionEvent: isOnMagnifierWindowWithController. action is "

    if-eq v0, v6, :cond_7c

    if-eq v0, v3, :cond_4c

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1e

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1e

    goto/16 :goto_255

    .line 552
    :cond_1e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 553
    return-void

    .line 554
    :cond_27
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 555
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_255

    .line 490
    :cond_4c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 491
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V

    .line 492
    return-void

    .line 493
    :cond_58
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 494
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 496
    return-void

    .line 501
    :cond_7c
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v0, :cond_116

    .line 502
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getControlButtonType()I

    move-result v0

    if-eqz v0, :cond_103

    const/4 v1, -0x2

    if-eq v0, v6, :cond_dc

    if-eq v0, v3, :cond_a4

    if-eq v0, v2, :cond_90

    goto :goto_107

    .line 533
    :cond_90
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 534
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: ControlButtonType is 3"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->stopMagnifier()V

    goto :goto_107

    .line 522
    :cond_a4
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 523
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onMotionEvent: ControlButtonType is 2"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getHorizontalFocusLock()I

    move-result v0

    sub-int/2addr v6, v0

    .line 525
    .local v6, "horizontalFocusLock":I
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    .line 526
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    .line 527
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "magnifier_window_horizontal_focus_lock"

    invoke-static {v0, v2, v6, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 529
    .end local v6    # "horizontalFocusLock":I
    goto :goto_107

    .line 510
    :cond_dc
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 511
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onMotionEvent: ControlButtonType is 1"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSize()I

    move-result v0

    add-int/2addr v0, v6

    .line 513
    .local v0, "nextSize":I
    if-lt v0, v2, :cond_f6

    .line 514
    const/4 v0, 0x0

    .line 516
    :cond_f6
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hover_zoom_magnifier_size"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 518
    .end local v0    # "nextSize":I
    goto :goto_107

    .line 506
    :cond_103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 507
    nop

    .line 540
    :cond_107
    :goto_107
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getControlButtonType()I

    move-result v0

    if-eqz v0, :cond_255

    .line 541
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto/16 :goto_255

    .line 542
    :cond_116
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 543
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v5, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    goto/16 :goto_255

    .line 544
    :cond_125
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 545
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto/16 :goto_255

    .line 454
    :cond_14a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v5, v4, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 455
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v0, :cond_1f1

    .line 456
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 457
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: isOnCloseBtn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto/16 :goto_1f0

    .line 459
    :cond_16a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_179

    .line 460
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto/16 :goto_1f0

    .line 461
    :cond_179
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 462
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setControlButtonType(I)V

    goto :goto_1f0

    .line 463
    :cond_187
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperLeftSideWithoutController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 464
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperRightSideWithoutController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 465
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLowerSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLeftSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1d4

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 466
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnRightSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    goto :goto_1d4

    .line 471
    :cond_1b0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 472
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1f0

    .line 467
    :cond_1d4
    :goto_1d4
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: For moving when controller is ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 469
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    if-eqz v0, :cond_1f0

    .line 470
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    .line 475
    :cond_1f0
    :goto_1f0
    return-void

    .line 477
    :cond_1f1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnUpperSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_239

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLowerSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_239

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 478
    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnLeftSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_239

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnRightSide(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_212

    goto :goto_239

    .line 483
    :cond_212
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 484
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMotionEvent: isOnMagnifierWindow. action is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_255

    .line 479
    :cond_239
    :goto_239
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMotionEvent: For moving when controller is OFF"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 481
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    if-eqz v0, :cond_255

    .line 482
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    .line 563
    :cond_255
    :goto_255
    return-void
.end method

.method private handleTouchEventAction(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "region"    # I

    .line 878
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, "messageShow":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 881
    .local v2, "messageHide":Landroid/os/Message;
    if-eqz p1, :cond_30

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v4

    if-nez v4, :cond_30

    .line 882
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_26

    sget-boolean v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    if-nez v4, :cond_26

    .line 885
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    .line 887
    :cond_26
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 888
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 891
    :cond_30
    const-wide/16 v4, 0xbb8

    if-eqz p2, :cond_ea

    if-eq p2, v1, :cond_64

    const/4 v1, 0x2

    if-eq p2, v1, :cond_52

    .line 949
    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTouchEventAction: Unknown region "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    .line 941
    :cond_52
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    if-eqz v1, :cond_5d

    .line 942
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_fe

    .line 944
    :cond_5d
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 946
    goto/16 :goto_fe

    .line 902
    :cond_64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v1, :cond_ac

    .line 903
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_95

    .line 904
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    .line 905
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v1, :cond_fe

    .line 906
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnCloseBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_fe

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_fe

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 907
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_fe

    .line 908
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_fe

    .line 911
    :cond_95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v1, :cond_fe

    .line 912
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    if-eqz v1, :cond_fe

    .line 914
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 916
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 917
    sput-boolean v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    goto :goto_fe

    .line 920
    :cond_ac
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v1, :cond_fe

    .line 921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_de

    .line 922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_c0

    goto :goto_de

    .line 927
    :cond_c0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eq v6, v1, :cond_cd

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_fe

    .line 929
    :cond_cd
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    if-eqz v1, :cond_fe

    .line 931
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 933
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 934
    sput-boolean v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    goto :goto_fe

    .line 923
    :cond_de
    :goto_de
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentTouchEventAction:Z

    .line 924
    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z

    if-eqz v1, :cond_fe

    .line 925
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_fe

    .line 893
    :cond_ea
    if-nez p1, :cond_fe

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    if-eqz v1, :cond_fe

    sget-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    if-nez v1, :cond_fe

    .line 895
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 952
    :cond_fe
    :goto_fe
    return-void
.end method

.method private hideMagnifier()V
    .registers 4

    .line 670
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideMagnifier: offsetX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", offsetY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    .line 671
    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v2

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 673
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    .line 675
    :cond_37
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    .line 676
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    .line 678
    :try_start_4b
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 679
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    .line 680
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    .line 681
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowMagnifyController:Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_58

    .line 684
    goto :goto_5c

    .line 682
    :catch_58
    move-exception v0

    .line 683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 685
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5c
    return-void
.end method

.method private isNeedToConfigWindow(FF)Z
    .registers 9
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 798
    const/4 v0, 0x0

    .line 800
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMaxWindowSizeWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    .line 801
    .local v1, "marginX":F
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMaxWindowSizeHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    .line 802
    .local v2, "marginY":F
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v3

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    .line 803
    .local v3, "prev_offsetX":F
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    .line 805
    .local v4, "prev_offsetY":F
    sub-float v5, p1, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v1

    if-gtz v5, :cond_39

    sub-float v5, p2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_3a

    .line 806
    :cond_39
    const/4 v0, 0x1

    .line 809
    :cond_3a
    sget-boolean v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    if-nez v5, :cond_43

    .line 810
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setCurrentFollowingStatus(Z)V

    .line 811
    const/4 v0, 0x1

    .line 814
    :cond_43
    sget v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_editBox_right:I

    int-to-float v5, v5

    cmpg-float v5, v5, p1

    if-gtz v5, :cond_4b

    .line 815
    const/4 v0, 0x0

    .line 818
    .end local v1    # "marginX":F
    .end local v2    # "marginY":F
    .end local v3    # "prev_offsetX":F
    .end local v4    # "prev_offsetY":F
    :cond_4b
    return v0
.end method

.method private moveWindow(FF)V
    .registers 12
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .line 625
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 626
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v3, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 629
    :cond_13
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedX()F

    move-result v0

    sub-float v0, p1, v0

    .line 630
    .local v0, "dx":F
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMovingStartedY()F

    move-result v2

    sub-float v2, p2, v2

    .line 632
    .local v2, "dy":F
    sget-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 633
    .local v3, "heigh":I
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 634
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getHorizontalFocusLock()I

    move-result v5

    .line 636
    .local v5, "horizontalFocusLock":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_48

    .line 637
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->selectDirectionForMove(FF)I

    move-result v7

    .line 639
    .local v7, "direction":I
    if-ne v7, v6, :cond_44

    .line 640
    const/4 v2, 0x0

    goto :goto_48

    .line 641
    :cond_44
    const/4 v8, 0x2

    if-ne v7, v8, :cond_48

    .line 642
    const/4 v0, 0x0

    .line 645
    .end local v7    # "direction":I
    :cond_48
    :goto_48
    add-int/lit8 v7, v3, -0x1e

    int-to-float v7, v7

    cmpl-float v7, p2, v7

    if-lez v7, :cond_55

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_55

    .line 646
    const/high16 v2, 0x41200000    # 10.0f

    .line 648
    :cond_55
    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v8, p2, v7

    if-gez v8, :cond_61

    cmpg-float v8, v2, v1

    if-gtz v8, :cond_61

    .line 649
    const/high16 v2, -0x3ee00000    # -10.0f

    .line 651
    :cond_61
    add-int/lit8 v8, v4, -0x1e

    int-to-float v8, v8

    cmpl-float v8, p1, v8

    if-lez v8, :cond_6e

    cmpl-float v8, v0, v1

    if-ltz v8, :cond_6e

    .line 652
    const/high16 v0, 0x41200000    # 10.0f

    .line 654
    :cond_6e
    cmpg-float v7, p1, v7

    if-gez v7, :cond_78

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_78

    .line 655
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 661
    :cond_78
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1, v6, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 662
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v6

    iget v6, v6, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v7

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v7, v2

    invoke-virtual {v1, v6, v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    .line 663
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 664
    return-void
.end method

.method private moveWindow(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(FF)V

    .line 668
    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 1864
    if-eqz p0, :cond_5

    .line 1865
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 1867
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private selectDirectionForMove(FF)I
    .registers 10
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "direction":I
    div-float v1, p2, p1

    .line 612
    .local v1, "result":F
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    .line 614
    .local v2, "base":D
    float-to-double v4, v1

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_14

    .line 615
    const/4 v0, 0x1

    goto :goto_1a

    .line 616
    :cond_14
    float-to-double v4, v1

    cmpl-double v4, v4, v2

    if-lez v4, :cond_1a

    .line 617
    const/4 v0, 0x2

    .line 619
    :cond_1a
    :goto_1a
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectDirectionForMove - direction : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v0
.end method

.method private sendComputedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 31
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 572
    .local v2, "original_refer_x":F
    iget-object v3, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    .line 574
    .local v3, "original_refer_y":F
    iget-object v4, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    .line 575
    .local v4, "window_refer_x":F
    iget-object v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowBoundOnScreen()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    .line 577
    .local v5, "window_refer_y":F
    iget-object v6, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getBorderSize()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    .line 578
    .local v6, "touchArea_out_of_border":I
    int-to-float v7, v6

    add-float/2addr v4, v7

    .line 579
    int-to-float v7, v6

    add-float/2addr v5, v7

    .line 581
    iget-object v7, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v7

    .line 582
    .local v7, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    new-array v8, v8, [Landroid/view/MotionEvent$PointerCoords;

    .line 583
    .local v8, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    new-array v15, v9, [Landroid/view/MotionEvent$PointerProperties;

    .line 584
    .local v15, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v9, v10, :cond_7e

    .line 585
    new-instance v10, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v10, v15, v9

    .line 586
    aget-object v10, v15, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 587
    new-instance v10, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v10}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v10, v8, v9

    .line 588
    aget-object v10, v8, v9

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 590
    aget-object v10, v8, v9

    aget-object v11, v8, v9

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v11, v4

    div-float/2addr v11, v7

    add-float/2addr v11, v2

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 591
    aget-object v10, v8, v9

    aget-object v11, v8, v9

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    add-float/2addr v11, v3

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 584
    add-int/lit8 v9, v9, 0x1

    goto :goto_47

    .line 594
    .end local v9    # "i":I
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    invoke-static {v9}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "sec_touchscreen2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v14, v9

    .line 595
    .local v14, "mDisplayId":I
    sget-object v9, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displayId of Injecting event : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 598
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v19

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v24

    .line 597
    move/from16 v25, v14

    .end local v14    # "mDisplayId":I
    .local v25, "mDisplayId":I
    move/from16 v14, v16

    move-object/from16 v26, v15

    .end local v15    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .local v26, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    move-object/from16 v16, v8

    invoke-static/range {v9 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v9

    .line 602
    .local v9, "mEvent":Landroid/view/MotionEvent;
    const/high16 v10, 0x40000000    # 2.0f

    or-int v10, p3, v10

    .line 603
    .end local p3    # "policyFlags":I
    .local v10, "policyFlags":I
    move-object/from16 v11, p2

    invoke-super {v0, v9, v11, v10}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 605
    sget-object v12, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sendComputedMotionEvent - mEvent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void
.end method

.method private setCurrentFollowingStatus(Z)V
    .registers 3
    .param p1, "state"    # Z

    .line 788
    :try_start_0
    sget-boolean v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleFollowingMagnifierWindow(ZZ)V

    .line 789
    sput-boolean p1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentFollowingStatus:Z

    .line 790
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setCurrentFollowingStatus(Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 793
    goto :goto_11

    .line 791
    :catch_d
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 795
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method private setFollowingMagnifierWindow(FF)V
    .registers 7
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .line 823
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 824
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    .line 825
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 826
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    .line 829
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isNeedToConfigWindow(FF)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsNeedToConfigWindow:Z

    .line 830
    if-nez v1, :cond_24

    .line 831
    new-instance v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;FFLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mShowMoveAnimationRunnable:Ljava/lang/Runnable;

    .line 860
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    .line 862
    :cond_24
    sput p1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    .line 863
    sput p2, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    .line 864
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    .line 867
    .end local v0    # "handler":Landroid/os/Handler;
    :goto_2c
    return-void
.end method

.method private setMagnificationSettings(Z)V
    .registers 18
    .param p1, "force"    # Z

    .line 692
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "magnifier_window_horizontal_focus_lock"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 694
    .local v2, "horizontalFocusLock":I
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "hover_zoom_magnifier_size"

    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 696
    .local v0, "size":I
    iget-object v5, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hover_zoom_value"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v4

    add-float/2addr v4, v7

    .line 698
    .local v4, "scale":F
    sget-object v5, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mWindowmanager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    sget-object v6, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 700
    const/4 v5, 0x3

    if-lt v0, v5, :cond_3f

    .line 701
    const/4 v0, 0x2

    move v5, v0

    goto :goto_40

    .line 700
    :cond_3f
    move v5, v0

    .line 703
    .end local v0    # "size":I
    .local v5, "size":I
    :goto_40
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMagnificationSettings: size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", horizontalFocusLock "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v4}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setScale(F)Z

    move-result v6

    .line 707
    .local v6, "scaleChanged":Z
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setWindowSize(I)Z

    move-result v7

    .line 708
    .local v7, "sizeChanged":Z
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setHorizontalFocusLock(I)Z

    move-result v8

    .line 709
    .local v8, "horizontalFocusLockChanged":Z
    if-nez v6, :cond_81

    if-nez v7, :cond_81

    if-nez v8, :cond_81

    if-eqz p1, :cond_140

    .line 710
    :cond_81
    sget v9, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_X:F

    .line 711
    .local v9, "offSetX":F
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_offset_Y:F

    .line 714
    .local v0, "offSetY":F
    iget-object v10, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "mobile_keyboard"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_97

    move v10, v11

    goto :goto_98

    :cond_97
    move v10, v3

    .line 715
    .local v10, "isMobileKeyboardOn":Z
    :goto_98
    if-eqz v10, :cond_cf

    .line 716
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 717
    .local v12, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v13, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "window"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .line 718
    .local v13, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 719
    iget v14, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 720
    .local v14, "heightPixels_without_MobileKeyboard":I
    iget-object v15, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    add-float/2addr v15, v0

    int-to-float v3, v14

    cmpl-float v3, v15, v3

    if-lez v3, :cond_cf

    .line 721
    iget-object v3, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v14, v3

    int-to-float v0, v3

    move v3, v0

    goto :goto_d0

    .line 724
    .end local v12    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v13    # "windowmanager":Landroid/view/WindowManager;
    .end local v14    # "heightPixels_without_MobileKeyboard":I
    :cond_cf
    move v3, v0

    .end local v0    # "offSetY":F
    .local v3, "offSetY":F
    :goto_d0
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setMagnificationSettings: offSetX "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", offSetY "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    float-to-double v12, v9

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v0, v12, v14

    if-eqz v0, :cond_10b

    float-to-double v12, v3

    cmpl-double v0, v12, v14

    if-eqz v0, :cond_10b

    .line 726
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput v9, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 727
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 729
    :cond_10b
    iget-object v0, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    .line 731
    :try_start_110
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v12, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v12}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v12

    iget-object v13, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v13}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v13

    iget-object v14, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v14}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v14

    invoke-interface {v0, v12, v13, v14}, Landroid/hardware/display/IDisplayManager;->setMagnificationSettings(IIF)V

    .line 732
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v12, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    invoke-virtual {v12}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v12

    invoke-interface {v0, v12}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 733
    iput-boolean v11, v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    .line 734
    sput-boolean v11, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsWindowStateChanged:Z

    .line 735
    const/4 v0, 0x0

    const/4 v11, 0x0

    invoke-direct {v1, v0, v11}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_110 .. :try_end_13b} :catch_13c

    .line 738
    goto :goto_140

    .line 736
    :catch_13c
    move-exception v0

    .line 737
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 740
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "offSetY":F
    .end local v9    # "offSetX":F
    .end local v10    # "isMobileKeyboardOn":Z
    :cond_140
    :goto_140
    return-void
.end method

.method private setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 3
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .line 744
    :try_start_0
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 747
    goto :goto_a

    .line 745
    :catch_6
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 748
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a
    return-void
.end method

.method private stopMagnifier()V
    .registers 5

    .line 688
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "stopMagnifier()"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 690
    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    .registers 7
    .param p1, "state"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 1640
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 1641
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    .line 1642
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1643
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 1646
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 1648
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    if-ne p1, v0, :cond_5d

    .line 1649
    const/4 v0, 0x0

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_X:I

    .line 1650
    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->magnifier_text_cursor_Y:I

    .line 1653
    :cond_5d
    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 419
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clear()V

    .line 420
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;->clear()V

    .line 421
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clear()V

    .line 422
    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->clearEvents(I)V

    .line 423
    return-void
.end method

.method public clearEvents(I)V
    .registers 2
    .param p1, "inputSource"    # I

    .line 369
    invoke-super {p0, p1}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->clearEvents(I)V

    .line 370
    return-void
.end method

.method public isShowWindow()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsShowSamsungMagnifierWindow:Z

    return v0
.end method

.method public notifyShortcutTriggered()V
    .registers 7

    .line 391
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 392
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    .line 393
    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    goto :goto_37

    .line 396
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 397
    .local v0, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 398
    .local v2, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "defaultDisplayName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 400
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;Z)Z

    .line 401
    sput-object v3, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDefaultDisplayName:Ljava/lang/String;

    .line 404
    :cond_31
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->setMagnificationSettings(Z)V

    .line 405
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mIsHidedByShortcutTriggered:Z

    .line 407
    .end local v0    # "windowmanager":Landroid/view/WindowManager;
    .end local v2    # "defaultDisplay":Landroid/view/Display;
    .end local v3    # "defaultDisplayName":Ljava/lang/String;
    :goto_37
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplay:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_9

    .line 375
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 378
    :cond_9
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->hideMagnifier()V

    .line 379
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mMagnificationSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mAODStateContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 384
    :try_start_29
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/IDisplayManager;->enableOverlayMagnifier(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    .line 387
    goto :goto_34

    .line 385
    :catch_30
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 342
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 343
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 344
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 346
    :cond_11
    return-void

    .line 349
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 350
    return-void
.end method

.method public setMagnifierWindowInputSource(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 411
    and-int/lit16 v0, p1, 0x101

    if-eqz v0, :cond_a

    .line 412
    sget v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    or-int/lit16 v0, v0, 0x101

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mInputDeviceSource:I

    .line 415
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 1877
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 1878
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$State;->nameOf(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1872
    return-object v0
.end method
