.class public Lcom/android/server/wm/DisplayPolicy;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;,
        Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
    }
.end annotation


# static fields
.field private static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field static final ANIMATION_NONE:I = -0x1

.field static final ANIMATION_STYLEABLE:I = 0x0

.field public static final APP_REQUESTED_REFRESH_RATE_FIXED_TYPE:I = 0x1

.field public static final APP_REQUESTED_REFRESH_RATE_NONE_TYPE:I = 0x0

.field public static final APP_REQUESTED_REFRESH_RATE_SEAMLESS_TYPE:I = 0x2

.field private static final DEBUG:Z = false

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x5

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x3

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x4

.field private static final MSG_FORCE_HIDE_KEYGUARD_TIMEOUT:I = 0x6

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x2

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final NAV_BAR_FORCE_TRANSPARENT:I = 0x2

.field private static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field public static final REQUESTED_MODE_REASON_ANIMATING_HIGH_REFRESH_RATE:I = 0x4

.field public static final REQUESTED_MODE_REASON_APP_REQUEST:I = 0x3

.field public static final REQUESTED_MODE_REASON_BLOCK_LIST:I = 0x5

.field public static final REQUESTED_MODE_REASON_FIXED_REFRESH_RATE:I = 0x2

.field public static final REQUESTED_MODE_REASON_LOW_REFRESH_RATE:I = 0x1

.field public static final REQUESTED_MODE_REASON_LOW_REFRESH_RATE_LIST:I = 0x6

.field public static final REQUESTED_MODE_REASON_NONE:I = 0x0

.field private static final SHOW_TYPES_FOR_PANIC:[I

.field private static final SHOW_TYPES_FOR_SWIPE:[I

.field private static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private static final sTmpLastParentFrame:Landroid/graphics/Rect;

.field private static final sTmpNavFrame:Landroid/graphics/Rect;

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAllowLockscreenWhenOn:Z

.field private volatile mAwake:Z

.field private mBottomGestureAdditionalInset:I

.field private final mCarDockEnablesAccelerometer:Z

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field private mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserResources:Landroid/content/res/Resources;

.field private mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

.field private mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

.field private mDefaultStatusBar:Lcom/android/server/wm/WindowState;

.field private final mDeskDockEnablesAccelerometer:Z

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private volatile mDockMode:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDreamingLockscreen:Z

.field public final mExt:Lcom/android/server/wm/DisplayPolicyExt;

.field private mFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mForceClearedSystemUiFlags:I

.field public mForceHideKeyguard:Z

.field private mForceShowSystemBars:Z

.field private mForceShowSystemBarsFromExternal:Z

.field private mForceStatusBar:Z

.field private mForcingShowNavBar:Z

.field private mForcingShowNavBarLayer:I

.field private mForwardedInsets:Landroid/graphics/Insets;

.field private volatile mGearVrPersistentVrMode:Z

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mHasNavigationBar:Z

.field private volatile mHasStatusBar:Z

.field private volatile mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field private final mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field private mIsFreeformWindowOverlappingWithNavBar:Z

.field private volatile mKeyguardDrawComplete:Z

.field private mLastAppearance:I

.field private mLastBehavior:I

.field private mLastDockedAppearance:I

.field private final mLastDockedStackBounds:Landroid/graphics/Rect;

.field private mLastFocusIsFullscreen:Z

.field private mLastFocusIsImmersive:Z

.field private mLastFocusedWindow:Lcom/android/server/wm/WindowState;

.field private mLastFullscreenAppearance:I

.field private mLastImmersiveMode:Z

.field private mLastNavAllowedHidden:Z

.field private mLastNavTranslucent:Z

.field private mLastNavVisible:Z

.field private final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastNotificationShadeForcesShowingNavigation:Z

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLeftGestureInset:I

.field private volatile mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mNavBarOpacityMode:I

.field private final mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

.field private mNavButtonForcedVisible:Z

.field private mNavigationBar:Lcom/android/server/wm/WindowState;

.field private volatile mNavigationBarAlwaysShowOnSideGesture:Z

.field private volatile mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/wm/BarController;

.field private mNavigationBarFrameHeightForRotationDefault:[I

.field private mNavigationBarFrameWidthForRotationDefault:[I

.field private mNavigationBarHeightForRotationDefault:[I

.field private mNavigationBarHeightForRotationInCarMode:[I

.field private volatile mNavigationBarLetsThroughTaps:Z

.field mNavigationBarPosition:I

.field private mNavigationBarWidthForRotationDefault:[I

.field private mNavigationBarWidthForRotationInCarMode:[I

.field private final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mNotificationShade:Lcom/android/server/wm/WindowState;

.field private mPendingPanicGestureUptime:J

.field private volatile mPersistentVrModeEnabled:Z

.field private mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field private mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

.field private mResettingSystemUiFlags:I

.field private mRightGestureInset:I

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScreenOnEarly:Z

.field private volatile mScreenOnFully:Z

.field private volatile mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mServiceAcquireLock:Ljava/lang/Object;

.field mShouldRotateLandscapeBootingUp:Z

.field private mShowingDream:Z

.field private mStatusBar:Lcom/android/server/wm/WindowState;

.field private final mStatusBarController:Lcom/android/server/wm/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

.field private mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field mTopFreeFormFrameThickness:I

.field private mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

.field private mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

.field private mTopIsFullscreen:Z

.field private final mUiContext:Landroid/content/Context;

.field private volatile mWindowManagerDrawComplete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 295
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    .line 296
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    .line 456
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 459
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    return-void

    nop

    :array_2e
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 20
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    .line 337
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    .line 351
    const/4 v4, -0x1

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 352
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 377
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 378
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 379
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 380
    const/4 v5, 0x4

    new-array v6, v5, [I

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    .line 381
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 383
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    .line 384
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    .line 385
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    .line 387
    iput v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 390
    new-array v6, v5, [I

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    .line 391
    new-array v6, v5, [I

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    .line 392
    new-array v6, v5, [I

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationInCarMode:[I

    .line 393
    new-array v6, v5, [I

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationInCarMode:[I

    .line 396
    new-array v6, v5, [I

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    .line 398
    new-array v5, v5, [I

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameWidthForRotationDefault:[I

    .line 409
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$1;

    invoke-direct {v5, v0}, Lcom/android/server/wm/DisplayPolicy$1;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    .line 437
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 439
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    .line 444
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 445
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 446
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    .line 447
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    .line 450
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 451
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    .line 467
    iput v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 482
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 495
    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 508
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mShouldRotateLandscapeBootingUp:Z

    .line 1854
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$3;

    invoke-direct {v5, v0}, Lcom/android/server/wm/DisplayPolicy$3;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 4828
    new-instance v5, Lcom/android/server/wm/DisplayPolicy$4;

    invoke-direct {v5, v0}, Lcom/android/server/wm/DisplayPolicy$4;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 5252
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mForceHideKeyguard:Z

    .line 575
    iput-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 576
    iget-boolean v5, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_99

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    goto :goto_a3

    .line 577
    :cond_99
    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v5

    :goto_a3
    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 578
    iget-boolean v5, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_ae

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    goto :goto_ba

    .line 580
    :cond_ae
    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/ActivityThread;->createSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object v5

    :goto_ba
    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    .line 581
    iput-object v2, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    .line 585
    new-instance v5, Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v1, v0}, Lcom/android/server/wm/DisplayPolicyExt;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayPolicy;)V

    iput-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 588
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 589
    .local v5, "displayId":I
    new-instance v6, Lcom/android/server/wm/StatusBarController;

    invoke-direct {v6, v5}, Lcom/android/server/wm/StatusBarController;-><init>(I)V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 590
    new-instance v6, Lcom/android/server/wm/BarController;

    const/high16 v10, 0x8000000

    const/high16 v11, 0x20000000

    const/high16 v12, -0x80000000

    const/4 v13, 0x2

    const/16 v14, 0x7e3

    const/high16 v15, 0x8000000

    const v16, 0x8000

    const-string v8, "NavigationBar"

    move-object v7, v6

    move v9, v5

    invoke-direct/range {v7 .. v16}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIIII)V

    iput-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 600
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 601
    .local v6, "r":Landroid/content/res/Resources;
    const v7, 0x1110042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    .line 602
    const v7, 0x1110052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    .line 603
    const v7, 0x1110090

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 607
    const v7, 0x10501e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000    # 2.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v0, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    .line 611
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    iput-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 613
    iget-boolean v7, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v8, 0x1

    if-nez v7, :cond_137

    .line 614
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 615
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 616
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 619
    :cond_137
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 620
    .local v7, "looper":Landroid/os/Looper;
    new-instance v9, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-direct {v9, v0, v7}, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V

    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 621
    new-instance v10, Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/wm/DisplayPolicy$2;

    invoke-direct {v12, v0}, Lcom/android/server/wm/DisplayPolicy$2;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v10, v11, v9, v12}, Lcom/android/server/wm/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    .line 748
    invoke-virtual {v2, v10}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 749
    iget-object v9, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 750
    invoke-virtual {v10}, Lcom/android/server/wm/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v10

    .line 749
    invoke-virtual {v9, v10}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 753
    new-instance v9, Lcom/android/server/wm/ImmersiveModeConfirmation;

    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowManagerService;->mVrModeEnabled:Z

    invoke-direct {v9, v10, v7, v11, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/android/server/wm/DisplayPolicy;)V

    iput-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 762
    iget-boolean v9, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_17b

    .line 763
    new-instance v3, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    goto :goto_17c

    :cond_17b
    nop

    :goto_17c
    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    .line 765
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v3, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_196

    .line 766
    iput-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 767
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11100d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    goto :goto_1a0

    .line 782
    :cond_196
    iput-boolean v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    .line 783
    iget-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 786
    :goto_1a0
    new-instance v3, Lcom/android/server/wm/RefreshRatePolicy;

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 787
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mHighRefreshRateBlacklist:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {v3, v4, v8, v9}, Lcom/android/server/wm/RefreshRatePolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    .line 790
    new-instance v3, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;

    invoke-direct {v9, v0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$E7j9SKAujlVEAp0eeRWet1AUkHs;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-direct {v3, v4, v8, v9}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 798
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;

    invoke-direct {v8, v3}, Lcom/android/server/wm/-$$Lambda$o8Xf30aea0t-A93AFKY5pBW0IDI;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v4, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DisplayPolicy;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 245
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1372(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 245
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/DisplayPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # I

    .line 245
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayPolicy;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # J

    .line 245
    iput-wide p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/wm/WindowState;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;
    .param p1, "x1"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 245
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DisplayPolicy;

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    return-object v0
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2501
    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_5

    .line 2502
    return-void

    .line 2506
    :cond_5
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_f

    .line 2507
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_14

    .line 2509
    :cond_f
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2511
    :goto_14
    return-void
.end method

.method private canHideNavigationBar()Z
    .registers 2

    .line 4817
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 2514
    nop

    .line 2515
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 2516
    .local v0, "notFocusable":Z
    :goto_10
    nop

    .line 2517
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 2518
    .local v3, "altFocusableIm":Z
    :goto_1f
    xor-int v4, v0, v3

    .line 2519
    .local v4, "notFocusableForIm":Z
    if-nez v4, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
    .registers 7
    .param p0, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p1, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p2, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p3, "navBarPosition"    # I

    .line 4364
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    .line 4365
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x4

    if-ne p3, v1, :cond_17

    .line 4367
    invoke-static {p2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 4370
    .local v1, "imeWindowCanNavColorWindow":Z
    :goto_18
    if-eqz p0, :cond_22

    if-ne p1, p0, :cond_22

    .line 4375
    if-eqz v1, :cond_20

    move-object v0, p2

    goto :goto_21

    :cond_20
    move-object v0, p0

    :goto_21
    return-object v0

    .line 4378
    :cond_22
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_3a

    .line 4383
    :cond_2b
    if-nez v1, :cond_2e

    .line 4385
    return-object p1

    .line 4390
    :cond_2e
    invoke-static {p1, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4392
    return-object p2

    .line 4395
    :cond_39
    return-object p1

    .line 4380
    :cond_3a
    :goto_3a
    if-eqz v1, :cond_3d

    move-object v0, p2

    :cond_3d
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .registers 3

    .line 4782
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    or-int/lit8 v1, v0, 0x7

    .line 4783
    .local v1, "newVal":I
    if-eq v1, v0, :cond_d

    .line 4784
    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 4785
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 4787
    :cond_d
    return-void
.end method

.method private configureNavBarOpacity(IZZZZZLcom/android/server/wm/WindowState;)I
    .registers 10
    .param p1, "visibility"    # I
    .param p2, "dockedStackVisible"    # Z
    .param p3, "freeformStackVisible"    # Z
    .param p4, "isDockedDividerResizing"    # Z
    .param p5, "fullscreenDrawsBackground"    # Z
    .param p6, "dockedDrawsNavigationBarBackground"    # Z
    .param p7, "fullscreenTransWin"    # Lcom/android/server/wm/WindowState;

    .line 4699
    if-eqz p7, :cond_12

    iget-object v0, p7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_12

    .line 4701
    iget-object v0, p7, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatController:Lcom/android/server/wm/BoundsCompatController;

    .line 4702
    invoke-virtual {v0, p1}, Lcom/android/server/wm/BoundsCompatController;->configureNavBarOpacityIfNeeded(I)I

    move-result v0

    .line 4703
    .local v0, "visibilityForBoundsCompat":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 4704
    return v0

    .line 4708
    .end local v0    # "visibilityForBoundsCompat":I
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isGameToolsOverlayVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4709
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_60

    .line 4712
    :cond_1f
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 4714
    if-eqz p5, :cond_2d

    if-eqz p6, :cond_2d

    .line 4715
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_60

    .line 4716
    :cond_2d
    if-eqz p2, :cond_60

    .line 4717
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_60

    .line 4719
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-eqz v0, :cond_3d

    .line 4720
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_60

    .line 4721
    :cond_3d
    if-eqz p2, :cond_5a

    .line 4722
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_55

    .line 4723
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4724
    .local v0, "type":I
    const/16 v1, 0x8b2

    if-ne v0, v1, :cond_50

    .line 4725
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    goto :goto_54

    .line 4727
    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    .line 4729
    .end local v0    # "type":I
    :goto_54
    goto :goto_60

    .line 4730
    :cond_55
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_60

    .line 4732
    :cond_5a
    if-eqz p5, :cond_60

    .line 4733
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->setNavBarTransparentFlag(I)I

    move-result p1

    .line 4764
    :cond_60
    :goto_60
    return p1
.end method

.method private disablePointerLocation()V
    .registers 3

    .line 5066
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_5

    .line 5067
    return-void

    .line 5070
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5071
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5072
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 5073
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 5074
    return-void
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .registers 2
    .param p1, "inputConsumer"    # Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 4033
    if-eqz p1, :cond_5

    .line 4034
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dispose()V

    .line 4036
    :cond_5
    return-void
.end method

.method private drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z
    .registers 10
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .param p3, "controller"    # Lcom/android/server/wm/BarController;
    .param p4, "translucentFlag"    # I

    .line 4656
    invoke-virtual {p3, p2}, Lcom/android/server/wm/BarController;->isTransparentAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4657
    return v1

    .line 4659
    :cond_8
    const/4 v0, 0x1

    if-nez p2, :cond_c

    .line 4660
    return v0

    .line 4663
    :cond_c
    nop

    .line 4664
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    move v2, v0

    goto :goto_1b

    :cond_1a
    move v2, v1

    .line 4665
    .local v2, "drawsSystemBars":Z
    :goto_1b
    nop

    .line 4666
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_29

    move v3, v0

    goto :goto_2a

    :cond_29
    move v3, v1

    .line 4668
    .local v3, "forceDrawsSystemBars":Z
    :goto_2a
    if-nez v3, :cond_32

    if-eqz v2, :cond_33

    and-int v4, p1, p4

    if-nez v4, :cond_33

    :cond_32
    move v1, v0

    :cond_33
    return v1
.end method

.method private drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 4685
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/high16 v1, 0x8000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "vis"    # I
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 4681
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    const/high16 v1, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsBarBackground(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/BarController;I)Z

    move-result v0

    return v0
.end method

.method private enablePointerLocation()V
    .registers 5

    .line 5037
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_5

    .line 5038
    return-void

    .line 5041
    :cond_5
    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 5042
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 5043
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 5046
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5047
    const/16 v2, 0x118

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5050
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 5051
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5052
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 5053
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5054
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5057
    :cond_39
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointerLocation - display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 5059
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 5060
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5061
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5062
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 5063
    return-void
.end method

.method private static enforceSingleInsetsTypeCorrespondingToWindowType([I)V
    .registers 7
    .param p0, "insetsTypes"    # [I

    .line 1536
    const/4 v0, 0x0

    .line 1537
    .local v0, "count":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1f

    aget v3, p0, v2

    .line 1538
    .local v3, "insetsType":I
    const/4 v4, 0x1

    if-eqz v3, :cond_10

    if-eq v3, v4, :cond_10

    const/4 v5, 0x2

    if-eq v3, v5, :cond_10

    goto :goto_14

    .line 1542
    :cond_10
    add-int/lit8 v0, v0, 0x1

    if-gt v0, v4, :cond_17

    .line 1537
    .end local v3    # "insetsType":I
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1543
    .restart local v3    # "insetsType":I
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Multiple InsetsTypes corresponding to Window type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1548
    .end local v3    # "insetsType":I
    :cond_1f
    return-void
.end method

.method public static getAppRequestedRefreshRateType(I)I
    .registers 4
    .param p0, "refreshRateReason"    # I

    .line 5149
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_11

    const/4 v2, 0x3

    if-eq p0, v2, :cond_11

    const/4 v1, 0x4

    if-eq p0, v1, :cond_12

    const/4 v1, 0x6

    if-eq p0, v1, :cond_12

    .line 5161
    const/4 v0, 0x0

    return v0

    .line 5152
    :cond_11
    return v1

    .line 5156
    :cond_12
    return v0
.end method

.method private getDisplayId()I
    .registers 2

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method private static getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1842
    const/4 v0, 0x0

    .line 1843
    .local v0, "impliedFlags":I
    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1846
    .local v1, "forceWindowDrawsBarBackgrounds":Z
    :goto_14
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1d

    if-eqz v1, :cond_21

    .line 1848
    :cond_1d
    or-int/lit16 v0, v0, 0x200

    .line 1849
    or-int/lit16 v0, v0, 0x400

    .line 1851
    :cond_21
    return v0
.end method

.method private getNavigationBarFrameHeight(II)I
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3696
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarFrameWidth(II)I
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3705
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3635
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private static getTransientState(II)Landroid/util/Pair;
    .registers 14
    .param p0, "vis"    # I
    .param p1, "oldVis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation

    .line 4291
    new-instance v4, Landroid/util/IntArray;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 4292
    .local v4, "typesToShow":Landroid/util/IntArray;
    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5, v0}, Landroid/util/IntArray;-><init>(I)V

    .line 4293
    .local v5, "typesToAbort":Landroid/util/IntArray;
    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    .line 4295
    const/high16 v8, 0x8000000

    const/4 v9, 0x1

    move v6, p0

    move v7, p1

    move-object v10, v4

    move-object v11, v5

    invoke-static/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V

    .line 4297
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private hasStatusBarServicePermission(II)Z
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1017
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isImmersiveMode(I)Z
    .registers 4
    .param p1, "vis"    # I

    .line 4791
    const/16 v0, 0x1800

    .line 4792
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_16

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_16

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_16

    .line 4795
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 4792
    :goto_17
    return v1
.end method

.method private isImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 4799
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4800
    return v0

    .line 4802
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->behavior:I

    .line 4803
    .local v1, "behavior":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    .line 4804
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x2

    if-ne v1, v2, :cond_30

    .line 4808
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4809
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eq p1, v2, :cond_30

    .line 4810
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeDream()Z

    move-result v2

    if-nez v2, :cond_30

    move v0, v3

    goto :goto_31

    :cond_30
    nop

    .line 4803
    :goto_31
    return v0
.end method

.method private isKeyguardOccluded()Z
    .registers 3

    .line 4045
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicyExt;->isKeyguardOccluded(I)Z

    move-result v0

    return v0
.end method

.method private static isNavBarEmpty(I)Z
    .registers 4
    .param p0, "systemUiFlags"    # I

    .line 4821
    const/high16 v0, 0x1600000

    .line 4825
    .local v0, "disableNavigationBar":I
    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "targetWindow"    # Lcom/android/server/wm/WindowState;
    .param p1, "navBarWindow"    # Lcom/android/server/wm/WindowState;

    .line 5096
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_20

    .line 5097
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_20

    .line 5101
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 5098
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$canToastShowWhenLocked$1(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "callingPid"    # I
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 1135
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne p0, v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z
    .registers 27
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I
    .param p3, "navVisible"    # Z
    .param p4, "navTranslucent"    # Z
    .param p5, "navAllowedHidden"    # Z
    .param p6, "statusBarForcesShowingNavigation"    # Z
    .param p7, "simulatedContentFrame"    # Landroid/graphics/Rect;

    .line 2276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move-object/from16 v4, p7

    iget-object v5, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    if-nez v5, :cond_10

    .line 2277
    return v6

    .line 2280
    :cond_10
    sget-object v5, Lcom/android/server/wm/DisplayPolicy;->sTmpNavFrame:Landroid/graphics/Rect;

    .line 2281
    .local v5, "navigationFrame":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v7}, Lcom/android/server/wm/BarController;->isTransientShowing()Z

    move-result v14

    .line 2285
    .local v14, "transientNavBarShowing":Z
    iget v15, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2286
    .local v15, "rotation":I
    iget v13, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 2287
    .local v13, "displayHeight":I
    iget v12, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 2288
    .local v12, "displayWidth":I
    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2289
    .local v11, "dockFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, v12, v13, v15}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v10

    .line 2291
    .local v10, "navBarPosition":I
    sget-object v9, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 2292
    .local v9, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2293
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2295
    const/4 v7, 0x4

    if-ne v10, v7, :cond_9f

    .line 2297
    iget v7, v9, Landroid/graphics/Rect;->bottom:I

    .line 2298
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v17

    sub-int v7, v7, v17

    .line 2299
    .local v7, "topNavBar":I
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-eqz v8, :cond_41

    .line 2300
    move v8, v7

    goto :goto_49

    .line 2301
    :cond_41
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v18

    sub-int v8, v8, v18

    :goto_49
    nop

    .line 2302
    .local v8, "top":I
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v12, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2309
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2311
    if-eqz v14, :cond_62

    .line 2312
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_76

    .line 2313
    :cond_62
    const/4 v6, 0x1

    if-eqz p3, :cond_71

    .line 2314
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v6}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2315
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    iput v8, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_76

    .line 2318
    :cond_71
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2320
    :goto_76
    if-eqz p3, :cond_9d

    if-nez p4, :cond_9d

    if-nez p5, :cond_9d

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2321
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v4

    if-nez v4, :cond_9d

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2322
    invoke-virtual {v4}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v4

    if-nez v4, :cond_9d

    sget v4, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_99

    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 2326
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicyExt;->wasRecentlyTransparentNavigationBar()Z

    move-result v4

    if-nez v4, :cond_9d

    .line 2330
    :cond_99
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 2332
    .end local v7    # "topNavBar":I
    .end local v8    # "top":I
    :cond_9d
    goto/16 :goto_16a

    :cond_9f
    const/4 v4, 0x2

    if-ne v10, v4, :cond_104

    .line 2334
    iget v4, v9, Landroid/graphics/Rect;->right:I

    .line 2335
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v4, v7

    .line 2338
    .local v4, "left":I
    iget v7, v9, Landroid/graphics/Rect;->right:I

    .line 2339
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameWidth(II)I

    move-result v8

    sub-int/2addr v7, v8

    .line 2340
    .local v7, "leftNavBar":I
    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v7, v6, v8, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2345
    .end local v7    # "leftNavBar":I
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->right:I

    iput v4, v6, Landroid/graphics/Rect;->right:I

    .line 2346
    if-eqz v14, :cond_c8

    .line 2347
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_dc

    .line 2348
    :cond_c8
    const/4 v7, 0x1

    if-eqz p3, :cond_d7

    .line 2349
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2350
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    iput v4, v11, Landroid/graphics/Rect;->right:I

    goto :goto_dc

    .line 2353
    :cond_d7
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2355
    :goto_dc
    if-eqz p3, :cond_169

    if-nez p4, :cond_169

    if-nez p5, :cond_169

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2356
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_169

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2357
    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_169

    sget v6, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_ff

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 2361
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicyExt;->wasRecentlyTransparentNavigationBar()Z

    move-result v6

    if-nez v6, :cond_169

    .line 2365
    :cond_ff
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->right:I

    goto :goto_169

    .line 2367
    .end local v4    # "left":I
    :cond_104
    const/4 v4, 0x1

    if-ne v10, v4, :cond_169

    .line 2369
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 2370
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v4, v7

    .line 2373
    .local v4, "right":I
    iget v7, v9, Landroid/graphics/Rect;->left:I

    .line 2374
    invoke-direct {v0, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameWidth(II)I

    move-result v8

    add-int/2addr v7, v8

    .line 2375
    .local v7, "rightNavBar":I
    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v8, v6, v7, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2380
    .end local v7    # "rightNavBar":I
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v4, v7, Landroid/graphics/Rect;->left:I

    iput v4, v6, Landroid/graphics/Rect;->left:I

    .line 2381
    if-eqz v14, :cond_12d

    .line 2382
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    goto :goto_141

    .line 2383
    :cond_12d
    const/4 v7, 0x1

    if-eqz p3, :cond_13c

    .line 2384
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2385
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    iput v4, v11, Landroid/graphics/Rect;->left:I

    goto :goto_141

    .line 2388
    :cond_13c
    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/BarController;->setBarShowingLw(Z)Z

    .line 2390
    :goto_141
    if-eqz p3, :cond_16a

    if-nez p4, :cond_16a

    if-nez p5, :cond_16a

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 2391
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v6

    if-nez v6, :cond_16a

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    .line 2392
    invoke-virtual {v6}, Lcom/android/server/wm/BarController;->wasRecentlyTranslucent()Z

    move-result v6

    if-nez v6, :cond_16a

    sget v6, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_164

    iget-object v6, v0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 2396
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicyExt;->wasRecentlyTransparentNavigationBar()Z

    move-result v6

    if-nez v6, :cond_16a

    .line 2400
    :cond_164
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    goto :goto_16a

    .line 2367
    .end local v4    # "right":I
    :cond_169
    :goto_169
    nop

    .line 2406
    :cond_16a
    :goto_16a
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2407
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2408
    iget-object v4, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2410
    sget-object v4, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2411
    iget-object v4, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v4

    .line 2412
    .local v4, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v16, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    move-object v7, v4

    move-object v8, v5

    move-object/from16 v17, v9

    .end local v9    # "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    .local v17, "cutoutSafeUnrestricted":Landroid/graphics/Rect;
    move-object v9, v5

    move v2, v10

    .end local v10    # "navBarPosition":I
    .local v2, "navBarPosition":I
    move-object v10, v6

    move-object v6, v11

    .end local v11    # "dockFrame":Landroid/graphics/Rect;
    .local v6, "dockFrame":Landroid/graphics/Rect;
    move-object v11, v5

    move/from16 v18, v12

    .end local v12    # "displayWidth":I
    .local v18, "displayWidth":I
    move-object/from16 v12, v16

    move/from16 v16, v13

    .end local v13    # "displayHeight":I
    .local v16, "displayHeight":I
    move-object v13, v5

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2417
    iget-object v7, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 2418
    move-object/from16 v7, p7

    if-eqz v7, :cond_1aa

    .line 2419
    iget-object v8, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1b3

    .line 2421
    :cond_1aa
    iput v2, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    .line 2422
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v9, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2425
    :goto_1b3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_1ce

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mNavigationBar frame: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    :cond_1ce
    iget-object v8, v0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v8}, Lcom/android/server/wm/BarController;->checkHiddenLw()Z

    move-result v8

    return v8
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V
    .registers 22
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "simulatedFrames"    # Lcom/android/server/wm/WindowFrames;

    .line 2129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2130
    return-void

    .line 2133
    :cond_f
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2134
    iget v4, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 2135
    .local v4, "displayId":I
    iget-object v5, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2136
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget v6, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 2137
    .local v6, "displayHeight":I
    iget v7, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 2139
    .local v7, "displayWidth":I
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "i":I
    :goto_25
    if-ltz v9, :cond_14a

    .line 2140
    iget-object v0, v1, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 2141
    .local v10, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-ne v0, v4, :cond_143

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2143
    goto/16 :goto_143

    .line 2146
    :cond_3e
    if-eqz v3, :cond_42

    move v0, v8

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    move v11, v0

    .line 2147
    .local v11, "isSimulatedLayout":Z
    if-eqz v11, :cond_49

    .line 2148
    invoke-virtual {v10, v3}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2150
    :cond_49
    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v15

    .line 2151
    .local v15, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v13, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v14, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v12, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    sget-object v17, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, v2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object v12, v15

    move-object v1, v15

    .end local v15    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v1, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move-object v15, v0

    move-object/from16 v18, v8

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2157
    const/4 v8, 0x0

    :try_start_64
    invoke-virtual {v10, v2}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_13b

    .line 2159
    if-eqz v11, :cond_6c

    .line 2160
    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2163
    :cond_6c
    iget-object v0, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 2165
    .local v0, "frame":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    const-string v12, " displayHeight="

    const-string v13, " displayWidth="

    const-string/jumbo v14, "layoutScreenDecorWindows: Ignoring decor win="

    const-string v15, "WindowManager"

    if-gtz v8, :cond_c7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_c7

    .line 2167
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_8f

    .line 2169
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v12, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->left:I

    goto/16 :goto_143

    .line 2170
    :cond_8f
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_9f

    .line 2172
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    goto/16 :goto_143

    .line 2174
    :cond_9f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on left or top of display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 2178
    :cond_c7
    iget v8, v0, Landroid/graphics/Rect;->right:I

    if-lt v8, v7, :cond_114

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v6, :cond_114

    .line 2180
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gtz v8, :cond_de

    .line 2182
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    goto :goto_143

    .line 2183
    :cond_de
    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_ed

    .line 2185
    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_143

    .line 2187
    :cond_ed
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on right or bottom of display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 2193
    :cond_114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " not docked on one of the sides of the display. frame="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 2159
    .end local v0    # "frame":Landroid/graphics/Rect;
    :catchall_13b
    move-exception v0

    move-object v12, v0

    if-eqz v11, :cond_142

    .line 2160
    invoke-virtual {v10, v8}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 2162
    :cond_142
    throw v12

    .line 2139
    .end local v1    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v10    # "w":Lcom/android/server/wm/WindowState;
    .end local v11    # "isSimulatedLayout":Z
    :cond_143
    :goto_143
    add-int/lit8 v9, v9, -0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_25

    .line 2199
    .end local v9    # "i":I
    :cond_14a
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2200
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2201
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2202
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2203
    iget-object v0, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2204
    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z
    .registers 13
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "sysui"    # I
    .param p3, "simulatedContentFrame"    # Landroid/graphics/Rect;

    .line 2209
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2210
    return v1

    .line 2213
    :cond_6
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2214
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getLayoutingWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    .line 2215
    .local v0, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowFrames;->setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2221
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 2224
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v5, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2227
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2231
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2232
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2233
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2234
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2235
    if-eqz p3, :cond_6b

    .line 2236
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_72

    .line 2238
    :cond_6b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    sget-object v3, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    .line 2241
    :goto_72
    const/high16 v2, 0x4000000

    and-int/2addr v2, p2

    const/4 v3, 0x1

    if-nez v2, :cond_87

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2242
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsPolicy;->isTransient(I)Z

    move-result v2

    if-eqz v2, :cond_85

    goto :goto_87

    :cond_85
    move v2, v1

    goto :goto_88

    :cond_87
    :goto_87
    move v2, v3

    .line 2243
    .local v2, "statusBarTransient":Z
    :goto_88
    const v4, 0x40000008    # 2.000002f

    and-int/2addr v4, p2

    if-eqz v4, :cond_90

    move v4, v3

    goto :goto_91

    :cond_90
    move v4, v1

    .line 2247
    .local v4, "statusBarTranslucent":Z
    :goto_91
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_10c

    if-nez v2, :cond_10c

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eq v5, v6, :cond_10c

    .line 2251
    iget-object v5, p1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2252
    .local v5, "dockFrame":Landroid/graphics/Rect;
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2253
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2254
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2255
    iget-object v6, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2257
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Status bar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 2258
    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 2259
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x2

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    .line 2257
    const-string v1, "dock=%s content=%s cur=%s"

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    :cond_f2
    if-nez v4, :cond_10c

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v1

    if-nez v1, :cond_10c

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 2262
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_10c

    .line 2267
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2270
    .end local v5    # "dockFrame":Landroid/graphics/Rect;
    :cond_10c
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/wm/StatusBarController;->checkHiddenLw()Z

    move-result v1

    return v1
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;

    .line 3084
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3085
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3086
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3087
    return-void
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 3090
    iget v0, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 3091
    .local v0, "rotation":I
    iget v1, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v2, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3094
    .local v1, "navBarPosition":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3095
    .local v2, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 3096
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3097
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4d

    .line 3101
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v3

    .line 3102
    .local v3, "uimode":I
    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v4

    .line 3103
    .local v4, "navFrameHeight":I
    iget-object v5, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v6, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p2, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3106
    .end local v3    # "uimode":I
    .end local v4    # "navFrameHeight":I
    :cond_4d
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3107
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 3108
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 3109
    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3110
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_a8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input method: mDockBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mContentBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCurBottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :cond_a8
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 6
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 3116
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3117
    .local v0, "top":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 3118
    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 3119
    return-void
.end method

.method private postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V
    .registers 5
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2102
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_1a

    .line 2106
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2116
    :cond_1a
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2117
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2118
    return-void
.end method

.method public static refreshRateReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "refreshRateReason"    # I

    .line 5116
    packed-switch p0, :pswitch_data_1e

    .line 5132
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5130
    :pswitch_8
    const-string v0, "LOW_REFRESH_RATE_LIST"

    return-object v0

    .line 5128
    :pswitch_b
    const-string v0, "BLOCK_LIST"

    return-object v0

    .line 5126
    :pswitch_e
    const-string v0, "ANIMATING_HIGH_REFRESH_RATE"

    return-object v0

    .line 5124
    :pswitch_11
    const-string v0, "APP_REQUEST"

    return-object v0

    .line 5122
    :pswitch_14
    const-string v0, "FIXED_REFRESH_RATE"

    return-object v0

    .line 5120
    :pswitch_17
    const-string v0, "LOW_REFRESH_RATE"

    return-object v0

    .line 5118
    :pswitch_1a
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static refreshRateReasonTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "refreshRateReason"    # I

    .line 5137
    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    .line 5144
    const-string v0, "NONE_TYPE"

    return-object v0

    .line 5141
    :cond_9
    const-string v0, "SEAMLESS_TYPE"

    return-object v0

    .line 5139
    :cond_c
    const-string v0, "FIXED_TYPE"

    return-object v0
.end method

.method private requestTransientBars(Lcom/android/server/wm/WindowState;)V
    .registers 10
    .param p1, "swipeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3905
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const-string v1, "WindowManager"

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    .line 3907
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_127

    .line 3908
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_127

    .line 3913
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 3914
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->isLockTaskModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3915
    const-string v0, "Not showing transient bar, because lock task mode"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3916
    return-void

    .line 3919
    :cond_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DIRECT_WRITING:Z

    if-eqz v0, :cond_4d

    .line 3920
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->getDisableTransientBarsWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3921
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_4d

    .line 3922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not showing transient bar, because it is disabled by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    return-void

    .line 3928
    .end local v0    # "win":Lcom/android/server/wm/WindowState;
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_58

    .line 3930
    return-void

    .line 3934
    :cond_58
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_61

    .line 3935
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->showOkButton()V

    .line 3939
    :cond_61
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_f1

    .line 3943
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v0

    if-nez v0, :cond_72

    move v0, v3

    goto :goto_73

    :cond_72
    move v0, v2

    .line 3946
    .local v0, "doNotShowNav":Z
    :goto_73
    if-eqz v0, :cond_7a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_7a

    .line 3947
    return-void

    .line 3950
    :cond_7a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 3951
    .local v1, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v1, :cond_85

    .line 3952
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    goto :goto_86

    :cond_85
    const/4 v4, 0x0

    .line 3954
    .local v4, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_86
    if-eqz v4, :cond_f0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-ne v4, v5, :cond_8f

    goto :goto_f0

    .line 3959
    :cond_8f
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    .line 3962
    .local v5, "requestedState":Landroid/view/InsetsState;
    invoke-virtual {v5, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 3963
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v6

    goto :goto_9f

    :cond_9e
    move v6, v3

    .line 3964
    :goto_9f
    invoke-virtual {v5, v3}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 3965
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    goto :goto_ab

    :cond_aa
    move v7, v3

    :goto_ab
    or-int/2addr v6, v7

    .line 3974
    .local v6, "restorePositionTypes":I
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/wm/DisplayPolicyExt;->getIncorrectRestoreTypes(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)I

    move-result v7

    not-int v7, v7

    and-int/2addr v6, v7

    .line 3979
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v7, :cond_c7

    .line 3980
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    and-int/2addr v7, v6

    if-eqz v7, :cond_c7

    .line 3984
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-interface {v4, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 3985
    return-void

    .line 3988
    :cond_c7
    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->canShowTransient()Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 3990
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v7

    .line 3992
    if-eqz v0, :cond_da

    new-array v2, v2, [I

    aput v3, v2, v3

    goto :goto_dc

    .line 3994
    :cond_da
    sget-object v2, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_SWIPE:[I

    .line 3990
    :goto_dc
    invoke-virtual {v7, v2, v4}, Lcom/android/server/wm/InsetsPolicy;->showTransient([ILcom/android/server/wm/InsetsControlTarget;)V

    .line 3996
    invoke-interface {v4, v6, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    goto :goto_ef

    .line 3999
    :cond_e3
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v4, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 4001
    .end local v0    # "doNotShowNav":Z
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v4    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    .end local v5    # "requestedState":Landroid/view/InsetsState;
    .end local v6    # "restorePositionTypes":I
    :goto_ef
    goto :goto_126

    .line 3956
    .restart local v0    # "doNotShowNav":Z
    .restart local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .restart local v4    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_f0
    :goto_f0
    return-void

    .line 4002
    .end local v0    # "doNotShowNav":Z
    .end local v1    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v4    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_f1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0}, Lcom/android/server/wm/StatusBarController;->checkShowTransientBarLw()Z

    move-result v0

    .line 4003
    .local v0, "sb":Z
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1}, Lcom/android/server/wm/BarController;->checkShowTransientBarLw()Z

    move-result v1

    if-eqz v1, :cond_108

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4004
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v1

    if-nez v1, :cond_108

    goto :goto_109

    :cond_108
    move v2, v3

    :goto_109
    move v1, v2

    .line 4005
    .local v1, "nb":Z
    if-nez v0, :cond_10e

    if-eqz v1, :cond_126

    .line 4007
    :cond_10e
    if-nez v1, :cond_115

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_115

    .line 4009
    return-void

    .line 4020
    :cond_115
    if-eqz v0, :cond_11c

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/wm/StatusBarController;->showTransient()V

    .line 4021
    :cond_11c
    if-eqz v1, :cond_123

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->showTransient()V

    .line 4022
    :cond_123
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 4030
    .end local v0    # "sb":Z
    .end local v1    # "nb":Z
    :cond_126
    :goto_126
    return-void

    .line 3909
    :cond_127
    :goto_127
    const-string v0, "Not showing transient bar, because factory test mode"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    return-void
.end method

.method private restoreDefaultNavigationBar()V
    .registers 4

    .line 5218
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_2e

    .line 5219
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 5220
    .local v0, "prevNavigationBar":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 5221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultNotificationShade: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    .end local v0    # "prevNavigationBar":Lcom/android/server/wm/WindowState;
    :cond_2e
    return-void
.end method

.method private restoreDefaultNotificationShade()V
    .registers 4

    .line 5209
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultNotificationShade:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_2e

    .line 5210
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 5211
    .local v0, "prevNotificationShade":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 5212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultNotificationShade: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    .end local v0    # "prevNotificationShade":Lcom/android/server/wm/WindowState;
    :cond_2e
    return-void
.end method

.method private restoreDefaultStatusBar()V
    .registers 4

    .line 5201
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDefaultStatusBar:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_2e

    .line 5202
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 5203
    .local v0, "prevStatusBar":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 5204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultStatusBar: prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    .end local v0    # "prevStatusBar":Lcom/android/server/wm/WindowState;
    :cond_2e
    return-void
.end method

.method private setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .registers 16
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Lcom/android/server/wm/WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "cf"    # Landroid/graphics/Rect;
    .param p9, "vf"    # Landroid/graphics/Rect;
    .param p10, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2436
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2437
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    .local v0, "isWindowInputMethodTarget":Z
    goto :goto_17

    .line 2439
    .end local v0    # "isWindowInputMethodTarget":Z
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    .line 2441
    .restart local v0    # "isWindowInputMethodTarget":Z
    :goto_17
    if-nez v0, :cond_30

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2450
    iget-object v1, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2451
    iget-object v1, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2452
    iget-object v1, p10, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_9b

    .line 2457
    :cond_30
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 2458
    .local v1, "parentDisplayFrame":Landroid/graphics/Rect;
    iget-object v2, p4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2459
    .local v2, "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_55

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-nez v3, :cond_55

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_55

    .line 2463
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v1, v3

    .line 2464
    iget-object v3, p10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2472
    :cond_55
    const/16 v3, 0x10

    if-eq p3, v3, :cond_68

    .line 2477
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-eqz v3, :cond_63

    .line 2478
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_64

    :cond_63
    move-object v3, v1

    .line 2477
    :goto_64
    invoke-virtual {p8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8c

    .line 2485
    :cond_68
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2486
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 2487
    iget-object v3, p10, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v3}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_8c

    .line 2488
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v3

    if-nez v3, :cond_87

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 2489
    :cond_87
    iget-object v3, p10, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p8, v3}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 2492
    :cond_8c
    :goto_8c
    if-eqz p5, :cond_90

    move-object v3, v1

    goto :goto_91

    :cond_90
    move-object v3, p8

    :goto_91
    invoke-virtual {p7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2493
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2497
    .end local v1    # "parentDisplayFrame":Landroid/graphics/Rect;
    .end local v2    # "attachedAttrs":Landroid/view/WindowManager$LayoutParams;
    :goto_9b
    and-int/lit16 v1, p2, 0x100

    if-nez v1, :cond_a4

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_a5

    :cond_a4
    move-object v1, p7

    :goto_a5
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2498
    return-void
.end method

.method private setNavBarOpaqueFlag(I)I
    .registers 3
    .param p1, "visibility"    # I

    .line 4768
    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .registers 3
    .param p1, "visibility"    # I

    .line 4772
    const v0, -0x8001

    and-int/2addr p1, v0

    .line 4773
    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    return v0
.end method

.method private setNavBarTransparentFlag(I)I
    .registers 3
    .param p1, "visibility"    # I

    .line 4777
    const v0, 0x7fffffff

    and-int/2addr p1, v0

    .line 4778
    const v0, 0x8000

    or-int/2addr v0, p1

    return v0
.end method

.method private simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p3, "insetsState"    # Landroid/view/InsetsState;
    .param p4, "simulatedWindowFrames"    # Lcom/android/server/wm/WindowFrames;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/view/InsetsState;",
            "Lcom/android/server/wm/WindowFrames;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1936
    .local p5, "contentFrames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p6, "layout":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p4}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1937
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1939
    .local v0, "contentFrame":Landroid/graphics/Rect;
    const/4 v1, 0x0

    :try_start_9
    invoke-interface {p6, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_21

    .line 1941
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1942
    nop

    .line 1943
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p5, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1944
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/server/wm/InsetsStateController;->computeSimulatedState(Landroid/view/InsetsState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1946
    return-void

    .line 1941
    :catchall_21
    move-exception v2

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->setSimulatedWindowFrames(Lcom/android/server/wm/WindowFrames;)V

    .line 1942
    throw v2
.end method

.method private supportsPointerLocation()Z
    .registers 2

    .line 5024
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private updateCurrentUserResources()V
    .registers 15

    .line 3584
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 3585
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 3587
    .local v1, "uiContext":Landroid/content/Context;
    if-nez v0, :cond_29

    .line 3591
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eq v2, v3, :cond_22

    .line 3592
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/ResourcesManager;->setDisplayPolicyResources(Landroid/content/res/Resources;I)V

    .line 3594
    :cond_22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3595
    return-void

    .line 3600
    :cond_29
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 3601
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3600
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;II)Landroid/app/LoadedApk;

    move-result-object v2

    .line 3602
    .local v2, "pi":Landroid/app/LoadedApk;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 3603
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getResDir()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 3605
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getOverlayDirs()[Ljava/lang/String;

    move-result-object v7

    .line 3606
    invoke-virtual {v2}, Landroid/app/LoadedApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3607
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    const/4 v10, 0x0

    .line 3609
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3602
    invoke-virtual/range {v3 .. v13}, Landroid/app/ResourcesManager;->getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;Ljava/util/List;)Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    .line 3612
    return-void
.end method

.method private static updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V
    .registers 12
    .param p0, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0xb

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-eqz v0, :cond_21

    .line 2086
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2087
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2088
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2089
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 2090
    return-void

    .line 2092
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2093
    .local v0, "u":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 2094
    .local v5, "s":Landroid/graphics/Rect;
    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2095
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2096
    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    iget v3, v5, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2097
    invoke-virtual {p1, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 2098
    return-void
.end method

.method private updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 8
    .param p1, "appearance"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p5, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 4433
    if-eqz p5, :cond_47

    .line 4447
    if-eq p5, p4, :cond_1c

    if-eq p5, p2, :cond_1c

    .line 4450
    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 4457
    :cond_11
    if-ne p5, p3, :cond_27

    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4459
    and-int/lit8 p1, p1, -0x11

    goto :goto_27

    .line 4454
    :cond_1c
    :goto_1c
    and-int/lit8 p1, p1, -0x11

    .line 4455
    iget-object v0, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 4469
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p5}, Lcom/android/server/wm/BarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 4470
    and-int/lit8 p1, p1, -0x11

    .line 4473
    :cond_31
    nop

    .line 4474
    invoke-virtual {p5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xa2c

    if-ne v0, v1, :cond_47

    .line 4477
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_45

    .line 4478
    or-int/lit8 p1, p1, 0x10

    goto :goto_47

    .line 4480
    :cond_45
    and-int/lit8 p1, p1, -0x11

    .line 4485
    :cond_47
    :goto_47
    return p1
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 6
    .param p0, "vis"    # I
    .param p1, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p2, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;
    .param p3, "imeWindow"    # Lcom/android/server/wm/WindowState;
    .param p4, "navColorWin"    # Lcom/android/server/wm/WindowState;

    .line 4403
    if-eqz p4, :cond_26

    .line 4404
    if-eq p4, p3, :cond_1c

    if-eq p4, p1, :cond_1c

    .line 4407
    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 4414
    :cond_11
    if-ne p4, p2, :cond_26

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 4416
    and-int/lit8 p0, p0, -0x11

    goto :goto_26

    .line 4411
    :cond_1c
    :goto_1c
    and-int/lit8 p0, p0, -0x11

    .line 4412
    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    .line 4427
    :cond_26
    :goto_26
    return p0
.end method

.method private updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 11
    .param p1, "appearance"    # I
    .param p2, "opaque"    # Lcom/android/server/wm/WindowState;
    .param p3, "opaqueOrDimming"    # Lcom/android/server/wm/WindowState;

    .line 4313
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 4315
    .local v0, "onKeyguard":Z
    :goto_11
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 4316
    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayPolicyExt;->canBeStatusColorWinLw(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    .line 4318
    .local v3, "focusedCanBe":Z
    if-eqz v0, :cond_1e

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_24

    .line 4319
    :cond_1e
    if-eqz v3, :cond_23

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_24

    :cond_23
    move-object v4, p3

    :goto_24
    nop

    .line 4320
    .local v4, "statusColorWin":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_70

    .line 4322
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_BLUR_WALLPAPER_BACKGROUND_APPEARANCE:Z

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_40

    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4324
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isBlurWallpaperBackgroundTarget()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 4325
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/wm/DisplayPolicyExt;->getBlurWallpaperBackgroundAppearance(Lcom/android/server/wm/ActivityRecord;ZZ)I

    move-result v1

    return v1

    .line 4329
    :cond_40
    if-eq v4, p2, :cond_50

    if-nez v0, :cond_50

    if-eqz v3, :cond_47

    goto :goto_50

    .line 4338
    :cond_47
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 4340
    and-int/lit8 p1, p1, -0x9

    goto :goto_66

    .line 4333
    :cond_50
    :goto_50
    and-int/lit8 p1, p1, -0x9

    .line 4334
    const/4 v1, 0x0

    .line 4335
    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 4334
    invoke-static {v1}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v1

    .line 4336
    .local v1, "legacyAppearance":I
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    or-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x8

    or-int/2addr p1, v2

    .line 4338
    .end local v1    # "legacyAppearance":I
    :cond_65
    nop

    .line 4350
    :goto_66
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/StatusBarController;->isLightAppearanceAllowed(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_70

    .line 4351
    and-int/lit8 p1, p1, -0x9

    .line 4354
    :cond_70
    return p1
.end method

.method private updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;
    .registers 43
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    .line 4489
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4490
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v11

    .line 4491
    .local v11, "dockedStackVisible":Z
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4492
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v12

    .line 4493
    .local v12, "freeformStackVisible":Z
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v13

    .line 4497
    .local v13, "resizing":Z
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v11, :cond_33

    if-nez v13, :cond_33

    iget-boolean v0, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move v0, v15

    goto :goto_34

    :cond_33
    :goto_33
    move v0, v14

    :goto_34
    iput-boolean v0, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    .line 4506
    if-eqz v0, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v14

    goto :goto_41

    :cond_40
    move v0, v15

    :goto_41
    move/from16 v16, v0

    .line 4509
    .local v16, "forceOpaqueStatusBar":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_52

    .line 4510
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_54

    .line 4511
    :cond_52
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_54
    move-object v7, v0

    .line 4512
    .local v7, "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    move/from16 v1, p3

    invoke-virtual {v0, v7, v1, v10}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 4513
    .end local p3    # "vis":I
    .local v0, "vis":I
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v1, v7, v0, v10}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v0

    .line 4514
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v15, v15}, Lcom/android/server/wm/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v1

    .line 4516
    .local v1, "dockedVis":I
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v3, v8, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3, v1, v15}, Lcom/android/server/wm/BarController;->applyTranslucentFlagLw(Lcom/android/server/wm/WindowState;II)I

    move-result v6

    .line 4519
    .end local v1    # "dockedVis":I
    .local v6, "dockedVis":I
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4520
    invoke-direct {v8, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v17

    .line 4521
    .local v17, "fullscreenDrawsStatusBarBackground":Z
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4522
    invoke-direct {v8, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsStatusBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v18

    .line 4523
    .local v18, "dockedDrawsStatusBarBackground":Z
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4524
    invoke-direct {v8, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v19

    .line 4525
    .local v19, "fullscreenDrawsNavBarBackground":Z
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4526
    invoke-direct {v8, v6, v1}, Lcom/android/server/wm/DisplayPolicy;->drawsNavigationBarBackground(ILcom/android/server/wm/WindowState;)Z

    move-result v20

    .line 4529
    .local v20, "dockedDrawsNavigationBarBackground":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4530
    .local v5, "type":I
    const/16 v1, 0x7f8

    if-ne v5, v1, :cond_97

    move v1, v14

    goto :goto_98

    :cond_97
    move v1, v15

    :goto_98
    move/from16 v21, v1

    .line 4531
    .local v21, "notificationShadeHasFocus":Z
    if-eqz v21, :cond_b3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_b3

    .line 4532
    const/16 v1, 0x3806

    .line 4537
    .local v1, "flags":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 4538
    const/high16 v2, -0x40000000    # -2.0f

    or-int/2addr v1, v2

    .line 4540
    :cond_ad
    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, v10, v1

    or-int v0, v2, v3

    .line 4543
    .end local v1    # "flags":I
    :cond_b3
    if-eqz v17, :cond_c0

    if-eqz v18, :cond_c0

    .line 4544
    or-int/lit8 v0, v0, 0x8

    .line 4545
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    move/from16 v22, v0

    goto :goto_cb

    .line 4546
    :cond_c0
    if-eqz v16, :cond_c9

    .line 4547
    const v1, -0x40000009    # -1.9999989f

    and-int/2addr v0, v1

    move/from16 v22, v0

    goto :goto_cb

    .line 4546
    :cond_c9
    move/from16 v22, v0

    .line 4550
    .end local v0    # "vis":I
    .local v22, "vis":I
    :goto_cb
    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v11

    move v3, v12

    move v4, v13

    move/from16 v23, v5

    .end local v5    # "type":I
    .local v23, "type":I
    move/from16 v5, v19

    move/from16 v24, v6

    .end local v6    # "dockedVis":I
    .local v24, "dockedVis":I
    move/from16 v6, v20

    move-object/from16 v25, v7

    .end local v7    # "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    .local v25, "fullscreenTransWin":Lcom/android/server/wm/WindowState;
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayPolicy;->configureNavBarOpacity(IZZZZZLcom/android/server/wm/WindowState;)I

    move-result v0

    .line 4557
    .end local v22    # "vis":I
    .restart local v0    # "vis":I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_e6

    move v1, v14

    goto :goto_e7

    :cond_e6
    move v1, v15

    .line 4559
    .local v1, "immersiveSticky":Z
    :goto_e7
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_f6

    const/4 v3, 0x0

    .line 4561
    invoke-static {v2, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_f6

    move v2, v14

    goto :goto_f7

    :cond_f6
    move v2, v15

    :goto_f7
    move v6, v2

    .line 4563
    .local v6, "hideStatusBarWM":Z
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_fe

    move v2, v14

    goto :goto_ff

    :cond_fe
    move v2, v15

    :goto_ff
    move v7, v2

    .line 4565
    .local v7, "hideStatusBarSysui":Z
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_111

    .line 4569
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v2

    if-nez v2, :cond_10f

    goto :goto_111

    :cond_10f
    move v2, v15

    goto :goto_112

    :cond_111
    :goto_111
    move v2, v14

    :goto_112
    move/from16 v22, v2

    .line 4572
    .local v22, "hideNavBarSysui":Z
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_126

    if-nez v21, :cond_124

    iget-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v2, :cond_126

    if-nez v6, :cond_124

    if-eqz v7, :cond_126

    if-eqz v1, :cond_126

    :cond_124
    move v2, v14

    goto :goto_127

    :cond_126
    move v2, v15

    :goto_127
    move v5, v2

    .line 4576
    .local v5, "transientStatusBarAllowed":Z
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_136

    iget-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-nez v2, :cond_136

    if-eqz v22, :cond_136

    if-eqz v1, :cond_136

    move v2, v14

    goto :goto_137

    :cond_136
    move v2, v15

    :goto_137
    move v4, v2

    .line 4579
    .local v4, "transientNavBarAllowed":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 4580
    .local v26, "now":J
    iget-wide v2, v8, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    const-wide/16 v14, 0x0

    cmp-long v30, v2, v14

    if-eqz v30, :cond_14e

    sub-long v2, v26, v2

    const-wide/16 v30, 0x7530

    cmp-long v2, v2, v30

    if-gtz v2, :cond_14e

    const/4 v2, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v2, 0x0

    :goto_14f
    move/from16 v30, v2

    .line 4582
    .local v30, "pendingPanic":Z
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 4583
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v31

    .line 4584
    .local v31, "defaultDisplayPolicy":Lcom/android/server/wm/DisplayPolicy;
    if-eqz v30, :cond_188

    if-eqz v22, :cond_188

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eq v9, v2, :cond_188

    .line 4585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 4587
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    if-eqz v2, :cond_189

    .line 4590
    iput-wide v14, v8, Lcom/android/server/wm/DisplayPolicy;->mPendingPanicGestureUptime:J

    .line 4591
    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_189

    .line 4592
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    sget-object v14, Lcom/android/server/wm/DisplayPolicy;->SHOW_TYPES_FOR_PANIC:[I

    invoke-virtual {v2, v14}, Lcom/android/server/wm/InsetsPolicy;->showTransient([I)V

    goto :goto_189

    .line 4584
    :cond_188
    const/4 v3, 0x1

    .line 4596
    :cond_189
    :goto_189
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/wm/StatusBarController;->isTransientShowRequested()Z

    move-result v2

    if-eqz v2, :cond_197

    if-nez v5, :cond_197

    if-eqz v7, :cond_197

    move v2, v3

    goto :goto_198

    :cond_197
    const/4 v2, 0x0

    :goto_198
    move v14, v2

    .line 4598
    .local v14, "denyTransientStatus":Z
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v2}, Lcom/android/server/wm/BarController;->isTransientShowRequested()Z

    move-result v2

    if-eqz v2, :cond_1a5

    if-nez v4, :cond_1a5

    move v2, v3

    goto :goto_1a6

    :cond_1a5
    const/4 v2, 0x0

    :goto_1a6
    move v15, v2

    .line 4600
    .local v15, "denyTransientNav":Z
    if-nez v14, :cond_1af

    if-nez v15, :cond_1af

    iget-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_1b4

    .line 4602
    :cond_1af
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->clearClearableFlagsLw()V

    .line 4603
    and-int/lit8 v0, v0, -0x8

    .line 4606
    :cond_1b4
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_1ba

    move v2, v3

    goto :goto_1bb

    :cond_1ba
    const/4 v2, 0x0

    :goto_1bb
    move/from16 v28, v2

    .line 4607
    .local v28, "immersive":Z
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_1c3

    move v2, v3

    goto :goto_1c4

    :cond_1c3
    const/4 v2, 0x0

    :goto_1c4
    move/from16 v32, v2

    .line 4608
    .end local v1    # "immersiveSticky":Z
    .local v32, "immersiveSticky":Z
    if-nez v28, :cond_1cd

    if-eqz v32, :cond_1cb

    goto :goto_1cd

    :cond_1cb
    const/4 v1, 0x0

    goto :goto_1ce

    :cond_1cd
    :goto_1cd
    move v1, v3

    :goto_1ce
    move/from16 v33, v1

    .line 4610
    .local v33, "navAllowedHidden":Z
    if-eqz v22, :cond_1ea

    if-nez v33, :cond_1ea

    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4611
    invoke-interface {v1, v9}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v1

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v3, 0x7e6

    .line 4612
    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-le v1, v2, :cond_1ea

    .line 4615
    and-int/lit8 v0, v0, -0x3

    .line 4618
    :cond_1ea
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v1, v5, v10, v0}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v3

    .line 4621
    .end local v0    # "vis":I
    .local v3, "vis":I
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f8

    const/16 v29, 0x1

    goto :goto_1fa

    :cond_1f8
    const/16 v29, 0x0

    .line 4622
    .local v29, "newInsetsMode":Z
    :goto_1fa
    if-eqz v29, :cond_1ff

    iget-boolean v0, v8, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    goto :goto_203

    :cond_1ff
    invoke-direct {v8, v10}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v0

    :goto_203
    move v2, v0

    .line 4623
    .local v2, "oldImmersiveMode":Z
    if-eqz v29, :cond_20b

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_211

    :cond_20b
    and-int/lit16 v0, v3, -0x801

    invoke-direct {v8, v0}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(I)Z

    move-result v0

    :goto_211
    move v1, v0

    .line 4627
    .local v1, "newImmersiveMode":Z
    if-eq v2, v1, :cond_248

    .line 4628
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayPolicy;->mLastImmersiveMode:Z

    .line 4629
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v34

    .line 4630
    .local v34, "pkg":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    move/from16 p3, v1

    .end local v1    # "newImmersiveMode":Z
    .local p3, "newImmersiveMode":Z
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 4631
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isUserSetupComplete()Z

    move-result v35

    .line 4632
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v36

    .line 4630
    move/from16 v37, p3

    .end local p3    # "newImmersiveMode":Z
    .local v37, "newImmersiveMode":Z
    move-object/from16 v1, v34

    move/from16 v38, v2

    .end local v2    # "oldImmersiveMode":Z
    .local v38, "oldImmersiveMode":Z
    move/from16 v2, v37

    move/from16 p3, v6

    move v6, v3

    .end local v3    # "vis":I
    .local v6, "vis":I
    .local p3, "hideStatusBarWM":Z
    move/from16 v3, v35

    move/from16 v35, v7

    move v7, v4

    .end local v4    # "transientNavBarAllowed":Z
    .local v7, "transientNavBarAllowed":Z
    .local v35, "hideStatusBarSysui":Z
    move/from16 v4, v36

    move/from16 v36, v5

    .end local v5    # "transientStatusBarAllowed":Z
    .local v36, "transientStatusBarAllowed":Z
    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZLcom/android/server/wm/WindowState;)V

    goto :goto_254

    .line 4627
    .end local v34    # "pkg":Ljava/lang/String;
    .end local v35    # "hideStatusBarSysui":Z
    .end local v36    # "transientStatusBarAllowed":Z
    .end local v37    # "newImmersiveMode":Z
    .end local v38    # "oldImmersiveMode":Z
    .end local p3    # "hideStatusBarWM":Z
    .restart local v1    # "newImmersiveMode":Z
    .restart local v2    # "oldImmersiveMode":Z
    .restart local v3    # "vis":I
    .restart local v4    # "transientNavBarAllowed":Z
    .restart local v5    # "transientStatusBarAllowed":Z
    .local v6, "hideStatusBarWM":Z
    .local v7, "hideStatusBarSysui":Z
    :cond_248
    move/from16 v37, v1

    move/from16 v38, v2

    move/from16 v36, v5

    move/from16 p3, v6

    move/from16 v35, v7

    move v6, v3

    move v7, v4

    .line 4638
    .end local v1    # "newImmersiveMode":Z
    .end local v2    # "oldImmersiveMode":Z
    .end local v3    # "vis":I
    .end local v4    # "transientNavBarAllowed":Z
    .end local v5    # "transientStatusBarAllowed":Z
    .local v6, "vis":I
    .local v7, "transientNavBarAllowed":Z
    .restart local v35    # "hideStatusBarSysui":Z
    .restart local v36    # "transientStatusBarAllowed":Z
    .restart local v37    # "newImmersiveMode":Z
    .restart local v38    # "oldImmersiveMode":Z
    .restart local p3    # "hideStatusBarWM":Z
    :goto_254
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v7, v10, v6}, Lcom/android/server/wm/BarController;->updateVisibilityLw(ZII)I

    move-result v0

    .line 4640
    .end local v6    # "vis":I
    .restart local v0    # "vis":I
    iget-object v1, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget v4, v8, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->chooseNavigationColorWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4643
    .local v1, "navColorWin":Lcom/android/server/wm/WindowState;
    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v8, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v4, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4648
    iget-object v5, v8, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v6, v8, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6, v1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeNavColorWinLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_27d

    iget-object v5, v8, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_27e

    .line 4649
    :cond_27d
    move-object v5, v1

    .line 4643
    :goto_27e
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    .line 4651
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static updateTransientState(IIIILandroid/util/IntArray;Landroid/util/IntArray;)V
    .registers 10
    .param p0, "vis"    # I
    .param p1, "oldVis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "type"    # I
    .param p4, "typesToShow"    # Landroid/util/IntArray;
    .param p5, "typesToAbort"    # Landroid/util/IntArray;

    .line 4302
    and-int v0, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 4303
    .local v0, "wasTransient":Z
    :goto_9
    and-int v3, p0, p2

    if-eqz v3, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    .line 4304
    .local v1, "isTransient":Z
    :goto_f
    if-nez v0, :cond_17

    if-eqz v1, :cond_17

    .line 4305
    invoke-virtual {p4, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_1e

    .line 4306
    :cond_17
    if-eqz v0, :cond_1e

    if-nez v1, :cond_1e

    .line 4307
    invoke-virtual {p5, p3}, Landroid/util/IntArray;->add(I)V

    .line 4309
    :cond_1e
    :goto_1e
    return-void
.end method


# virtual methods
.method addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 9
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1300
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 1301
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1304
    :cond_c
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_ab

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_43

    const/16 v1, 0x7f8

    if-eq v0, v1, :cond_32

    packed-switch v0, :pswitch_data_d0

    .line 1505
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v0, :cond_c9

    .line 1506
    iget-object v0, p2, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    array-length v1, v0

    :goto_25
    if-ge v2, v1, :cond_c9

    aget v3, v0, v2

    .line 1507
    .local v3, "insetsType":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p1, v5}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1506
    .end local v3    # "insetsType":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1320
    :cond_32
    :pswitch_32
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1327
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_c9

    .line 1328
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_c9

    .line 1378
    :cond_43
    :pswitch_43
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1385
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1386
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarVisibilityListener:Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/wm/BarController$OnBarVisibilityChangedListener;Z)V

    .line 1388
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$J8sIwXJvltUaPM3jEGO948Bx9ig;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    new-instance v3, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$QDPgWUhyEOraWnf6a-u4mTBttdw;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1464
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$3MnyIKSHFLqhfUifWEQPNp_-J6A;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x5

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LkHee4mchNXMwNt7HLgsMzHofeE;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1487
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$IOyP8YVRG92tn9u1muYWZgBbgc0;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x8

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$LFEaXRr2IF3nhPJdP5h3swIhnus;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1502
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_c9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NAVIGATION BAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 1346
    :cond_ab
    :pswitch_ab
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1353
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1354
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;

    .local v0, "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$NcnTU5Z6X56cfSOOwc98WQ4IVv8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 1359
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1360
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1361
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    .line 1362
    nop

    .line 1513
    .end local v0    # "frameProvider":Lcom/android/internal/util/function/TriConsumer;, "Lcom/android/internal/util/function/TriConsumer<Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;>;"
    :cond_c9
    :goto_c9
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayPolicyExt;->addWindowLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    .line 1515
    return-void

    nop

    :pswitch_data_d0
    .packed-switch 0xa3d
        :pswitch_ab
        :pswitch_32
        :pswitch_43
    .end packed-switch
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .registers 4
    .param p1, "visibility"    # I

    .line 1725
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 1730
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    .line 1733
    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;II)V
    .registers 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 1032
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 1033
    .local v0, "isScreenDecor":Z
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1034
    if-nez v0, :cond_28

    .line 1036
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    .line 1038
    :cond_1b
    if-eqz v0, :cond_28

    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBarServicePermission(II)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1039
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_28
    :goto_28
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x2

    if-eq v2, v1, :cond_a2

    const/16 v1, 0x7dd

    if-eq v2, v1, :cond_9e

    const/16 v1, 0x7df

    if-eq v2, v1, :cond_8f

    const/16 v1, 0x7f8

    if-eq v2, v1, :cond_7b

    const/16 v1, 0x7d5

    if-eq v2, v1, :cond_43

    const/16 v1, 0x7d6

    if-eq v2, v1, :cond_8f

    goto/16 :goto_10a

    .line 1070
    :cond_43
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const-wide/16 v4, 0xdac

    if-ltz v1, :cond_53

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_55

    .line 1072
    :cond_53
    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1077
    :cond_55
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    long-to-int v2, v4

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    .line 1080
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1082
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayPolicy;->canToastShowWhenLocked(I)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1083
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1086
    :cond_73
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1087
    goto/16 :goto_10a

    .line 1060
    :cond_7b
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1061
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_10a

    .line 1046
    :cond_8f
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1048
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1049
    goto :goto_10a

    .line 1053
    :cond_9e
    const/4 v1, 0x3

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1054
    goto :goto_10a

    .line 1093
    :cond_a2
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_e7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_e7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1094
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_e7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e7

    .line 1096
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    if-nez v1, :cond_c4

    goto :goto_e7

    .line 1097
    :cond_c4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal attributes: Main activity window that isn\'t translucent trying to fit insets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attrs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1104
    :cond_e7
    :goto_e7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v1, :cond_10a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1105
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_10a

    .line 1107
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v3

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1108
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1109
    const-wide/16 v1, 0x96

    iput-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 1117
    :cond_10a
    :goto_10a
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_115

    .line 1118
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatController:Lcom/android/server/wm/BoundsCompatController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BoundsCompatController;->adjustWindowParamsIfNeededLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1121
    :cond_115
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/MultiStarController;->adjustWindowParamsIfNeededLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 1124
    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v1, Landroid/view/InsetsFlags;->appearance:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayPolicyExt;->updateForceLightNavigationBarAppearance(Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 1127
    return-void
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .registers 15
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Lcom/android/server/wm/WindowState;
    .param p4, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 3160
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    .line 3161
    .local v0, "affectsSystemUi":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Win "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": affectsSystemUi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayPolicyExt;->applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_36

    .line 3167
    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, p1, p4}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3169
    :goto_36
    invoke-static {p1, p2}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 3170
    .local v1, "fl":I
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    if-nez v3, :cond_4f

    if-eqz v0, :cond_4f

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v3, v5, :cond_4f

    .line 3175
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 3176
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 3179
    :cond_4f
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x0

    if-lt v3, v4, :cond_5c

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ge v3, v6, :cond_5c

    move v3, v4

    goto :goto_5d

    :cond_5c
    move v3, v5

    .line 3181
    .local v3, "appWindow":Z
    :goto_5d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    .line 3182
    .local v6, "windowingMode":I
    if-eq v6, v4, :cond_69

    const/4 v7, 0x4

    if-ne v6, v7, :cond_67

    goto :goto_69

    :cond_67
    move v7, v5

    goto :goto_6a

    :cond_69
    :goto_69
    move v7, v4

    .line 3185
    .local v7, "inFullScreenOrSplitScreenSecondaryWindowingMode":Z
    :goto_6a
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v8, :cond_dc

    if-eqz v0, :cond_dc

    .line 3187
    nop

    .line 3188
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_79

    move v5, v4

    .line 3190
    .local v5, "canAffectForceStatusBar":Z
    :cond_79
    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_81

    if-eqz v5, :cond_81

    .line 3191
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3193
    :cond_81
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDreamWindow()Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 3196
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    if-eqz v8, :cond_9d

    .line 3197
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_a0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v8

    if-eqz v8, :cond_a0

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_a0

    .line 3201
    :cond_9d
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 3202
    const/4 v3, 0x1

    .line 3209
    :cond_a0
    if-eqz v3, :cond_dc

    if-nez p3, :cond_dc

    .line 3210
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v8

    if-eqz v8, :cond_dc

    if-eqz v7, :cond_dc

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v8, :cond_b6

    .line 3212
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v8

    if-nez v8, :cond_dc

    .line 3214
    :cond_b6
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_ce

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fullscreen window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_ce
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3216
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_d6

    .line 3217
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3219
    :cond_d6
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_dc

    .line 3220
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 3227
    .end local v5    # "canAffectForceStatusBar":Z
    :cond_dc
    if-eqz v0, :cond_fc

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7ef

    if-ne v2, v5, :cond_fc

    .line 3228
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f0

    .line 3229
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3230
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_f0

    .line 3231
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3234
    :cond_f0
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_fc

    .line 3235
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3236
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_fc

    .line 3237
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3243
    :cond_fc
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_10c

    if-eqz v0, :cond_10c

    .line 3244
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_10c

    if-eqz v7, :cond_10c

    .line 3249
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3255
    :cond_10c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v5, 0x3

    if-nez v2, :cond_127

    if-eqz v0, :cond_127

    if-eqz v3, :cond_127

    if-nez p3, :cond_127

    .line 3256
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_127

    if-ne v6, v5, :cond_127

    .line 3257
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3258
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_127

    .line 3259
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3264
    :cond_127
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayPolicyExt;->applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 3268
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_135

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    goto :goto_136

    :cond_135
    const/4 v2, 0x0

    .line 3269
    .local v2, "navBarWin":Lcom/android/server/wm/WindowState;
    :goto_136
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    if-nez v8, :cond_148

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_148

    .line 3270
    invoke-static {p1, v2}, Lcom/android/server/wm/DisplayPolicy;->isOverlappingWithNavBar(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_148

    .line 3271
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 3276
    :cond_148
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-nez v4, :cond_158

    if-eqz v0, :cond_158

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDimming()Z

    move-result v4

    if-eqz v4, :cond_158

    if-ne v6, v5, :cond_158

    .line 3278
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3280
    :cond_158
    return-void
.end method

.method public areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 1741
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v0
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .registers 24
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "uiMode"    # I

    .line 1986
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1987
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1988
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v0

    .line 1987
    invoke-static {v9, v0}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 1989
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenWidth:I

    .line 1990
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    iget-object v1, v9, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener;->screenHeight:I

    .line 1994
    iget v10, v8, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 1995
    .local v10, "sysui":I
    iget v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 1996
    .local v11, "behavior":I
    iget-object v0, v8, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1997
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v12

    .line 1998
    .local v12, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_45

    .line 1999
    and-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_43

    move v0, v1

    goto :goto_50

    :cond_43
    move v0, v3

    goto :goto_50

    .line 2000
    :cond_45
    if-eqz v12, :cond_4c

    .line 2001
    invoke-virtual {v12}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    goto :goto_50

    .line 2002
    :cond_4c
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    :goto_50
    nop

    .line 2003
    .local v0, "navVisible":Z
    const v2, -0x7fff8000

    and-int/2addr v2, v10

    if-eqz v2, :cond_59

    move v2, v1

    goto :goto_5a

    :cond_59
    move v2, v3

    .line 2005
    .local v2, "navTranslucent":Z
    :goto_5a
    and-int/lit16 v4, v10, 0x800

    if-nez v4, :cond_65

    and-int/lit8 v4, v11, 0x1

    if-eqz v4, :cond_63

    goto :goto_65

    :cond_63
    move v4, v3

    goto :goto_66

    :cond_65
    :goto_65
    move v4, v1

    :goto_66
    move v13, v4

    .line 2007
    .local v13, "immersive":Z
    and-int/lit16 v4, v10, 0x1000

    if-nez v4, :cond_72

    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_70

    goto :goto_72

    :cond_70
    move v4, v3

    goto :goto_73

    :cond_72
    :goto_72
    move v4, v1

    :goto_73
    move v14, v4

    .line 2009
    .local v14, "immersiveSticky":Z
    if-nez v13, :cond_7b

    if-eqz v14, :cond_79

    goto :goto_7b

    :cond_79
    move v4, v3

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v4, v1

    :goto_7c
    move v15, v4

    .line 2010
    .local v15, "navAllowedHidden":Z
    if-nez v14, :cond_81

    move v4, v1

    goto :goto_82

    :cond_81
    move v4, v3

    :goto_82
    and-int v7, v2, v4

    .line 2011
    .end local v2    # "navTranslucent":Z
    .local v7, "navTranslucent":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_92

    move v2, v1

    goto :goto_93

    :cond_92
    move v2, v3

    :goto_93
    move/from16 v16, v2

    .line 2012
    .local v16, "isKeyguardShowing":Z
    if-nez v16, :cond_a8

    iget-object v2, v8, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_a8

    .line 2014
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x800000

    and-int/2addr v2, v4

    if-eqz v2, :cond_a8

    move v3, v1

    goto :goto_a9

    :cond_a8
    nop

    :goto_a9
    move v6, v3

    .line 2017
    .local v6, "notificationShadeForcesShowingNavigation":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateHideNavInputEventReceiver()V

    .line 2021
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    xor-int/2addr v1, v2

    or-int v5, v0, v1

    .line 2023
    .end local v0    # "navVisible":Z
    .local v5, "navVisible":Z
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v5

    move v4, v7

    move/from16 v18, v5

    .end local v5    # "navVisible":Z
    .local v18, "navVisible":Z
    move v5, v15

    move/from16 v19, v6

    .end local v6    # "notificationShadeForcesShowingNavigation":Z
    .local v19, "notificationShadeForcesShowingNavigation":Z
    move/from16 v20, v11

    move v11, v7

    .end local v7    # "navTranslucent":Z
    .local v11, "navTranslucent":Z
    .local v20, "behavior":I
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z

    move-result v0

    .line 2026
    .local v0, "updateSysUiVisibility":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_e9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDock rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_e9
    const/4 v1, 0x0

    invoke-direct {v8, v9, v10, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2029
    if-eqz v0, :cond_f4

    .line 2030
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 2032
    :cond_f4
    invoke-direct {v8, v9, v1}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 2033
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 2034
    move/from16 v1, v18

    .end local v18    # "navVisible":Z
    .local v1, "navVisible":Z
    iput-boolean v1, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    .line 2035
    iput-boolean v11, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    .line 2036
    iput-boolean v15, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    .line 2037
    move/from16 v2, v19

    .end local v19    # "notificationShadeForcesShowingNavigation":Z
    .local v2, "notificationShadeForcesShowingNavigation":Z
    iput-boolean v2, v8, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    .line 2038
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .line 3133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3134
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3135
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 3136
    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    .line 3137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    .line 3138
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    .line 3139
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    .line 3141
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    .line 3142
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    .line 3143
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mIsFreeformWindowOverlappingWithNavBar:Z

    .line 3146
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->beginPostLayoutPolicyLw()V

    .line 3149
    return-void
.end method

.method canToastShowWhenLocked(I)Z
    .registers 5
    .param p1, "callingPid"    # I

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$9vMdRW11iw1rRp_fzUkWacwvib0;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V
    .registers 5
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 3790
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3791
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 4892
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DisplayPolicy"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4894
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4895
    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4896
    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4897
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4898
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4899
    const-string v0, " mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4900
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4901
    const-string v0, " mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4902
    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4903
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4904
    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4905
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4906
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    if-nez v0, :cond_a5

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    if-nez v0, :cond_a5

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_d3

    .line 4908
    :cond_a5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4909
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4910
    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4911
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4912
    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4913
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4915
    :cond_d3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4916
    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4917
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_fd

    .line 4918
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4939
    :cond_fd
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_10f

    .line 4940
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExpandedPanel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4942
    :cond_10f
    const-string v0, " isKeyguardShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4943
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_254

    .line 4944
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4945
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavBarOpacityMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4946
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBarCanMove="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBarPosition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4948
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4951
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBarHeightForRotationDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4952
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4953
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1b2

    .line 4954
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentUserResources"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4955
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " .mUserId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4956
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    iget v0, v0, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4957
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " .getAssets().getApkPaths()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4958
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkPaths()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4959
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4967
    const-string v0, " .getDimensionPixelSize(R.dimen.navigation_bar_height)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4968
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    const v2, 0x10501f0

    .line 4969
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4968
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4973
    :cond_1b2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_254

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_254

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_254

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_254

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_254

    .line 4975
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSystemUiContext() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", fromSystem = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentUserResources = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4977
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getSystemUiContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4979
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/ResourcesManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4984
    :cond_254
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_266

    .line 4985
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4987
    :cond_266
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_278

    .line 4988
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4989
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4991
    :cond_278
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_28a

    .line 4992
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4993
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4995
    :cond_28a
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v0, :cond_2aa

    .line 4996
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4997
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4998
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5000
    :cond_2aa
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5001
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5002
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceShowSystemBarsFromExternal="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5003
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 5004
    const-string v0, " mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5005
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5006
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5010
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5011
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/DisplayPolicyExt;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5013
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_REFRESH_RATE_POLICY:Z

    if-eqz v0, :cond_304

    .line 5014
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/RefreshRatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5015
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/RefreshRatePolicy;->dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5019
    :cond_304
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5021
    return-void
.end method

.method public finishKeyguardDrawn()Z
    .registers 4

    .line 962
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 963
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_d

    goto :goto_14

    .line 967
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 968
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 969
    monitor-exit v0

    .line 970
    return v1

    .line 964
    :cond_14
    :goto_14
    monitor-exit v0

    return v2

    .line 969
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public finishPostLayoutPolicyLw()I
    .registers 11

    .line 3295
    const/4 v0, 0x0

    .line 3296
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 3302
    .local v1, "topIsFullscreen":Z
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    if-nez v2, :cond_10

    .line 3303
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDreamingLockscreen:Z

    .line 3306
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_fb

    .line 3307
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_3a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " top="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    :cond_3a
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4a

    move v2, v5

    goto :goto_4b

    :cond_4a
    move v2, v4

    .line 3311
    .local v2, "forceShowStatusBar":Z
    :goto_4b
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_5c

    .line 3313
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_5c

    move v6, v5

    goto :goto_5d

    :cond_5c
    move v6, v4

    .line 3316
    .local v6, "notificationShadeForcesShowingNavigation":Z
    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v7

    .line 3317
    .local v7, "topAppHidesStatusBar":Z
    iget-boolean v8, p0, Lcom/android/server/wm/DisplayPolicy;->mForceStatusBar:Z

    if-nez v8, :cond_c3

    if-eqz v2, :cond_68

    goto :goto_c3

    .line 3331
    :cond_68
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_f6

    .line 3332
    move v1, v7

    .line 3337
    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v8}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 3338
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 3339
    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_f6

    .line 3341
    :cond_81
    if-eqz v1, :cond_ae

    iget-object v8, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    const/4 v9, 0x3

    .line 3342
    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v8

    if-nez v8, :cond_ae

    .line 3343
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_99

    const-string v5, "** HIDING status bar"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    :cond_99
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 3345
    or-int/lit8 v0, v0, 0x1

    goto :goto_f6

    .line 3347
    :cond_a4
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_f6

    const-string v4, "Status bar already hiding"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .line 3350
    :cond_ae
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_b7

    const-string v4, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_b7
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 3352
    or-int/lit8 v0, v0, 0x1

    .line 3354
    :cond_c1
    const/4 v7, 0x0

    goto :goto_f6

    .line 3318
    :cond_c3
    :goto_c3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v8, :cond_cc

    const-string v8, "Showing status bar: forced"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_cc
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/StatusBarController;->setBarShowingLw(Z)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 3320
    or-int/lit8 v0, v0, 0x1

    .line 3323
    :cond_d6
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eqz v3, :cond_e3

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_e3

    goto :goto_e4

    :cond_e3
    move v5, v4

    :goto_e4
    move v1, v5

    .line 3326
    if-eqz v6, :cond_f6

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    .line 3327
    invoke-virtual {v3}, Lcom/android/server/wm/StatusBarController;->isTransientShowing()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 3328
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    iget v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-virtual {v3, v4, v5, v5}, Lcom/android/server/wm/StatusBarController;->updateVisibilityLw(ZII)I

    .line 3357
    :cond_f6
    :goto_f6
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/StatusBarController;->setTopAppHidesStatusBar(Z)V

    .line 3360
    .end local v2    # "forceShowStatusBar":Z
    .end local v6    # "notificationShadeForcesShowingNavigation":Z
    .end local v7    # "topAppHidesStatusBar":Z
    :cond_fb
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    if-eq v2, v1, :cond_105

    .line 3361
    if-nez v1, :cond_103

    .line 3363
    or-int/lit8 v0, v0, 0x1

    .line 3365
    :cond_103
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    .line 3368
    :cond_105
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v2

    const v3, -0x3fff7ff2

    and-int/2addr v2, v3

    if-eqz v2, :cond_111

    .line 3371
    or-int/lit8 v0, v0, 0x1

    .line 3374
    :cond_111
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    if-eq v2, v3, :cond_11e

    .line 3375
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLastShowingDream:Z

    .line 3376
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyShowingDreamChanged()V

    .line 3380
    :cond_11e
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayPolicyExt;->finishPostLayoutPolicyLw(I)I

    move-result v2

    or-int/2addr v0, v2

    .line 3383
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mAllowLockscreenWhenOn:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setAllowLockscreenWhenOn(IZ)V

    .line 3384
    return v0
.end method

.method public finishScreenTurningOn()Z
    .registers 16

    .line 994
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 995
    :try_start_3
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .local v1, "protoLogParam0":Z
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .local v4, "protoLogParam1":Z
    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .local v5, "protoLogParam2":Z
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .local v6, "protoLogParam3":Z
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .local v7, "protoLogParam4":Z
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v9, 0x4e34d208    # 7.5841587E8f

    const/16 v10, 0x3ff

    const-string v11, "finishScreenTurningOn: mAwake=%b, mScreenOnEarly=%b, mScreenOnFully=%b, mKeyguardDrawComplete=%b, mWindowManagerDrawComplete=%b"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v2

    const/4 v13, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    .end local v1    # "protoLogParam0":Z
    .end local v4    # "protoLogParam1":Z
    .end local v5    # "protoLogParam2":Z
    .end local v6    # "protoLogParam3":Z
    .end local v7    # "protoLogParam4":Z
    :cond_43
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    if-nez v1, :cond_70

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_70

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_70

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    if-nez v1, :cond_58

    goto :goto_70

    .line 1008
    :cond_58
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_FORCE_DEBUG_SCREEN_ON_enabled:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x311132ce

    const-string v6, "Finished screen turning on..."

    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v1, v5, v3, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    :cond_6a
    iput-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 1011
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 1012
    monitor-exit v0

    .line 1013
    return v2

    .line 1005
    :cond_70
    :goto_70
    monitor-exit v0

    return v3

    .line 1012
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw v1
.end method

.method public finishWindowsDrawn()Z
    .registers 3

    .line 975
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 976
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_c

    goto :goto_11

    .line 980
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 988
    monitor-exit v0

    .line 989
    return v1

    .line 977
    :cond_11
    :goto_11
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 988
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public focusChangedLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 5
    .param p1, "lastFocus"    # Lcom/android/server/wm/WindowState;
    .param p2, "newFocus"    # Lcom/android/server/wm/WindowState;

    .line 3890
    iput-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3891
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 3892
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_11

    .line 3893
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p2}, Lcom/android/server/policy/WindowManagerPolicy;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 3895
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ff2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1d

    .line 3898
    const/4 v0, 0x1

    return v0

    .line 3900
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    if-nez v1, :cond_11

    .line 342
    const-class v1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    .line 344
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mCocktailBarInternal:Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 345
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3758
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    .line 3759
    .local v0, "statusBarHeight":I
    if-eqz p5, :cond_11

    .line 3762
    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3764
    :cond_11
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 7
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3743
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .line 3624
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCurrentUserResources()Landroid/content/res/Resources;
    .registers 2

    .line 3616
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    if-nez v0, :cond_7

    .line 3617
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3619
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCurrentUserResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getDockMode()I
    .registers 2

    .line 858
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    return v0
.end method

.method public getFocusedWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 5187
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getForceShowSystemBars()Z
    .registers 2

    .line 869
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    return v0
.end method

.method public getForwardedInsets()Landroid/graphics/Insets;
    .registers 2

    .line 3860
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method getImeSourceFrameProvider()Lcom/android/internal/util/function/TriConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1518
    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$fwCI8IxKb1uS701UG_ckKN4Wwsc;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    return-object v0
.end method

.method getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;
    .registers 2

    .line 4053
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    return-object v0
.end method

.method getLayoutHint(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .registers 29
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p3, "outFrame"    # Landroid/graphics/Rect;
    .param p4, "outContentInsets"    # Landroid/graphics/Rect;
    .param p5, "outStableInsets"    # Landroid/graphics/Rect;
    .param p6, "outDisplayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1762
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const/4 v4, 0x0

    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 1763
    .local v5, "fl":I
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1764
    .local v6, "pfl":I
    invoke-static {v4, v1}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 1765
    .local v7, "requestedSysUiVis":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    or-int/2addr v8, v7

    .line 1767
    .local v8, "sysUiVis":I
    and-int/lit16 v9, v5, 0x100

    if-eqz v9, :cond_1e

    const/4 v9, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v9, 0x0

    .line 1768
    .local v9, "layoutInScreen":Z
    :goto_1f
    if-eqz v9, :cond_28

    const/high16 v12, 0x10000

    and-int/2addr v12, v5

    if-eqz v12, :cond_28

    const/4 v12, 0x1

    goto :goto_29

    :cond_28
    const/4 v12, 0x0

    .line 1770
    .local v12, "layoutInScreenAndInsetDecor":Z
    :goto_29
    const/high16 v13, 0x400000

    and-int/2addr v13, v6

    if-eqz v13, :cond_30

    const/4 v13, 0x1

    goto :goto_31

    :cond_30
    const/4 v13, 0x0

    .line 1772
    .local v13, "screenDecor":Z
    :goto_31
    if-eqz p2, :cond_3b

    .line 1773
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v14

    if-eqz v14, :cond_3b

    const/4 v14, 0x1

    goto :goto_3c

    :cond_3b
    const/4 v14, 0x0

    .line 1774
    .local v14, "isFixedRotationTransforming":Z
    :goto_3c
    if-eqz p2, :cond_43

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    goto :goto_44

    :cond_43
    move-object v15, v4

    .line 1775
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_44
    if-eqz v15, :cond_4b

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v16

    goto :goto_4d

    :cond_4b
    move-object/from16 v16, v4

    :goto_4d
    move-object/from16 v17, v16

    .line 1776
    .local v17, "task":Lcom/android/server/wm/Task;
    if-eqz v14, :cond_5a

    .line 1778
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v4, v17

    move-object/from16 v17, v16

    goto :goto_65

    .line 1779
    :cond_5a
    move-object/from16 v4, v17

    .end local v17    # "task":Lcom/android/server/wm/Task;
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_63

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    goto :goto_65

    :cond_63
    const/16 v17, 0x0

    :goto_65
    move-object/from16 v18, v17

    .line 1780
    .local v18, "taskBounds":Landroid/graphics/Rect;
    if-eqz v14, :cond_70

    .line 1781
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayFrames()Lcom/android/server/wm/DisplayFrames;

    move-result-object v17

    move-object/from16 v10, v17

    goto :goto_74

    .line 1782
    :cond_70
    iget-object v10, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    :goto_74
    nop

    .line 1784
    .local v10, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    if-eqz v12, :cond_10d

    if-nez v13, :cond_10d

    .line 1785
    and-int/lit16 v11, v8, 0x200

    if-nez v11, :cond_90

    .line 1786
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v11

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v20

    and-int v11, v11, v20

    if-nez v11, :cond_8a

    goto :goto_90

    .line 1789
    :cond_8a
    iget-object v11, v10, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_95

    .line 1787
    :cond_90
    :goto_90
    iget-object v11, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1792
    :goto_95
    if-eqz v4, :cond_a0

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v11

    if-eqz v11, :cond_a0

    const/16 v17, 0x1

    goto :goto_a2

    :cond_a0
    const/16 v17, 0x0

    :goto_a2
    move/from16 v11, v17

    .line 1793
    .local v11, "isFloatingTask":Z
    if-eqz v11, :cond_a9

    const/16 v16, 0x0

    goto :goto_ad

    :cond_a9
    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v16, v1

    :goto_ad
    move-object/from16 v1, v16

    .line 1795
    .local v1, "sf":Landroid/graphics/Rect;
    if-eqz v11, :cond_ba

    .line 1796
    const/16 v16, 0x0

    move-object/from16 v21, v16

    move/from16 v16, v6

    move-object/from16 v6, v21

    .local v16, "cf":Landroid/graphics/Rect;
    goto :goto_d3

    .line 1797
    .end local v16    # "cf":Landroid/graphics/Rect;
    :cond_ba
    move/from16 v16, v6

    .end local v6    # "pfl":I
    .local v16, "pfl":I
    and-int/lit16 v6, v8, 0x100

    if-eqz v6, :cond_ca

    .line 1798
    and-int/lit16 v6, v5, 0x400

    if-eqz v6, :cond_c7

    .line 1799
    iget-object v6, v10, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    .local v6, "cf":Landroid/graphics/Rect;
    goto :goto_d3

    .line 1801
    .end local v6    # "cf":Landroid/graphics/Rect;
    :cond_c7
    iget-object v6, v10, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    .restart local v6    # "cf":Landroid/graphics/Rect;
    goto :goto_d3

    .line 1803
    .end local v6    # "cf":Landroid/graphics/Rect;
    :cond_ca
    and-int/lit16 v6, v5, 0x400

    if-eqz v6, :cond_d1

    .line 1804
    iget-object v6, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .restart local v6    # "cf":Landroid/graphics/Rect;
    goto :goto_d3

    .line 1806
    .end local v6    # "cf":Landroid/graphics/Rect;
    :cond_d1
    iget-object v6, v10, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    .line 1809
    .restart local v6    # "cf":Landroid/graphics/Rect;
    :goto_d3
    move/from16 v17, v5

    move-object/from16 v5, v18

    .end local v18    # "taskBounds":Landroid/graphics/Rect;
    .local v5, "taskBounds":Landroid/graphics/Rect;
    .local v17, "fl":I
    if-eqz v5, :cond_dc

    .line 1810
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1812
    :cond_dc
    move/from16 v18, v7

    move-object/from16 v7, p4

    .end local v7    # "requestedSysUiVis":I
    .local v18, "requestedSysUiVis":I
    invoke-static {v2, v6, v7}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1813
    move-object/from16 v19, v6

    move-object/from16 v6, p5

    .end local v6    # "cf":Landroid/graphics/Rect;
    .local v19, "cf":Landroid/graphics/Rect;
    invoke-static {v2, v1, v6}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1814
    move-object/from16 v20, v1

    .end local v1    # "sf":Landroid/graphics/Rect;
    .local v20, "sf":Landroid/graphics/Rect;
    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1815
    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 1814
    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1817
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    .line 1818
    invoke-virtual {v1, v4}, Lcom/android/server/wm/MultiStarController;->isOverlapNotchLocked(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 1819
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1822
    :cond_10a
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1

    .line 1784
    .end local v11    # "isFloatingTask":Z
    .end local v16    # "pfl":I
    .end local v17    # "fl":I
    .end local v19    # "cf":Landroid/graphics/Rect;
    .end local v20    # "sf":Landroid/graphics/Rect;
    .local v5, "fl":I
    .local v6, "pfl":I
    .restart local v7    # "requestedSysUiVis":I
    .local v18, "taskBounds":Landroid/graphics/Rect;
    :cond_10d
    move/from16 v17, v5

    move/from16 v16, v6

    move-object/from16 v5, v18

    move-object/from16 v6, p5

    move/from16 v18, v7

    move-object/from16 v7, p4

    .line 1824
    .end local v6    # "pfl":I
    .end local v7    # "requestedSysUiVis":I
    .local v5, "taskBounds":Landroid/graphics/Rect;
    .restart local v16    # "pfl":I
    .restart local v17    # "fl":I
    .local v18, "requestedSysUiVis":I
    if-eqz v9, :cond_121

    .line 1825
    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_126

    .line 1827
    :cond_121
    iget-object v1, v10, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1829
    :goto_126
    if-eqz v5, :cond_12b

    .line 1830
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1833
    :cond_12b
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1834
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 1835
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v3, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 1836
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    return v1
.end method

.method public getLidState()I
    .registers 2

    .line 905
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    return v0
.end method

.method public getNavBarPosition()I
    .registers 2

    .line 3883
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    return v0
.end method

.method getNavigationBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1634
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getNavigationBarHeight(II)I
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "uiMode"    # I

    .line 3676
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3717
    move v0, p2

    .line 3718
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3719
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3725
    .local v1, "navBarPosition":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 3726
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3729
    .end local v1    # "navBarPosition":I
    :cond_13
    if-eqz p5, :cond_1f

    .line 3730
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3732
    :cond_1f
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I
    .registers 9
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I
    .param p4, "uiMode"    # I
    .param p5, "displayCutout"    # Landroid/view/DisplayCutout;

    .line 3658
    move v0, p1

    .line 3659
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3660
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3661
    .local v1, "navBarPosition":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 3662
    :cond_11
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3665
    .end local v1    # "navBarPosition":I
    :cond_16
    if-eqz p5, :cond_22

    .line 3666
    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 3668
    :cond_22
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p5, "outInsets"    # Landroid/graphics/Rect;

    .line 3823
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3826
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3827
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v0

    .line 3828
    .local v0, "uiMode":I
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v1

    .line 3834
    .local v1, "position":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 3835
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_32

    .line 3836
    :cond_1f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_29

    .line 3837
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->right:I

    goto :goto_32

    .line 3838
    :cond_29
    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 3839
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    iput v2, p5, Landroid/graphics/Rect;->left:I

    .line 3843
    .end local v0    # "uiMode":I
    .end local v1    # "position":I
    :cond_32
    :goto_32
    if-eqz p4, :cond_58

    .line 3844
    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 3845
    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 3846
    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 3847
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 3849
    :cond_58
    return-void
.end method

.method getNotificationShade()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1630
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;
    .registers 2

    .line 4888
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRefreshRatePolicy:Lcom/android/server/wm/RefreshRatePolicy;

    return-object v0
.end method

.method public getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;
    .registers 2

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    return-object v0
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayRotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p5, "outInsets"    # Landroid/graphics/Rect;

    .line 3804
    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3807
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 3808
    invoke-virtual {p0, p5, p1}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 3809
    return-void
.end method

.method getStatusBar()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1626
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getStatusBarController()Lcom/android/server/wm/StatusBarController;
    .registers 2

    .line 1622
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    return-object v0
.end method

.method getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I
    .registers 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 1616
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v0, v0, v1

    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mServiceAcquireLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_11

    .line 329
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 330
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 332
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    .line 333
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method getSystemUiContext()Landroid/content/Context;
    .registers 2

    .line 3628
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 3122
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWindowCornerRadius()F
    .registers 3

    .line 3775
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 3776
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3775
    :goto_19
    return v0
.end method

.method public hasNavigationBar()Z
    .registers 2

    .line 879
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    return v0
.end method

.method hasSideGestures()Z
    .registers 2

    .line 893
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    if-lez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public hasStatusBar()Z
    .registers 2

    .line 889
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasStatusBar:Z

    return v0
.end method

.method hideImmersiveModeConfirmation()V
    .registers 2

    .line 5193
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    if-eqz v0, :cond_7

    .line 5194
    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->hideImmersiveModeConfirmation()V

    .line 5196
    :cond_7
    return-void
.end method

.method public isAwake()Z
    .registers 2

    .line 913
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    return v0
.end method

.method isCarDockEnablesAccelerometer()Z
    .registers 2

    .line 838
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mCarDockEnablesAccelerometer:Z

    return v0
.end method

.method isDeskDockEnablesAccelerometer()Z
    .registers 2

    .line 842
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDeskDockEnablesAccelerometer:Z

    return v0
.end method

.method isDexForceImmersiveModeEnabled()Z
    .registers 2

    .line 5233
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/wm/PolicyControl;->isDexForceImmersiveModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isDexForceImmersiveModeSettingsOn()Z
    .registers 2

    .line 5229
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/wm/PolicyControl;->isDexForceImmersiveModeSettingsOn()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isGearVrPersistentVrMode()Z
    .registers 2

    .line 5172
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mGearVrPersistentVrMode:Z

    return v0
.end method

.method isHdmiPlugged()Z
    .registers 2

    .line 834
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    return v0
.end method

.method public isKeyguardDrawComplete()Z
    .registers 2

    .line 925
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    return v0
.end method

.method isKeyguardShowing()Z
    .registers 2

    .line 4039
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isNavigationBarVisibleLw()Z
    .registers 2

    .line 5110
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPersistentVrModeEnabled()Z
    .registers 2

    .line 850
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method public isScreenOnEarly()Z
    .registers 2

    .line 917
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    return v0
.end method

.method public isScreenOnFully()Z
    .registers 2

    .line 921
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    return v0
.end method

.method isShowingDreamLw()Z
    .registers 2

    .line 3780
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mShowingDream:Z

    return v0
.end method

.method isStatusBarVisibleLw()Z
    .registers 2

    .line 5106
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isTopLayoutFullscreen()Z
    .registers 2

    .line 3126
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopIsFullscreen:Z

    return v0
.end method

.method public isVrImmersiveMode()Z
    .registers 2

    .line 5181
    invoke-static {}, Lcom/android/server/wm/PolicyControl;->isVrImmersiveMode()Z

    move-result v0

    return v0
.end method

.method isWindowExcludedFromContent(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 5083
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_13

    .line 5084
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 5087
    :cond_13
    return v0
.end method

.method public isWindowManagerDrawComplete()Z
    .registers 2

    .line 929
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    return v0
.end method

.method public synthetic lambda$addWindowLw$2$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .line 1356
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1357
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarHeight(Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1358
    return-void
.end method

.method public synthetic lambda$addWindowLw$3$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1394
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1396
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    .line 1399
    .local v0, "navBarPosition":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_35

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v1, :cond_35

    .line 1403
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1404
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1405
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1407
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1406
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_86

    .line 1410
    :cond_35
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v1, :cond_86

    .line 1411
    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    .line 1412
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1413
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1414
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1416
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1415
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_86

    .line 1417
    :cond_60
    const/4 v1, 0x2

    if-ne v0, v1, :cond_86

    .line 1418
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1419
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1420
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1422
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1421
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 1426
    :cond_86
    :goto_86
    return-void
.end method

.method public synthetic lambda$addWindowLw$4$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1430
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1432
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    if-nez v0, :cond_9b

    .line 1434
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 1435
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    .line 1438
    .local v0, "navBarPosition":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4e

    .line 1439
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayPolicyExt;->isNavBarImeBtnAllowed(I)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1440
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1441
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1443
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1445
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1444
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->top:I

    goto :goto_9b

    .line 1447
    :cond_4e
    const/4 v1, 0x1

    if-ne v0, v1, :cond_75

    .line 1448
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1449
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1450
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1452
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1451
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->right:I

    goto :goto_9b

    .line 1453
    :cond_75
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9b

    .line 1454
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1455
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1456
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1458
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    .line 1457
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarWidth(II)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 1462
    .end local v0    # "navBarPosition":I
    :cond_9b
    :goto_9b
    return-void
.end method

.method public synthetic lambda$addWindowLw$5$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1466
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1469
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2e

    .line 1471
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1472
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 1473
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    goto :goto_2e

    .line 1474
    :cond_24
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 1475
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1479
    :cond_2e
    :goto_2e
    return-void
.end method

.method public synthetic lambda$addWindowLw$6$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1482
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1483
    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1484
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1485
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1486
    return-void
.end method

.method public synthetic lambda$addWindowLw$7$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1489
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 1491
    const/4 v0, 0x0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 1492
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1493
    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 1494
    return-void
.end method

.method public synthetic lambda$addWindowLw$8$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1497
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    if-eqz v0, :cond_11

    .line 1499
    :cond_e
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1501
    :cond_11
    return-void
.end method

.method public synthetic lambda$getImeSourceFrameProvider$9$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p3, "inOutFrame"    # Landroid/graphics/Rect;

    .line 1519
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2e

    iget v0, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 1525
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1526
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1527
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1528
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_35

    .line 1530
    :cond_2e
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1532
    :goto_35
    return-void
.end method

.method public synthetic lambda$new$0$DisplayPolicy()V
    .registers 3

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 794
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 795
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 796
    monitor-exit v0

    .line 797
    return-void

    .line 796
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public synthetic lambda$notifyDisplayReady$13$DisplayPolicy()V
    .registers 3

    .line 3641
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v0

    .line 3642
    .local v0, "displayId":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onDisplayReady(I)V

    .line 3643
    const-class v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 3644
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    .line 3645
    .local v1, "wpMgr":Lcom/android/server/wallpaper/WallpaperManagerInternal;
    if-eqz v1, :cond_18

    .line 3646
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onDisplayReady(I)V

    .line 3648
    :cond_18
    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$10$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "contentFrame"    # Landroid/graphics/Rect;

    .line 1964
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1965
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavVisible:Z

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavTranslucent:Z

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNavAllowedHidden:Z

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLastNotificationShadeForcesShowingNavigation:Z

    .line 1964
    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/DisplayPolicy;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;IZZZZLandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$simulateLayoutDisplay$11$DisplayPolicy(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "contentFrame"    # Landroid/graphics/Rect;

    .line 1972
    iget v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/wm/DisplayPolicy;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$updateHideNavInputEventReceiver$12$DisplayPolicy(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .registers 4
    .param p1, "x$0"    # Landroid/view/InputChannel;
    .param p2, "x$1"    # Landroid/os/Looper;

    .line 2075
    new-instance v0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;-><init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public synthetic lambda$updateSystemUiVisibilityLw$14$DisplayPolicy(IILandroid/util/Pair;ZZLcom/android/server/wm/WindowState;Ljava/lang/String;[Lcom/android/internal/view/AppearanceRegion;ZZ)V
    .registers 16
    .param p1, "visibility"    # I
    .param p2, "appearance"    # I
    .param p3, "transientState"    # Landroid/util/Pair;
    .param p4, "isFullscreen"    # Z
    .param p5, "isImmersive"    # Z
    .param p6, "win"    # Lcom/android/server/wm/WindowState;
    .param p7, "cause"    # Ljava/lang/String;
    .param p8, "appearanceRegions"    # [Lcom/android/internal/view/AppearanceRegion;
    .param p9, "isNavbarColorManagedByIme"    # Z
    .param p10, "isFullscreenAll"    # Z

    .line 4226
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 4227
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_4c

    .line 4228
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->getDisplayId()I

    move-result v1

    .line 4256
    .local v1, "displayId":I
    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    invoke-interface {v0, v1, v2, p7}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setDisableFlags(IILjava/lang/String;)V

    .line 4259
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_1e

    .line 4260
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[I)V

    .line 4262
    :cond_1e
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    array-length v2, v2

    if-lez v2, :cond_2c

    .line 4263
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [I

    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 4265
    :cond_2c
    invoke-interface {v0, v1, p2, p8, p9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onSystemBarAppearanceChanged(II[Lcom/android/internal/view/AppearanceRegion;Z)V

    .line 4268
    invoke-interface {v0, v1, p4, p5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->topAppWindowChanged(IZZ)V

    .line 4273
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v2

    .line 4274
    .local v2, "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    if-eqz v2, :cond_3b

    .line 4275
    invoke-virtual {v2, v1, p10, p5}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->topAppWindowChanged(IZZ)V

    .line 4281
    .end local v2    # "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    :cond_3b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4282
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const v4, -0x30000001

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->statusBarVisibilityChanged(I)V

    .line 4284
    monitor-exit v2

    goto :goto_4c

    :catchall_49
    move-exception v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_49

    throw v3

    .line 4286
    .end local v1    # "displayId":I
    :cond_4c
    :goto_4c
    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .registers 52
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "attached"    # Lcom/android/server/wm/WindowState;
    .param p3, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;

    .line 2537
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-ne v12, v0, :cond_17

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    move-object/from16 v0, p3

    move-object v7, v11

    move-object v1, v12

    goto/16 :goto_b18

    :cond_17
    :goto_17
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eq v12, v0, :cond_b14

    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    .line 2538
    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v0, p3

    move-object v7, v11

    move-object v1, v12

    goto/16 :goto_b18

    .line 2541
    :cond_29
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 2543
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2544
    .local v15, "type":I
    invoke-static {v12, v14}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    .line 2545
    .local v10, "fl":I
    iget v9, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2546
    .local v9, "pfl":I
    iget v8, v14, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2547
    .local v8, "sim":I
    const/4 v0, 0x0

    invoke-static {v0, v14}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v16

    .line 2548
    .local v16, "requestedSysUiFl":I
    invoke-static {v14}, Lcom/android/server/wm/DisplayPolicy;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v7, v16, v0

    .line 2550
    .local v7, "sysUiFl":I
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowState;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v6

    .line 2551
    .end local p3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v6, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v4

    .line 2553
    .local v4, "windowFrames":Lcom/android/server/wm/WindowFrames;
    sget-object v0, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    iget-object v1, v4, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2554
    iget-object v3, v4, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 2555
    .local v3, "pf":Landroid/graphics/Rect;
    iget-object v2, v4, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 2556
    .local v2, "df":Landroid/graphics/Rect;
    iget-object v1, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    .line 2557
    .local v1, "cf":Landroid/graphics/Rect;
    iget-object v0, v4, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 2558
    .local v0, "vf":Landroid/graphics/Rect;
    iget-object v5, v4, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 2559
    .local v5, "dcf":Landroid/graphics/Rect;
    move/from16 v17, v15

    .end local v15    # "type":I
    .local v17, "type":I
    iget-object v15, v4, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    .line 2560
    .local v15, "sf":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 2561
    move/from16 v18, v9

    .end local v9    # "pfl":I
    .local v18, "pfl":I
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v19

    if-eqz v19, :cond_7c

    iget-object v9, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_7c

    .line 2564
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v9

    if-eqz v9, :cond_7c

    const/4 v9, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v9, 0x0

    :goto_7d
    move/from16 v20, v9

    .line 2569
    .local v20, "hasNavBar":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v9

    move/from16 v21, v7

    .end local v7    # "sysUiFl":I
    .local v21, "sysUiFl":I
    const/16 v7, 0x30

    if-eqz v9, :cond_8f

    and-int/lit8 v9, v8, 0x30

    if-ne v9, v7, :cond_8f

    .line 2571
    const/4 v9, 0x0

    .local v9, "adjust":I
    goto :goto_91

    .line 2573
    .end local v9    # "adjust":I
    :cond_8f
    and-int/lit16 v9, v8, 0xf0

    .line 2577
    .restart local v9    # "adjust":I
    :goto_91
    and-int/lit16 v7, v10, 0x100

    move-object/from16 v23, v1

    .end local v1    # "cf":Landroid/graphics/Rect;
    .local v23, "cf":Landroid/graphics/Rect;
    const/16 v1, 0x100

    if-ne v7, v1, :cond_9b

    const/4 v1, 0x1

    goto :goto_9c

    :cond_9b
    const/4 v1, 0x0

    :goto_9c
    move/from16 v24, v1

    .line 2578
    .local v24, "layoutInScreen":Z
    const/high16 v1, 0x10000

    and-int v7, v10, v1

    if-ne v7, v1, :cond_a6

    const/4 v1, 0x1

    goto :goto_a7

    :cond_a6
    const/4 v1, 0x0

    :goto_a7
    move/from16 v25, v1

    .line 2580
    .local v25, "layoutInsetDecor":Z
    iget-object v1, v6, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2582
    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    move-object/from16 v26, v15

    .end local v15    # "sf":Landroid/graphics/Rect;
    .local v26, "sf":Landroid/graphics/Rect;
    const-string v15, "WindowManager"

    move-object/from16 v27, v15

    const/4 v15, 0x2

    if-ne v1, v15, :cond_274

    .line 2583
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v28

    .line 2584
    .local v28, "typesToFit":I
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v29

    .line 2585
    .local v29, "sidesToFit":I
    invoke-static/range {v28 .. v28}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 2586
    .local v1, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v15, v6, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 2587
    .local v15, "dfu":Landroid/graphics/Rect;
    move/from16 v30, v8

    const/4 v8, 0x0

    .end local v8    # "sim":I
    .local v30, "sim":I
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v31

    .line 2588
    .local v31, "insets":Landroid/graphics/Insets;
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v32

    const/16 v19, 0x1

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v8, v31

    move/from16 v7, v32

    .end local v31    # "insets":Landroid/graphics/Insets;
    .local v7, "i":I
    .local v8, "insets":Landroid/graphics/Insets;
    :goto_da
    if-ltz v7, :cond_110

    .line 2589
    move-object/from16 v32, v4

    .end local v4    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v32, "windowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v4, v11, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v4

    .line 2590
    invoke-virtual {v4, v12}, Lcom/android/server/wm/InsetsPolicy;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v4

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    move-object/from16 v34, v1

    .end local v1    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v34, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 2591
    .local v1, "source":Landroid/view/InsetsSource;
    if-nez v1, :cond_fb

    .line 2592
    goto :goto_109

    .line 2594
    :cond_fb
    nop

    .line 2595
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v4

    .line 2594
    invoke-virtual {v1, v15, v4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v4

    move-object v8, v4

    .line 2588
    .end local v1    # "source":Landroid/view/InsetsSource;
    :goto_109
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, v32

    move-object/from16 v1, v34

    goto :goto_da

    .end local v32    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v34    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v1, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v4    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_110
    move-object/from16 v34, v1

    move-object/from16 v32, v4

    .line 2597
    .end local v1    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v4    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v7    # "i":I
    .restart local v32    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v34    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    and-int/lit8 v1, v29, 0x1

    if-eqz v1, :cond_11b

    iget v1, v8, Landroid/graphics/Insets;->left:I

    goto :goto_11c

    :cond_11b
    const/4 v1, 0x0

    :goto_11c
    move v7, v1

    .line 2598
    .local v7, "left":I
    and-int/lit8 v1, v29, 0x2

    if-eqz v1, :cond_124

    iget v1, v8, Landroid/graphics/Insets;->top:I

    goto :goto_125

    :cond_124
    const/4 v1, 0x0

    :goto_125
    move v4, v1

    .line 2599
    .local v4, "top":I
    and-int/lit8 v1, v29, 0x4

    if-eqz v1, :cond_12d

    iget v1, v8, Landroid/graphics/Insets;->right:I

    goto :goto_12e

    :cond_12d
    const/4 v1, 0x0

    :goto_12e
    move/from16 v33, v1

    .line 2600
    .local v33, "right":I
    and-int/lit8 v1, v29, 0x8

    if-eqz v1, :cond_137

    iget v1, v8, Landroid/graphics/Insets;->bottom:I

    goto :goto_138

    :cond_137
    const/4 v1, 0x0

    :goto_138
    move/from16 v35, v1

    .line 2601
    .local v35, "bottom":I
    iget v1, v15, Landroid/graphics/Rect;->right:I

    sub-int v1, v1, v33

    move-object/from16 v36, v5

    .end local v5    # "dcf":Landroid/graphics/Rect;
    .local v36, "dcf":Landroid/graphics/Rect;
    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v5, v35

    invoke-virtual {v2, v7, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2602
    if-nez v13, :cond_1cc

    .line 2603
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2604
    const/16 v1, 0x30

    if-eq v9, v1, :cond_153

    .line 2605
    iget-object v1, v6, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    goto :goto_155

    :cond_153
    iget-object v1, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    .line 2604
    :goto_155
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2607
    const/16 v1, 0x20

    if-eq v9, v1, :cond_183

    .line 2609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_167

    const/16 v1, 0x10

    if-ne v9, v1, :cond_167

    goto :goto_183

    :cond_167
    move-object/from16 v40, v6

    move-object/from16 v41, v8

    move v13, v9

    move v12, v10

    move-object/from16 v22, v15

    move/from16 v31, v21

    move-object/from16 v37, v23

    move-object/from16 v39, v32

    move-object/from16 v23, v34

    move-object/from16 v15, v36

    move-object v9, v0

    move-object/from16 v34, v2

    move-object v10, v3

    move/from16 v32, v4

    move/from16 v21, v7

    goto/16 :goto_24a

    .line 2610
    :cond_183
    :goto_183
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_1b0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 2612
    iget-object v1, v6, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v40, v6

    move-object/from16 v41, v8

    move v13, v9

    move v12, v10

    move-object/from16 v22, v15

    move/from16 v31, v21

    move-object/from16 v37, v23

    move-object/from16 v39, v32

    move-object/from16 v23, v34

    move-object/from16 v15, v36

    move-object v9, v0

    move-object/from16 v34, v2

    move-object v10, v3

    move/from16 v32, v4

    move/from16 v21, v7

    goto/16 :goto_24a

    .line 2610
    :cond_1b0
    move-object/from16 v40, v6

    move-object/from16 v41, v8

    move v13, v9

    move v12, v10

    move-object/from16 v22, v15

    move/from16 v31, v21

    move-object/from16 v37, v23

    move-object/from16 v39, v32

    move-object/from16 v23, v34

    move-object/from16 v15, v36

    move-object v9, v0

    move-object/from16 v34, v2

    move-object v10, v3

    move/from16 v32, v4

    move/from16 v21, v7

    goto/16 :goto_24a

    .line 2617
    :cond_1cc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_215

    .line 2618
    if-eqz v24, :cond_1d9

    if-eqz v25, :cond_1d9

    move/from16 v5, v19

    goto :goto_1da

    :cond_1d9
    const/4 v5, 0x0

    :goto_1da
    move-object/from16 v1, v36

    .line 2619
    .end local v36    # "dcf":Landroid/graphics/Rect;
    .local v1, "dcf":Landroid/graphics/Rect;
    .local v5, "layoutInScreenAndInsetDecor":Z
    move-object/from16 v36, v0

    .end local v0    # "vf":Landroid/graphics/Rect;
    .local v36, "vf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v22, v15

    move-object/from16 v37, v23

    move-object/from16 v23, v34

    move-object v15, v1

    .end local v1    # "dcf":Landroid/graphics/Rect;
    .end local v34    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v15, "dcf":Landroid/graphics/Rect;
    .local v22, "dfu":Landroid/graphics/Rect;
    .local v23, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v37, "cf":Landroid/graphics/Rect;
    move-object/from16 v1, p1

    move-object/from16 v34, v2

    .end local v2    # "df":Landroid/graphics/Rect;
    .local v34, "df":Landroid/graphics/Rect;
    move v2, v10

    move-object/from16 v38, v3

    .end local v3    # "pf":Landroid/graphics/Rect;
    .local v38, "pf":Landroid/graphics/Rect;
    move v3, v9

    move-object/from16 v39, v32

    move/from16 v32, v4

    .end local v4    # "top":I
    .local v32, "top":I
    .local v39, "windowFrames":Lcom/android/server/wm/WindowFrames;
    move-object/from16 v4, p2

    move-object/from16 v40, v6

    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v40, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    move-object/from16 v6, v38

    move/from16 v31, v21

    const/16 v13, 0x7dd

    move/from16 v21, v7

    .end local v7    # "left":I
    .local v21, "left":I
    .local v31, "sysUiFl":I
    move-object/from16 v7, v34

    move-object/from16 v41, v8

    const/16 v42, 0x0

    .end local v8    # "insets":Landroid/graphics/Insets;
    .local v41, "insets":Landroid/graphics/Insets;
    move-object/from16 v8, v37

    move v13, v9

    move/from16 v12, v19

    .end local v9    # "adjust":I
    .local v13, "adjust":I
    move-object/from16 v9, v36

    move v12, v10

    .end local v10    # "fl":I
    .local v12, "fl":I
    move-object/from16 v10, v40

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2621
    .end local v5    # "layoutInScreenAndInsetDecor":Z
    move-object/from16 v10, v38

    goto :goto_24a

    .line 2623
    .end local v12    # "fl":I
    .end local v13    # "adjust":I
    .end local v22    # "dfu":Landroid/graphics/Rect;
    .end local v31    # "sysUiFl":I
    .end local v37    # "cf":Landroid/graphics/Rect;
    .end local v38    # "pf":Landroid/graphics/Rect;
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v41    # "insets":Landroid/graphics/Insets;
    .restart local v0    # "vf":Landroid/graphics/Rect;
    .restart local v2    # "df":Landroid/graphics/Rect;
    .restart local v3    # "pf":Landroid/graphics/Rect;
    .restart local v4    # "top":I
    .restart local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v7    # "left":I
    .restart local v8    # "insets":Landroid/graphics/Insets;
    .restart local v9    # "adjust":I
    .restart local v10    # "fl":I
    .local v15, "dfu":Landroid/graphics/Rect;
    .local v21, "sysUiFl":I
    .local v23, "cf":Landroid/graphics/Rect;
    .local v32, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v34, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v36, "dcf":Landroid/graphics/Rect;
    :cond_215
    move-object/from16 v38, v3

    move-object/from16 v40, v6

    move-object/from16 v41, v8

    move v13, v9

    move v12, v10

    move-object/from16 v22, v15

    move/from16 v31, v21

    move-object/from16 v37, v23

    move-object/from16 v39, v32

    move-object/from16 v23, v34

    move-object/from16 v15, v36

    move-object/from16 v36, v0

    move-object/from16 v34, v2

    move/from16 v32, v4

    move/from16 v21, v7

    .end local v0    # "vf":Landroid/graphics/Rect;
    .end local v2    # "df":Landroid/graphics/Rect;
    .end local v3    # "pf":Landroid/graphics/Rect;
    .end local v4    # "top":I
    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v7    # "left":I
    .end local v8    # "insets":Landroid/graphics/Insets;
    .end local v9    # "adjust":I
    .end local v10    # "fl":I
    .restart local v12    # "fl":I
    .restart local v13    # "adjust":I
    .local v15, "dcf":Landroid/graphics/Rect;
    .local v21, "left":I
    .restart local v22    # "dfu":Landroid/graphics/Rect;
    .local v23, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v31    # "sysUiFl":I
    .local v32, "top":I
    .local v34, "df":Landroid/graphics/Rect;
    .local v36, "vf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    .restart local v38    # "pf":Landroid/graphics/Rect;
    .restart local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v41    # "insets":Landroid/graphics/Insets;
    and-int/lit16 v0, v12, 0x100

    if-nez v0, :cond_23a

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_23c

    :cond_23a
    move-object/from16 v2, v34

    :goto_23c
    move-object/from16 v10, v38

    .end local v38    # "pf":Landroid/graphics/Rect;
    .local v10, "pf":Landroid/graphics/Rect;
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2624
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v9, v36

    .end local v36    # "vf":Landroid/graphics/Rect;
    .local v9, "vf":Landroid/graphics/Rect;
    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2627
    :goto_24a
    const/16 v0, 0x10

    if-eq v13, v0, :cond_253

    .line 2628
    move-object/from16 v8, v40

    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v8, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_257

    .end local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_253
    move-object/from16 v8, v40

    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    .line 2627
    :goto_257
    move-object/from16 v7, v37

    .end local v37    # "cf":Landroid/graphics/Rect;
    .local v7, "cf":Landroid/graphics/Rect;
    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2629
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2630
    .end local v21    # "left":I
    .end local v22    # "dfu":Landroid/graphics/Rect;
    .end local v23    # "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v28    # "typesToFit":I
    .end local v29    # "sidesToFit":I
    .end local v32    # "top":I
    .end local v33    # "right":I
    .end local v35    # "bottom":I
    .end local v41    # "insets":Landroid/graphics/Insets;
    move-object v4, v7

    move-object v3, v8

    move-object v6, v9

    move-object v7, v11

    move v0, v12

    move/from16 v8, v17

    move-object/from16 v12, v27

    move/from16 v2, v31

    move-object/from16 v5, v34

    const/4 v1, 0x1

    move-object/from16 v27, v15

    move-object v15, v10

    goto/16 :goto_8e8

    .end local v7    # "cf":Landroid/graphics/Rect;
    .end local v12    # "fl":I
    .end local v13    # "adjust":I
    .end local v15    # "dcf":Landroid/graphics/Rect;
    .end local v30    # "sim":I
    .end local v31    # "sysUiFl":I
    .end local v34    # "df":Landroid/graphics/Rect;
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v0    # "vf":Landroid/graphics/Rect;
    .restart local v2    # "df":Landroid/graphics/Rect;
    .restart local v3    # "pf":Landroid/graphics/Rect;
    .local v4, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v5, "dcf":Landroid/graphics/Rect;
    .restart local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v8, "sim":I
    .local v9, "adjust":I
    .local v10, "fl":I
    .local v21, "sysUiFl":I
    .local v23, "cf":Landroid/graphics/Rect;
    :cond_274
    move-object/from16 v34, v2

    move-object/from16 v39, v4

    move-object v15, v5

    move/from16 v30, v8

    move v13, v9

    move v12, v10

    move/from16 v31, v21

    move-object/from16 v7, v23

    move-object v9, v0

    move-object v10, v3

    move-object v8, v6

    .end local v0    # "vf":Landroid/graphics/Rect;
    .end local v2    # "df":Landroid/graphics/Rect;
    .end local v3    # "pf":Landroid/graphics/Rect;
    .end local v4    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v5    # "dcf":Landroid/graphics/Rect;
    .end local v6    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v21    # "sysUiFl":I
    .end local v23    # "cf":Landroid/graphics/Rect;
    .restart local v7    # "cf":Landroid/graphics/Rect;
    .local v8, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "vf":Landroid/graphics/Rect;
    .local v10, "pf":Landroid/graphics/Rect;
    .restart local v12    # "fl":I
    .restart local v13    # "adjust":I
    .restart local v15    # "dcf":Landroid/graphics/Rect;
    .restart local v30    # "sim":I
    .restart local v31    # "sysUiFl":I
    .restart local v34    # "df":Landroid/graphics/Rect;
    .restart local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    move/from16 v6, v17

    const/16 v0, 0x7db

    .end local v17    # "type":I
    .local v6, "type":I
    if-ne v6, v0, :cond_32e

    .line 2631
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2632
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2633
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    move-object/from16 v5, v34

    .end local v34    # "df":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2634
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2636
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 2638
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 2639
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2e1

    iget-object v1, v11, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v1, v0, :cond_2e1

    invoke-direct {v11, v0}, Lcom/android/server/wm/DisplayPolicy;->canReceiveInput(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    .line 2642
    iget v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d1

    .line 2643
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v5, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x1

    goto :goto_2e2

    .line 2645
    :cond_2d1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e2

    .line 2646
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    goto :goto_2e2

    .line 2639
    :cond_2e1
    const/4 v1, 0x1

    .line 2653
    :cond_2e2
    :goto_2e2
    iget v0, v11, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_316

    .line 2654
    iget v0, v8, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 2655
    .local v0, "rotation":I
    iget-object v2, v11, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v2

    .line 2656
    .local v2, "uimode":I
    invoke-direct {v11, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v3

    .line 2657
    invoke-virtual {v11, v0, v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarHeight(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2658
    .local v3, "navHeightOffset":I
    if-lez v3, :cond_313

    .line 2659
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 2660
    move-object/from16 v4, v26

    .end local v26    # "sf":Landroid/graphics/Rect;
    .local v4, "sf":Landroid/graphics/Rect;
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 2661
    iget v1, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v9, Landroid/graphics/Rect;->bottom:I

    .line 2662
    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_318

    .line 2658
    .end local v4    # "sf":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    :cond_313
    move-object/from16 v4, v26

    .end local v26    # "sf":Landroid/graphics/Rect;
    .restart local v4    # "sf":Landroid/graphics/Rect;
    goto :goto_318

    .line 2653
    .end local v0    # "rotation":I
    .end local v2    # "uimode":I
    .end local v3    # "navHeightOffset":I
    .end local v4    # "sf":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    :cond_316
    move-object/from16 v4, v26

    .line 2667
    .end local v26    # "sf":Landroid/graphics/Rect;
    .restart local v4    # "sf":Landroid/graphics/Rect;
    :goto_318
    const/16 v0, 0x50

    iput v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v3, v8

    move-object v7, v11

    move v0, v12

    move-object/from16 v12, v27

    move/from16 v2, v31

    const/4 v1, 0x1

    move v8, v6

    move-object v6, v9

    move-object/from16 v27, v15

    move-object v15, v10

    goto/16 :goto_8e8

    .line 2668
    .end local v4    # "sf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    .restart local v34    # "df":Landroid/graphics/Rect;
    :cond_32e
    move-object/from16 v4, v26

    move-object/from16 v5, v34

    .end local v26    # "sf":Landroid/graphics/Rect;
    .end local v34    # "df":Landroid/graphics/Rect;
    .restart local v4    # "sf":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    const/16 v0, 0x7ef

    if-ne v6, v0, :cond_37f

    .line 2669
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2670
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2671
    const/16 v0, 0x10

    if-eq v13, v0, :cond_34a

    .line 2672
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_34f

    .line 2674
    :cond_34a
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2676
    :goto_34f
    const/16 v0, 0x30

    if-eq v13, v0, :cond_36a

    .line 2677
    iget-object v0, v8, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v3, v8

    move-object v7, v11

    move v0, v12

    move-object/from16 v12, v27

    move/from16 v2, v31

    const/4 v1, 0x1

    move v8, v6

    move-object v6, v9

    move-object/from16 v27, v15

    move-object v15, v10

    goto/16 :goto_8e8

    .line 2679
    :cond_36a
    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v3, v8

    move-object v7, v11

    move v0, v12

    move-object/from16 v12, v27

    move/from16 v2, v31

    const/4 v1, 0x1

    move v8, v6

    move-object v6, v9

    move-object/from16 v27, v15

    move-object v15, v10

    goto/16 :goto_8e8

    .line 2681
    :cond_37f
    const/16 v0, 0x7dd

    if-ne v6, v0, :cond_398

    .line 2682
    invoke-direct {v11, v8, v10, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v3, v8

    move-object v7, v11

    move v0, v12

    move-object/from16 v12, v27

    move/from16 v2, v31

    const/4 v1, 0x1

    move v8, v6

    move-object v6, v9

    move-object/from16 v27, v15

    move-object v15, v10

    goto/16 :goto_8e8

    .line 2683
    :cond_398
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    move-object/from16 v3, p1

    const/4 v2, 0x1

    if-eq v3, v0, :cond_895

    const/16 v0, 0x7f8

    if-ne v6, v0, :cond_3b5

    move v1, v2

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v3, v8

    move-object v7, v11

    move v0, v12

    move-object/from16 v12, v27

    move/from16 v2, v31

    move v8, v6

    move-object v6, v9

    move-object/from16 v27, v15

    move-object v15, v10

    goto/16 :goto_8a5

    .line 2704
    :cond_3b5
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2705
    if-lt v6, v2, :cond_3c2

    const/16 v1, 0x63

    if-gt v6, v1, :cond_3c2

    move v1, v2

    goto :goto_3c3

    :cond_3c2
    const/4 v1, 0x0

    :goto_3c3
    move/from16 v17, v1

    .line 2707
    .local v17, "isAppWindow":Z
    iget-object v1, v11, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    if-ne v3, v1, :cond_3d1

    .line 2708
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_3d1

    move v1, v2

    goto :goto_3d2

    :cond_3d1
    const/4 v1, 0x0

    :goto_3d2
    move/from16 v21, v1

    .line 2709
    .local v21, "topAtRest":Z
    if-eqz v17, :cond_416

    if-nez v21, :cond_416

    .line 2710
    and-int/lit8 v1, v31, 0x4

    const/high16 v23, 0x20000

    if-nez v1, :cond_3f7

    and-int/lit16 v1, v12, 0x400

    if-nez v1, :cond_3f7

    const/high16 v1, 0x4000000

    and-int/2addr v1, v12

    if-nez v1, :cond_3f7

    const/high16 v1, -0x80000000

    and-int v26, v12, v1

    if-nez v26, :cond_3f7

    and-int v1, v18, v23

    if-nez v1, :cond_3f7

    .line 2716
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v15, Landroid/graphics/Rect;->top:I

    .line 2718
    :cond_3f7
    const/high16 v1, 0x8000000

    and-int/2addr v1, v12

    if-nez v1, :cond_416

    and-int/lit8 v1, v31, 0x2

    if-nez v1, :cond_416

    const/high16 v1, -0x80000000

    and-int v26, v12, v1

    if-nez v26, :cond_416

    and-int v1, v18, v23

    if-nez v1, :cond_416

    .line 2723
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v15, Landroid/graphics/Rect;->bottom:I

    .line 2724
    iget-object v1, v8, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v15, Landroid/graphics/Rect;->right:I

    .line 2728
    :cond_416
    const/16 v2, 0x7f9

    const-string/jumbo v0, "layoutWindowLw("

    if-eqz v24, :cond_5be

    if-eqz v25, :cond_5be

    .line 2729
    sget-boolean v23, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v23, :cond_441

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_443

    :cond_441
    move-object/from16 v1, v27

    .line 2734
    :goto_443
    move-object/from16 v0, p2

    move/from16 v43, v31

    .end local v31    # "sysUiFl":I
    .local v43, "sysUiFl":I
    if-eqz v0, :cond_484

    .line 2737
    const/16 v22, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    move-object/from16 v44, v1

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move-object/from16 v26, v4

    .end local v4    # "sf":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    move-object/from16 v34, v5

    .end local v5    # "df":Landroid/graphics/Rect;
    .restart local v34    # "df":Landroid/graphics/Rect;
    move/from16 v5, v22

    move/from16 v45, v6

    .end local v6    # "type":I
    .local v45, "type":I
    move-object v6, v10

    move-object/from16 v37, v7

    .end local v7    # "cf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    move-object/from16 v7, v34

    move-object/from16 v40, v8

    .end local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    move-object/from16 v8, v37

    move-object/from16 v36, v9

    .end local v9    # "vf":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    move-object/from16 v27, v15

    move-object v15, v10

    .end local v10    # "pf":Landroid/graphics/Rect;
    .local v15, "pf":Landroid/graphics/Rect;
    .local v27, "dcf":Landroid/graphics/Rect;
    move-object/from16 v10, v40

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object v7, v11

    move v0, v12

    move-object/from16 v5, v34

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    move-object/from16 v3, v40

    move/from16 v2, v43

    move-object/from16 v12, v44

    move/from16 v8, v45

    const/4 v1, 0x1

    goto/16 :goto_8e8

    .line 2740
    .end local v26    # "sf":Landroid/graphics/Rect;
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v34    # "df":Landroid/graphics/Rect;
    .end local v36    # "vf":Landroid/graphics/Rect;
    .end local v37    # "cf":Landroid/graphics/Rect;
    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v45    # "type":I
    .restart local v4    # "sf":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    .restart local v6    # "type":I
    .restart local v7    # "cf":Landroid/graphics/Rect;
    .restart local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v9    # "vf":Landroid/graphics/Rect;
    .restart local v10    # "pf":Landroid/graphics/Rect;
    .local v15, "dcf":Landroid/graphics/Rect;
    :cond_484
    move-object/from16 v44, v1

    move-object/from16 v26, v4

    move-object/from16 v34, v5

    move/from16 v45, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move-object/from16 v36, v9

    move-object/from16 v27, v15

    move-object v15, v10

    .end local v4    # "sf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v6    # "type":I
    .end local v7    # "cf":Landroid/graphics/Rect;
    .end local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v9    # "vf":Landroid/graphics/Rect;
    .end local v10    # "pf":Landroid/graphics/Rect;
    .local v15, "pf":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v34    # "df":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v45    # "type":I
    move/from16 v10, v45

    .end local v45    # "type":I
    .local v10, "type":I
    if-eq v10, v2, :cond_4e4

    const/16 v0, 0x7e1

    if-ne v10, v0, :cond_4a5

    move-object/from16 v6, v34

    move-object/from16 v7, v40

    move/from16 v9, v43

    const/4 v8, 0x1

    goto :goto_4eb

    .line 2758
    :cond_4a5
    move/from16 v9, v43

    .end local v43    # "sysUiFl":I
    .local v9, "sysUiFl":I
    and-int/lit16 v0, v9, 0x200

    if-eqz v0, :cond_4d2

    const/4 v8, 0x1

    if-lt v10, v8, :cond_4b2

    const/16 v0, 0x7cf

    if-le v10, v0, :cond_4c0

    :cond_4b2
    const/16 v0, 0x7e4

    if-eq v10, v0, :cond_4c0

    const/16 v0, 0x7d9

    if-ne v10, v0, :cond_4bb

    goto :goto_4c0

    :cond_4bb
    move-object/from16 v6, v34

    move-object/from16 v7, v40

    goto :goto_4d7

    .line 2766
    :cond_4c0
    :goto_4c0
    move-object/from16 v7, v40

    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v7, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v6, v34

    .end local v34    # "df":Landroid/graphics/Rect;
    .local v6, "df":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2767
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v5, v44

    goto/16 :goto_53b

    .line 2758
    .end local v6    # "df":Landroid/graphics/Rect;
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v34    # "df":Landroid/graphics/Rect;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_4d2
    move-object/from16 v6, v34

    move-object/from16 v7, v40

    const/4 v8, 0x1

    .line 2769
    .end local v34    # "df":Landroid/graphics/Rect;
    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v6    # "df":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :goto_4d7
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2770
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v5, v44

    goto :goto_53b

    .line 2740
    .end local v6    # "df":Landroid/graphics/Rect;
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v9    # "sysUiFl":I
    .restart local v34    # "df":Landroid/graphics/Rect;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v43    # "sysUiFl":I
    :cond_4e4
    move-object/from16 v6, v34

    move-object/from16 v7, v40

    move/from16 v9, v43

    const/4 v8, 0x1

    .line 2747
    .end local v34    # "df":Landroid/graphics/Rect;
    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v43    # "sysUiFl":I
    .restart local v6    # "df":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v9    # "sysUiFl":I
    :goto_4eb
    if-eqz v20, :cond_4f0

    .line 2748
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    goto :goto_4f2

    :cond_4f0
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    :goto_4f2
    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iput v0, v15, Landroid/graphics/Rect;->left:I

    .line 2749
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iput v0, v15, Landroid/graphics/Rect;->top:I

    .line 2750
    if-eqz v20, :cond_507

    .line 2751
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_50b

    .line 2752
    :cond_507
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_50b
    iput v0, v6, Landroid/graphics/Rect;->right:I

    iput v0, v15, Landroid/graphics/Rect;->right:I

    .line 2753
    if-eqz v20, :cond_516

    .line 2754
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_51a

    .line 2755
    :cond_516
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_51a
    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    .line 2757
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_539

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Laying out status bar window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v44

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53b

    :cond_539
    move-object/from16 v5, v44

    .line 2773
    :goto_53b
    and-int/lit16 v0, v12, 0x400

    if-nez v0, :cond_564

    .line 2774
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_54d

    .line 2775
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v4, v37

    .end local v37    # "cf":Landroid/graphics/Rect;
    .local v4, "cf":Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_56b

    .line 2779
    .end local v4    # "cf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    :cond_54d
    move-object/from16 v4, v37

    .end local v37    # "cf":Landroid/graphics/Rect;
    .restart local v4    # "cf":Landroid/graphics/Rect;
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_55e

    const/16 v0, 0x10

    if-eq v13, v0, :cond_558

    goto :goto_55e

    .line 2783
    :cond_558
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_56b

    .line 2781
    :cond_55e
    :goto_55e
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_56b

    .line 2790
    .end local v4    # "cf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    :cond_564
    move-object/from16 v4, v37

    .end local v37    # "cf":Landroid/graphics/Rect;
    .restart local v4    # "cf":Landroid/graphics/Rect;
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2794
    :goto_56b
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_580

    .line 2796
    iget-object v0, v11, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    move-object/from16 v1, p1

    move-object v2, v15

    move-object v3, v6

    move-object/from16 v37, v4

    .end local v4    # "cf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    move/from16 v45, v10

    move-object v10, v5

    .end local v10    # "type":I
    .restart local v45    # "type":I
    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicyExt;->applyFrameInLayoutWindowLw(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_585

    .line 2794
    .end local v37    # "cf":Landroid/graphics/Rect;
    .end local v45    # "type":I
    .restart local v4    # "cf":Landroid/graphics/Rect;
    .restart local v10    # "type":I
    :cond_580
    move-object/from16 v37, v4

    move/from16 v45, v10

    move-object v10, v5

    .line 2801
    .end local v4    # "cf":Landroid/graphics/Rect;
    .end local v10    # "type":I
    .restart local v37    # "cf":Landroid/graphics/Rect;
    .restart local v45    # "type":I
    :goto_585
    move-object/from16 v5, v37

    .end local v37    # "cf":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    invoke-direct {v11, v9, v12, v5, v7}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2802
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_5a9

    const/16 v0, 0x30

    if-eq v13, v0, :cond_5a9

    .line 2804
    iget-object v0, v7, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v4, v36

    .end local v36    # "vf":Landroid/graphics/Rect;
    .local v4, "vf":Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v3, v7

    move v1, v8

    move v2, v9

    move-object v7, v11

    move v0, v12

    move/from16 v8, v45

    move-object v12, v10

    move-object/from16 v47, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v47

    goto/16 :goto_8e8

    .line 2802
    .end local v4    # "vf":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    :cond_5a9
    move-object/from16 v4, v36

    .line 2806
    .end local v36    # "vf":Landroid/graphics/Rect;
    .restart local v4    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v3, v7

    move v1, v8

    move v2, v9

    move-object v7, v11

    move v0, v12

    move/from16 v8, v45

    move-object v12, v10

    move-object/from16 v47, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v47

    goto/16 :goto_8e8

    .line 2728
    .end local v26    # "sf":Landroid/graphics/Rect;
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v45    # "type":I
    .local v4, "sf":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v6, "type":I
    .local v7, "cf":Landroid/graphics/Rect;
    .restart local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "vf":Landroid/graphics/Rect;
    .local v10, "pf":Landroid/graphics/Rect;
    .local v15, "dcf":Landroid/graphics/Rect;
    .restart local v31    # "sysUiFl":I
    :cond_5be
    move-object/from16 v26, v4

    move/from16 v45, v6

    move-object v4, v9

    move/from16 v9, v31

    move-object v6, v5

    move-object v5, v7

    move-object v7, v8

    const/4 v8, 0x1

    move-object/from16 v47, v15

    move-object v15, v10

    move-object/from16 v10, v27

    move-object/from16 v27, v47

    .line 2809
    .end local v8    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v10    # "pf":Landroid/graphics/Rect;
    .end local v31    # "sysUiFl":I
    .local v4, "vf":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    .local v6, "df":Landroid/graphics/Rect;
    .local v7, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "sysUiFl":I
    .local v15, "pf":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    .restart local v45    # "type":I
    const/16 v1, 0x7d5

    if-nez v24, :cond_719

    and-int/lit16 v3, v9, 0x600

    if-eqz v3, :cond_5e8

    move-object v3, v7

    move/from16 v46, v9

    move/from16 v28, v12

    move/from16 v11, v45

    move-object v12, v10

    move-object/from16 v47, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v47

    goto/16 :goto_727

    .line 2889
    :cond_5e8
    move-object/from16 v3, p2

    if-eqz v3, :cond_647

    .line 2890
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_60e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): attached to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :cond_60e
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move-object/from16 v36, v4

    .end local v4    # "vf":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    move-object/from16 v4, p2

    move-object/from16 v37, v5

    .end local v5    # "cf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    move/from16 v5, v22

    move-object/from16 v34, v6

    .end local v6    # "df":Landroid/graphics/Rect;
    .restart local v34    # "df":Landroid/graphics/Rect;
    move-object v6, v15

    move-object/from16 v40, v7

    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    move-object/from16 v7, v34

    move-object/from16 v8, v37

    move/from16 v46, v9

    .end local v9    # "sysUiFl":I
    .local v46, "sysUiFl":I
    move-object/from16 v9, v36

    move/from16 v28, v12

    move/from16 v11, v45

    move-object v12, v10

    .end local v12    # "fl":I
    .end local v45    # "type":I
    .local v11, "type":I
    .local v28, "fl":I
    move-object/from16 v10, v40

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/DisplayPolicy;->setAttachedWindowFrames(Lcom/android/server/wm/WindowState;IILcom/android/server/wm/WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v7, p0

    move v8, v11

    move/from16 v0, v28

    move-object/from16 v5, v34

    move-object/from16 v6, v36

    move-object/from16 v4, v37

    move-object/from16 v3, v40

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_8e8

    .line 2897
    .end local v11    # "type":I
    .end local v28    # "fl":I
    .end local v34    # "df":Landroid/graphics/Rect;
    .end local v36    # "vf":Landroid/graphics/Rect;
    .end local v37    # "cf":Landroid/graphics/Rect;
    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v46    # "sysUiFl":I
    .restart local v4    # "vf":Landroid/graphics/Rect;
    .restart local v5    # "cf":Landroid/graphics/Rect;
    .restart local v6    # "df":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v9    # "sysUiFl":I
    .restart local v12    # "fl":I
    .restart local v45    # "type":I
    :cond_647
    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v34, v6

    move-object/from16 v40, v7

    move/from16 v46, v9

    move/from16 v28, v12

    move/from16 v11, v45

    move-object v12, v10

    .end local v4    # "vf":Landroid/graphics/Rect;
    .end local v5    # "cf":Landroid/graphics/Rect;
    .end local v6    # "df":Landroid/graphics/Rect;
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v9    # "sysUiFl":I
    .end local v12    # "fl":I
    .end local v45    # "type":I
    .restart local v11    # "type":I
    .restart local v28    # "fl":I
    .restart local v34    # "df":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v46    # "sysUiFl":I
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_675

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): normal window"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_675
    if-ne v11, v2, :cond_698

    .line 2905
    move-object/from16 v3, v40

    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v3, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v4, v37

    .end local v37    # "cf":Landroid/graphics/Rect;
    .local v4, "cf":Landroid/graphics/Rect;
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2906
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v5, v34

    .end local v34    # "df":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2907
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v7, p0

    move v8, v11

    move/from16 v0, v28

    move-object/from16 v6, v36

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_8e8

    .line 2908
    .end local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v4    # "cf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .restart local v34    # "df":Landroid/graphics/Rect;
    .restart local v37    # "cf":Landroid/graphics/Rect;
    .restart local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_698
    move-object/from16 v5, v34

    move-object/from16 v4, v37

    move-object/from16 v3, v40

    .end local v34    # "df":Landroid/graphics/Rect;
    .end local v37    # "cf":Landroid/graphics/Rect;
    .end local v40    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v4    # "cf":Landroid/graphics/Rect;
    .restart local v5    # "df":Landroid/graphics/Rect;
    if-eq v11, v1, :cond_6fe

    const/16 v0, 0x7d3

    if-ne v11, v0, :cond_6a7

    move-object/from16 v6, v36

    goto :goto_700

    .line 2914
    :cond_6a7
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2915
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_6bd

    .line 2916
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2917
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6d6

    .line 2918
    :cond_6bd
    const/16 v0, 0x10

    if-eq v13, v0, :cond_6cc

    .line 2919
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2920
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6d6

    .line 2922
    :cond_6cc
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2923
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2925
    :goto_6d6
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v0, :cond_6ef

    const/16 v0, 0x30

    if-eq v13, v0, :cond_6ef

    .line 2927
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v6, v36

    .end local v36    # "vf":Landroid/graphics/Rect;
    .local v6, "vf":Landroid/graphics/Rect;
    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v7, p0

    move v8, v11

    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_8e8

    .line 2925
    .end local v6    # "vf":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    :cond_6ef
    move-object/from16 v6, v36

    .line 2929
    .end local v36    # "vf":Landroid/graphics/Rect;
    .restart local v6    # "vf":Landroid/graphics/Rect;
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v7, p0

    move v8, v11

    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_8e8

    .line 2908
    .end local v6    # "vf":Landroid/graphics/Rect;
    .restart local v36    # "vf":Landroid/graphics/Rect;
    :cond_6fe
    move-object/from16 v6, v36

    .line 2910
    .end local v36    # "vf":Landroid/graphics/Rect;
    .restart local v6    # "vf":Landroid/graphics/Rect;
    :goto_700
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2911
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2912
    iget-object v0, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v15, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v7, p0

    move v8, v11

    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_8e8

    .line 2809
    .end local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v11    # "type":I
    .end local v28    # "fl":I
    .end local v46    # "sysUiFl":I
    .local v4, "vf":Landroid/graphics/Rect;
    .local v5, "cf":Landroid/graphics/Rect;
    .local v6, "df":Landroid/graphics/Rect;
    .restart local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .restart local v9    # "sysUiFl":I
    .restart local v12    # "fl":I
    .restart local v45    # "type":I
    :cond_719
    move-object v3, v7

    move/from16 v46, v9

    move/from16 v28, v12

    move/from16 v11, v45

    move-object v12, v10

    move-object/from16 v47, v6

    move-object v6, v4

    move-object v4, v5

    move-object/from16 v5, v47

    .line 2812
    .end local v7    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v9    # "sysUiFl":I
    .end local v12    # "fl":I
    .end local v45    # "type":I
    .restart local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v4, "cf":Landroid/graphics/Rect;
    .local v5, "df":Landroid/graphics/Rect;
    .local v6, "vf":Landroid/graphics/Rect;
    .restart local v11    # "type":I
    .restart local v28    # "fl":I
    .restart local v46    # "sysUiFl":I
    :goto_727
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_746

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_746
    if-eq v11, v2, :cond_831

    const/16 v0, 0x7e1

    if-ne v11, v0, :cond_753

    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_836

    .line 2827
    :cond_753
    const/16 v0, 0x7e3

    if-eq v11, v0, :cond_809

    const/16 v0, 0x7e8

    if-ne v11, v0, :cond_762

    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_80e

    .line 2832
    :cond_762
    const/16 v0, 0x7df

    if-eq v11, v0, :cond_76e

    const/16 v0, 0x7f4

    if-ne v11, v0, :cond_76b

    goto :goto_76e

    :cond_76b
    move/from16 v0, v28

    goto :goto_788

    :cond_76e
    :goto_76e
    move/from16 v0, v28

    .end local v28    # "fl":I
    .local v0, "fl":I
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_788

    .line 2836
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2837
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2838
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_87d

    .line 2839
    :cond_788
    :goto_788
    const/16 v2, 0x7e5

    if-ne v11, v2, :cond_7a0

    .line 2841
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2842
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2843
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v2, v46

    const/4 v1, 0x1

    goto/16 :goto_87d

    .line 2844
    :cond_7a0
    move/from16 v2, v46

    .end local v46    # "sysUiFl":I
    .local v2, "sysUiFl":I
    and-int/lit16 v7, v2, 0x200

    if-eqz v7, :cond_7d2

    const/16 v7, 0x7f8

    if-eq v11, v7, :cond_7c0

    if-eq v11, v1, :cond_7c0

    const/16 v1, 0x7f2

    if-eq v11, v1, :cond_7c0

    const/16 v1, 0xa2c

    if-eq v11, v1, :cond_7c0

    const/16 v1, 0x7f1

    if-eq v11, v1, :cond_7c0

    const/4 v1, 0x1

    if-lt v11, v1, :cond_7d3

    const/16 v7, 0x7cf

    if-gt v11, v7, :cond_7d3

    goto :goto_7c1

    :cond_7c0
    const/4 v1, 0x1

    .line 2860
    :goto_7c1
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2861
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2862
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_87d

    .line 2844
    :cond_7d2
    const/4 v1, 0x1

    .line 2863
    :cond_7d3
    and-int/lit16 v7, v2, 0x400

    if-eqz v7, :cond_7f8

    .line 2864
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2865
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2869
    sget v7, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v7, :cond_7f1

    const/16 v7, 0x10

    if-eq v13, v7, :cond_7ea

    goto :goto_7f1

    .line 2873
    :cond_7ea
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_87d

    .line 2871
    :cond_7f1
    :goto_7f1
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_87d

    .line 2876
    :cond_7f8
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2877
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2878
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_87d

    .line 2827
    .end local v0    # "fl":I
    .end local v2    # "sysUiFl":I
    .restart local v28    # "fl":I
    .restart local v46    # "sysUiFl":I
    :cond_809
    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    .line 2829
    .end local v28    # "fl":I
    .end local v46    # "sysUiFl":I
    .restart local v0    # "fl":I
    .restart local v2    # "sysUiFl":I
    :goto_80e
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2830
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2831
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_87d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Laying out navigation bar window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87d

    .line 2816
    .end local v0    # "fl":I
    .end local v2    # "sysUiFl":I
    .restart local v28    # "fl":I
    .restart local v46    # "sysUiFl":I
    :cond_831
    move/from16 v0, v28

    move/from16 v2, v46

    const/4 v1, 0x1

    .line 2817
    .end local v28    # "fl":I
    .end local v46    # "sysUiFl":I
    .restart local v0    # "fl":I
    .restart local v2    # "sysUiFl":I
    :goto_836
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2818
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2819
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2820
    if-eqz v20, :cond_865

    .line 2821
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iput v7, v5, Landroid/graphics/Rect;->left:I

    iput v7, v15, Landroid/graphics/Rect;->left:I

    .line 2822
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iput v7, v5, Landroid/graphics/Rect;->right:I

    iput v7, v15, Landroid/graphics/Rect;->right:I

    .line 2823
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, v15, Landroid/graphics/Rect;->bottom:I

    .line 2826
    :cond_865
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v7, :cond_87d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Laying out IN_SCREEN status bar window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_87d
    :goto_87d
    move-object/from16 v7, p0

    move v8, v11

    .end local v11    # "type":I
    .local v8, "type":I
    invoke-direct {v7, v2, v0, v4, v3}, Lcom/android/server/wm/DisplayPolicy;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    .line 2883
    sget v9, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-nez v9, :cond_891

    const/16 v9, 0x30

    if-eq v13, v9, :cond_891

    .line 2885
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8e8

    .line 2887
    :cond_891
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8e8

    .line 2683
    .end local v0    # "fl":I
    .end local v2    # "sysUiFl":I
    .end local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v17    # "isAppWindow":Z
    .end local v21    # "topAtRest":Z
    .end local v26    # "sf":Landroid/graphics/Rect;
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .local v4, "sf":Landroid/graphics/Rect;
    .local v6, "type":I
    .local v7, "cf":Landroid/graphics/Rect;
    .local v8, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v9, "vf":Landroid/graphics/Rect;
    .restart local v10    # "pf":Landroid/graphics/Rect;
    .restart local v12    # "fl":I
    .local v15, "dcf":Landroid/graphics/Rect;
    .restart local v31    # "sysUiFl":I
    :cond_895
    move v1, v2

    move-object/from16 v26, v4

    move-object v4, v7

    move-object v3, v8

    move-object v7, v11

    move v0, v12

    move-object/from16 v12, v27

    move/from16 v2, v31

    move v8, v6

    move-object v6, v9

    move-object/from16 v27, v15

    move-object v15, v10

    .line 2684
    .end local v7    # "cf":Landroid/graphics/Rect;
    .end local v9    # "vf":Landroid/graphics/Rect;
    .end local v10    # "pf":Landroid/graphics/Rect;
    .end local v12    # "fl":I
    .end local v31    # "sysUiFl":I
    .restart local v0    # "fl":I
    .restart local v2    # "sysUiFl":I
    .restart local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .local v4, "cf":Landroid/graphics/Rect;
    .local v6, "vf":Landroid/graphics/Rect;
    .local v8, "type":I
    .local v15, "pf":Landroid/graphics/Rect;
    .restart local v26    # "sf":Landroid/graphics/Rect;
    .restart local v27    # "dcf":Landroid/graphics/Rect;
    :goto_8a5
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2685
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v15, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2686
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2687
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2689
    const/16 v9, 0x10

    if-ne v13, v9, :cond_8cc

    .line 2692
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_8e8

    .line 2693
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_8e8

    .line 2696
    :cond_8cc
    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_8da

    .line 2697
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 2699
    :cond_8da
    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_8e8

    .line 2700
    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 2935
    :cond_8e8
    :goto_8e8
    iget v9, v14, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2936
    .local v9, "cutoutMode":I
    move-object/from16 v10, p2

    if-eqz v10, :cond_8f2

    if-nez v24, :cond_8f2

    move v11, v1

    goto :goto_8f3

    :cond_8f2
    const/4 v11, 0x0

    .line 2937
    .local v11, "attachedInParent":Z
    :goto_8f3
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_911

    and-int/lit8 v1, v16, 0x4

    if-nez v1, :cond_911

    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    move/from16 v31, v2

    const/4 v2, 0x2

    .end local v2    # "sysUiFl":I
    .restart local v31    # "sysUiFl":I
    if-ne v1, v2, :cond_90e

    .line 2940
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v1

    if-nez v1, :cond_90f

    goto :goto_914

    .line 2937
    :cond_90e
    const/4 v2, 0x0

    .line 2940
    :cond_90f
    move v1, v2

    goto :goto_915

    .line 2937
    .end local v31    # "sysUiFl":I
    .restart local v2    # "sysUiFl":I
    :cond_911
    move/from16 v31, v2

    const/4 v2, 0x0

    .line 2940
    .end local v2    # "sysUiFl":I
    .restart local v31    # "sysUiFl":I
    :goto_914
    const/4 v1, 0x1

    .line 2942
    .local v1, "requestedFullscreen":Z
    :goto_915
    and-int/lit8 v17, v16, 0x2

    if-nez v17, :cond_92e

    sget v2, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    move/from16 v17, v13

    const/4 v13, 0x2

    .end local v13    # "adjust":I
    .local v17, "adjust":I
    if-ne v2, v13, :cond_92c

    .line 2945
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v2

    if-nez v2, :cond_92c

    goto :goto_930

    :cond_92c
    const/4 v2, 0x0

    goto :goto_931

    .line 2942
    .end local v17    # "adjust":I
    .restart local v13    # "adjust":I
    :cond_92e
    move/from16 v17, v13

    .line 2945
    .end local v13    # "adjust":I
    .restart local v17    # "adjust":I
    :goto_930
    const/4 v2, 0x1

    .line 2950
    .local v2, "requestedHideNavigation":Z
    :goto_931
    invoke-virtual {v14}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v13

    if-nez v13, :cond_93e

    if-eqz v24, :cond_93e

    const/4 v13, 0x1

    if-eq v8, v13, :cond_93e

    const/4 v13, 0x1

    goto :goto_93f

    :cond_93e
    const/4 v13, 0x0

    .line 2955
    .local v13, "floatingInScreenWindow":Z
    :goto_93f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v21

    if-eqz v21, :cond_94d

    move-object/from16 v44, v12

    move-object/from16 v21, v14

    move-object/from16 v14, v39

    goto/16 :goto_9e3

    .line 2958
    :cond_94d
    move-object/from16 v44, v12

    const/4 v12, 0x3

    if-eq v9, v12, :cond_9df

    .line 2959
    sget-object v12, Lcom/android/server/wm/DisplayPolicy;->sTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 2960
    .local v12, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    iget-object v10, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2961
    const/4 v10, 0x1

    if-ne v9, v10, :cond_978

    .line 2962
    iget v10, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    move-object/from16 v21, v14

    .end local v14    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v21, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v14, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    if-ge v10, v14, :cond_96e

    .line 2963
    const/high16 v10, -0x80000000

    iput v10, v12, Landroid/graphics/Rect;->top:I

    .line 2964
    const v14, 0x7fffffff

    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_97a

    .line 2966
    :cond_96e
    const/high16 v10, -0x80000000

    const v14, 0x7fffffff

    iput v10, v12, Landroid/graphics/Rect;->left:I

    .line 2967
    iput v14, v12, Landroid/graphics/Rect;->right:I

    goto :goto_97a

    .line 2961
    .end local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v14    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_978
    move-object/from16 v21, v14

    .line 2971
    .end local v14    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_97a
    if-eqz v24, :cond_989

    if-eqz v25, :cond_989

    if-nez v1, :cond_989

    if-eqz v9, :cond_985

    const/4 v10, 0x1

    if-ne v9, v10, :cond_989

    .line 2978
    :cond_985
    const/high16 v10, -0x80000000

    iput v10, v12, Landroid/graphics/Rect;->top:I

    .line 2980
    :cond_989
    if-eqz v24, :cond_9b1

    if-eqz v25, :cond_9b1

    if-nez v2, :cond_9b1

    if-eqz v9, :cond_995

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9b1

    goto :goto_996

    :cond_995
    const/4 v10, 0x1

    .line 2984
    :goto_996
    iget v14, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-eq v14, v10, :cond_9ad

    const/4 v10, 0x2

    if-eq v14, v10, :cond_9a7

    const/4 v10, 0x4

    if-eq v14, v10, :cond_9a1

    goto :goto_9b1

    .line 2986
    :cond_9a1
    const v10, 0x7fffffff

    iput v10, v12, Landroid/graphics/Rect;->bottom:I

    .line 2987
    goto :goto_9b1

    .line 2989
    :cond_9a7
    const v10, 0x7fffffff

    iput v10, v12, Landroid/graphics/Rect;->right:I

    .line 2990
    goto :goto_9b1

    .line 2992
    :cond_9ad
    const/high16 v10, -0x80000000

    iput v10, v12, Landroid/graphics/Rect;->left:I

    .line 2996
    :cond_9b1
    :goto_9b1
    const/16 v10, 0x7db

    if-ne v8, v10, :cond_9bf

    iget v10, v7, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    const/4 v14, 0x4

    if-ne v10, v14, :cond_9bf

    .line 2998
    const v10, 0x7fffffff

    iput v10, v12, Landroid/graphics/Rect;->bottom:I

    .line 3005
    :cond_9bf
    if-nez v11, :cond_9d9

    if-nez v13, :cond_9d9

    .line 3006
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3007
    invoke-virtual {v15, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3008
    sget-object v10, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v14, 0x1

    xor-int/2addr v10, v14

    move-object/from16 v14, v39

    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v14, "windowFrames":Lcom/android/server/wm/WindowFrames;
    invoke-virtual {v14, v10}, Lcom/android/server/wm/WindowFrames;->setParentFrameWasClippedByDisplayCutout(Z)V

    goto :goto_9db

    .line 3005
    .end local v14    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_9d9
    move-object/from16 v14, v39

    .line 3012
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v14    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :goto_9db
    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_9e3

    .line 2958
    .end local v12    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .end local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v14, "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    :cond_9df
    move-object/from16 v21, v14

    move-object/from16 v14, v39

    .line 3016
    .end local v39    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .local v14, "windowFrames":Lcom/android/server/wm/WindowFrames;
    .restart local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_9e3
    nop

    .line 3017
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v10

    if-nez v10, :cond_9fd

    iget-object v10, v7, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    .line 3019
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/server/wm/MultiStarController;->isOverlapNotchLocked(Lcom/android/server/wm/Task;)Z

    move-result v10

    if-eqz v10, :cond_9fb

    goto :goto_9fd

    :cond_9fb
    const/4 v10, 0x0

    goto :goto_9fe

    :cond_9fd
    :goto_9fd
    const/4 v10, 0x1

    .line 3020
    .local v10, "allowCutoutArea":Z
    :goto_9fe
    if-nez v10, :cond_a05

    .line 3023
    iget-object v12, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v4, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3042
    :cond_a05
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_a37

    const/16 v12, 0x7da

    if-eq v8, v12, :cond_a37

    .line 3043
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v12

    if-nez v12, :cond_a37

    .line 3044
    const/16 v12, -0x2710

    iput v12, v5, Landroid/graphics/Rect;->top:I

    iput v12, v5, Landroid/graphics/Rect;->left:I

    .line 3045
    const/16 v12, 0x2710

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    iput v12, v5, Landroid/graphics/Rect;->right:I

    .line 3046
    const/16 v12, 0x7dd

    if-eq v8, v12, :cond_a37

    .line 3047
    const/16 v12, -0x2710

    iput v12, v6, Landroid/graphics/Rect;->top:I

    iput v12, v6, Landroid/graphics/Rect;->left:I

    iput v12, v4, Landroid/graphics/Rect;->top:I

    iput v12, v4, Landroid/graphics/Rect;->left:I

    .line 3048
    const/16 v12, 0x2710

    iput v12, v6, Landroid/graphics/Rect;->bottom:I

    iput v12, v6, Landroid/graphics/Rect;->right:I

    iput v12, v4, Landroid/graphics/Rect;->bottom:I

    iput v12, v4, Landroid/graphics/Rect;->right:I

    .line 3052
    :cond_a37
    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v12, :cond_ad4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p3, v1

    .end local v1    # "requestedFullscreen":Z
    .local p3, "requestedFullscreen":Z
    const-string v1, "Compute frame "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": sim=#"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attach="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    const/4 v1, 0x1

    .end local v2    # "requestedHideNavigation":Z
    .local v19, "requestedHideNavigation":Z
    new-array v2, v1, [Ljava/lang/Object;

    .line 3055
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v22, 0x0

    aput-object v1, v2, v22

    const-string v1, " flags=0x%08x"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pf="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3056
    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " df="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cf="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " vf="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dcf="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3058
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sf="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3052
    move-object/from16 v2, v44

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad8

    .end local v19    # "requestedHideNavigation":Z
    .end local p3    # "requestedFullscreen":Z
    .restart local v1    # "requestedFullscreen":Z
    .restart local v2    # "requestedHideNavigation":Z
    :cond_ad4
    move/from16 p3, v1

    move/from16 v19, v2

    .line 3061
    .end local v1    # "requestedFullscreen":Z
    .end local v2    # "requestedHideNavigation":Z
    .restart local v19    # "requestedHideNavigation":Z
    .restart local p3    # "requestedFullscreen":Z
    :goto_ad8
    sget-object v1, Lcom/android/server/wm/DisplayPolicy;->sTmpLastParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae4

    .line 3062
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 3065
    :cond_ae4
    move-object/from16 v1, p1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowState;->computeFrame(Lcom/android/server/wm/DisplayFrames;)V

    .line 3068
    const/16 v2, 0x7db

    if-eq v8, v2, :cond_af1

    const/16 v2, 0x960

    if-ne v8, v2, :cond_b00

    .line 3072
    :cond_af1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_b00

    .line 3073
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_b00

    .line 3074
    invoke-direct {v7, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->offsetInputMethodWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 3076
    :cond_b00
    const/16 v2, 0x7ef

    if-ne v8, v2, :cond_b13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_b13

    .line 3077
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-nez v2, :cond_b13

    .line 3078
    invoke-direct {v7, v1, v3}, Lcom/android/server/wm/DisplayPolicy;->offsetVoiceInputWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 3080
    :cond_b13
    return-void

    .line 2537
    .end local v0    # "fl":I
    .end local v3    # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v4    # "cf":Landroid/graphics/Rect;
    .end local v5    # "df":Landroid/graphics/Rect;
    .end local v6    # "vf":Landroid/graphics/Rect;
    .end local v8    # "type":I
    .end local v9    # "cutoutMode":I
    .end local v10    # "allowCutoutArea":Z
    .end local v11    # "attachedInParent":Z
    .end local v13    # "floatingInScreenWindow":Z
    .end local v14    # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v15    # "pf":Landroid/graphics/Rect;
    .end local v16    # "requestedSysUiFl":I
    .end local v17    # "adjust":I
    .end local v18    # "pfl":I
    .end local v19    # "requestedHideNavigation":Z
    .end local v20    # "hasNavBar":Z
    .end local v21    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v24    # "layoutInScreen":Z
    .end local v25    # "layoutInsetDecor":Z
    .end local v26    # "sf":Landroid/graphics/Rect;
    .end local v27    # "dcf":Landroid/graphics/Rect;
    .end local v30    # "sim":I
    .end local v31    # "sysUiFl":I
    .local p3, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    :cond_b14
    move-object/from16 v0, p3

    move-object v7, v11

    move-object v1, v12

    .line 2539
    :goto_b18
    return-void
.end method

.method public navigationBarCanMove()Z
    .registers 2

    .line 897
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    return v0
.end method

.method navigationBarPosition(III)I
    .registers 6
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .line 3865
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_11

    if-le p1, p2, :cond_11

    .line 3866
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p3, v0, :cond_d

    .line 3867
    return v1

    .line 3868
    :cond_d
    if-ne p3, v1, :cond_11

    .line 3869
    const/4 v0, 0x2

    return v0

    .line 3872
    :cond_11
    const/4 v0, 0x4

    return v0
.end method

.method notifyDisplayReady()V
    .registers 3

    .line 3640
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$P8D337iYIcX04InNbwQCJWD0nmU;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3649
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 10

    .line 3432
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 3434
    .local v0, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3435
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getPortraitRotation()I

    move-result v2

    .line 3436
    .local v2, "portraitRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getUpsideDownRotation()I

    move-result v3

    .line 3437
    .local v3, "upsideDownRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getLandscapeRotation()I

    move-result v4

    .line 3438
    .local v4, "landscapeRotation":I
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getSeascapeRotation()I

    move-result v5

    .line 3439
    .local v5, "seascapeRotation":I
    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy;->getUiMode()I

    move-result v6

    .line 3441
    .local v6, "uiMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->hasStatusBar()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 3442
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050433

    .line 3444
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3445
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const v8, 0x1050432

    .line 3447
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    goto :goto_4e

    .line 3449
    :cond_43
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarHeightForRotation:[I

    const/4 v8, 0x0

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3472
    :goto_4e
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501f0

    .line 3474
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3475
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarHeightForRotationDefault:[I

    const v8, 0x10501f2

    .line 3477
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3480
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ec

    .line 3482
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3483
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameHeightForRotationDefault:[I

    const v8, 0x10501ed

    .line 3485
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    .line 3490
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarWidthForRotationDefault:[I

    const v8, 0x10501f5

    .line 3494
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3498
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarFrameWidthForRotationDefault:[I

    const v8, 0x10501ee

    .line 3502
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    aput v8, v7, v5

    aput v8, v7, v4

    aput v8, v7, v3

    aput v8, v7, v2

    .line 3523
    const v7, 0x10e00b2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavBarOpacityMode:I

    .line 3524
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mLeftGestureInset:I

    .line 3525
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mRightGestureInset:I

    .line 3526
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 3527
    invoke-virtual {v7}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavButtonForcedVisible:Z

    .line 3528
    const v7, 0x11100af

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarLetsThroughTaps:Z

    .line 3529
    const v7, 0x11100ab

    .line 3530
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarAlwaysShowOnSideGesture:Z

    .line 3536
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 3537
    invoke-virtual {v7, v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getBottomSensitivity(Landroid/content/res/Resources;)I

    move-result v7

    .line 3538
    invoke-direct {p0, v2, v6}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBarFrameHeight(II)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mBottomGestureAdditionalInset:I

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateConfigurationAndScreenSizeDependentBehaviors()V

    .line 3549
    const v7, 0x10501e3

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40200000    # 2.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    .line 3553
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v7}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 3558
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicyExt;->onConfigurationChanged()V

    .line 3560
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .registers 3
    .param p1, "lockTaskState"    # I

    .line 4867
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    .line 4868
    return-void
.end method

.method public onOverlayChangedLw()V
    .registers 4

    .line 3420
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3421
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 3422
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 3424
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ResourcesManager;->setDisplayPolicyResources(Landroid/content/res/Resources;I)V

    .line 3426
    return-void
.end method

.method onPowerKeyDown(Z)V
    .registers 8
    .param p1, "isScreenOn"    # Z

    .line 4845
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 4846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayPolicy;->isImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4847
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->isNavBarEmpty(I)Z

    move-result v5

    .line 4845
    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    .line 4848
    .local v0, "panic":Z
    if-eqz v0, :cond_20

    .line 4849
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4851
    :cond_20
    return-void
.end method

.method onVrStateChangedLw(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 4854
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->onVrStateChangedLw(Z)V

    .line 4855
    return-void
.end method

.method release()V
    .registers 4

    .line 5091
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$neohyhAIBSbDm4hUahIEOo5bYNY;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5092
    return-void
.end method

.method removeWindowLw(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 1557
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_13

    .line 1564
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 1565
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBarController:Lcom/android/server/wm/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StatusBarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1566
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_38

    .line 1568
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_25

    .line 1575
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 1576
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarController:Lcom/android/server/wm/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BarController;->setWindow(Lcom/android/server/wm/WindowState;)V

    .line 1577
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/DisplayContent;->setInsetProvider(ILcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V

    goto :goto_38

    .line 1579
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_38

    .line 1586
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 1587
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_38

    .line 1588
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setKeyguardCandidateLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 1605
    :cond_38
    :goto_38
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_3e

    .line 1606
    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    .line 1608
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1610
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 1612
    return-void
.end method

.method requestTransientTaskBar()V
    .registers 2

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->requestTransientBars(Lcom/android/server/wm/WindowState;)V

    .line 571
    :cond_f
    return-void
.end method

.method resetSystemUiVisibilityLw()V
    .registers 2

    .line 4057
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4058
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemUiVisibilityLw()I

    .line 4059
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .line 951
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 953
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 954
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 955
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 956
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 957
    monitor-exit v0

    .line 958
    return-void

    .line 957
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public screenTurnedOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 4
    .param p1, "screenOnListener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 937
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    .line 939
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnFully:Z

    .line 940
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mKeyguardDrawComplete:Z

    .line 941
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mWindowManagerDrawComplete:Z

    .line 945
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    .line 947
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method selectAnimation(Lcom/android/server/wm/WindowState;I)I
    .registers 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "transit"    # I

    .line 1652
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectAnimation in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": transit="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayPolicyExt;->selectAnimationLw(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    .line 1656
    .local v0, "result":I
    if-eqz v0, :cond_2c

    return v0

    .line 1659
    :cond_2c
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-ne p1, v2, :cond_46

    .line 1660
    if-eq p2, v7, :cond_42

    if-ne p2, v6, :cond_3a

    goto :goto_42

    .line 1663
    :cond_3a
    if-eq p2, v5, :cond_3e

    if-ne p2, v4, :cond_9c

    .line 1665
    :cond_3e
    const v1, 0x10a003c

    return v1

    .line 1662
    :cond_42
    :goto_42
    const v1, 0x10a003d

    return v1

    .line 1667
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_9c

    .line 1668
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_53

    .line 1669
    return v3

    .line 1672
    :cond_53
    iget v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-ne v2, v6, :cond_76

    .line 1673
    if-eq p2, v7, :cond_64

    if-ne p2, v6, :cond_5c

    goto :goto_64

    .line 1680
    :cond_5c
    if-eq p2, v5, :cond_60

    if-ne p2, v4, :cond_9c

    .line 1682
    :cond_60
    const v1, 0x10a0035

    return v1

    .line 1675
    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1676
    const v1, 0x10a0037

    return v1

    .line 1678
    :cond_72
    const v1, 0x10a0036

    return v1

    .line 1684
    :cond_76
    if-ne v2, v7, :cond_89

    .line 1685
    if-eq p2, v7, :cond_85

    if-ne p2, v6, :cond_7d

    goto :goto_85

    .line 1688
    :cond_7d
    if-eq p2, v5, :cond_81

    if-ne p2, v4, :cond_9c

    .line 1690
    :cond_81
    const v1, 0x10a003a

    return v1

    .line 1687
    :cond_85
    :goto_85
    const v1, 0x10a003b

    return v1

    .line 1692
    :cond_89
    if-ne v2, v5, :cond_9c

    .line 1693
    if-eq p2, v7, :cond_98

    if-ne p2, v6, :cond_90

    goto :goto_98

    .line 1696
    :cond_90
    if-eq p2, v5, :cond_94

    if-ne p2, v4, :cond_9c

    .line 1698
    :cond_94
    const v1, 0x10a0038

    return v1

    .line 1695
    :cond_98
    :goto_98
    const v1, 0x10a0039

    return v1

    .line 1703
    :cond_9c
    const/4 v2, 0x5

    if-ne p2, v2, :cond_ba

    .line 1704
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasAppShownWindows()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 1705
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 1708
    const/4 v1, -0x1

    return v1

    .line 1710
    :cond_ad
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_b6

    const-string v2, "**** STARTING EXIT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_b6
    const v1, 0x10a0017

    return v1

    .line 1715
    :cond_ba
    return v3
.end method

.method public setAwake(Z)V
    .registers 2
    .param p1, "awake"    # Z

    .line 909
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mAwake:Z

    .line 910
    return-void
.end method

.method public setControlTargetToNotificationShade()V
    .registers 4

    .line 4063
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    .line 4064
    .local v0, "notificationShade":Lcom/android/server/wm/WindowState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set ControlTarget to NotificationShade="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    if-eqz v0, :cond_24

    .line 4066
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 4068
    :cond_24
    return-void
.end method

.method public setDockMode(I)V
    .registers 2
    .param p1, "dockMode"    # I

    .line 854
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDockMode:I

    .line 855
    return-void
.end method

.method public setForceHideKeyguard(ZI)V
    .registers 9
    .param p1, "hide"    # Z
    .param p2, "timeout"    # I

    .line 5254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForceHideKeyguard, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5256
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_97

    .line 5257
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceHideKeyguard:Z

    .line 5258
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 5259
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    if-eqz p1, :cond_66

    .line 5260
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    iget-object v2, v2, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/DisplayArea$Root;

    iget-object v2, v2, Lcom/android/server/wm/DisplayArea$Root;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    .line 5261
    .local v3, "da":Lcom/android/server/wm/DisplayArea;
    iget-object v4, v3, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v5, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne v4, v5, :cond_5e

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayAreaPolicy;->mImeContainer:Lcom/android/server/wm/DisplayArea;

    if-eq v3, v4, :cond_5e

    .line 5263
    iget-object v4, v3, Lcom/android/server/wm/DisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5265
    .end local v3    # "da":Lcom/android/server/wm/DisplayArea;
    :cond_5e
    goto :goto_3f

    .line 5266
    :cond_5f
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    int-to-long v3, p2

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_97

    .line 5268
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/DisplayArea$Root;

    iget-object v1, v1, Lcom/android/server/wm/DisplayArea$Root;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayArea;

    .line 5269
    .local v2, "da":Lcom/android/server/wm/DisplayArea;
    iget-object v3, v2, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v4, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne v3, v4, :cond_91

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayAreaPolicy;->mImeContainer:Lcom/android/server/wm/DisplayArea;

    if-eq v2, v3, :cond_91

    .line 5271
    iget-object v3, v2, Lcom/android/server/wm/DisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5273
    .end local v2    # "da":Lcom/android/server/wm/DisplayArea;
    :cond_91
    goto :goto_72

    .line 5274
    :cond_92
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 5277
    .end local v0    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_97
    :goto_97
    return-void
.end method

.method setForceShowSystemBars(Z)V
    .registers 2
    .param p1, "forceShowSystemBars"    # Z

    .line 865
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBarsFromExternal:Z

    .line 866
    return-void
.end method

.method public setForwardedInsets(Landroid/graphics/Insets;)V
    .registers 2
    .param p1, "forwardedInsets"    # Landroid/graphics/Insets;

    .line 3855
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mForwardedInsets:Landroid/graphics/Insets;

    .line 3856
    return-void
.end method

.method public setGearVrPersistentVrMode(Z)V
    .registers 2
    .param p1, "gearVrPersistentVrMode"    # Z

    .line 5168
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mGearVrPersistentVrMode:Z

    .line 5169
    return-void
.end method

.method public setHdmiPlugged(Z)V
    .registers 3
    .param p1, "plugged"    # Z

    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    .line 820
    return-void
.end method

.method public setHdmiPlugged(ZZ)V
    .registers 6
    .param p1, "plugged"    # Z
    .param p2, "force"    # Z

    .line 823
    if-nez p2, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_27

    .line 824
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mHdmiPlugged:Z

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 828
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 829
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 831
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    return-void
.end method

.method public setLidState(I)V
    .registers 2
    .param p1, "lidState"    # I

    .line 901
    iput p1, p0, Lcom/android/server/wm/DisplayPolicy;->mLidState:I

    .line 902
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .registers 2
    .param p1, "persistentVrModeEnabled"    # Z

    .line 846
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayPolicy;->mPersistentVrModeEnabled:Z

    .line 847
    return-void
.end method

.method setPointerLocationEnabled(Z)V
    .registers 4
    .param p1, "pointerLocationEnabled"    # Z

    .line 5028
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->supportsPointerLocation()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5029
    return-void

    .line 5032
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 5033
    const/4 v1, 0x4

    goto :goto_e

    :cond_d
    const/4 v1, 0x5

    .line 5032
    :goto_e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5034
    return-void
.end method

.method public setVrImmersiveMode(Z)V
    .registers 3
    .param p1, "vrImmersiveMode"    # Z

    .line 5176
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->updateVrImmersiveMode(Z)V

    .line 5177
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->setVrImmersiveMode(Z)V

    .line 5178
    return-void
.end method

.method simulateLayoutDisplay(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Landroid/util/SparseArray;)V
    .registers 12
    .param p1, "displayFrames"    # Lcom/android/server/wm/DisplayFrames;
    .param p2, "insetsState"    # Landroid/view/InsetsState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayFrames;",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1957
    .local p3, "barContentFrames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    .line 1958
    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->updateInsetsStateForDisplayCutout(Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;)V

    .line 1959
    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 1960
    new-instance v0, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v0}, Lcom/android/server/wm/WindowFrames;-><init>()V

    .line 1961
    .local v0, "simulatedWindowFrames":Lcom/android/server/wm/WindowFrames;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_21

    .line 1962
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$1TxdQHesEg9Mz_zNwLN_fdFgqjI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1969
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_32

    .line 1970
    new-instance v7, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;

    invoke-direct {v7, p0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ePpxrnu8spSORwTpXUqHSB2nbVI;-><init>(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayFrames;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DisplayPolicy;->simulateLayoutDecorWindow(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;Landroid/view/InsetsState;Lcom/android/server/wm/WindowFrames;Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1975
    :cond_32
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowFrames;)V

    .line 1976
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayPolicy;->postAdjustDisplayFrames(Lcom/android/server/wm/DisplayFrames;)V

    .line 1977
    return-void
.end method

.method public switchUser()V
    .registers 1

    .line 3413
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 3414
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->systemReady()V

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mPointerLocationEnabled:Z

    if-eqz v0, :cond_f

    .line 804
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    .line 809
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->systemReady()V

    .line 812
    return-void
.end method

.method public takeScreenshot(II)V
    .registers 10
    .param p1, "screenshotType"    # I
    .param p2, "source"    # I

    .line 4879
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_29

    .line 4880
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    .line 4881
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1f

    .line 4882
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    nop

    :goto_20
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    .line 4880
    move v1, p1

    move v2, v4

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 4885
    :cond_29
    return-void
.end method

.method topAppHidesStatusBar()Z
    .registers 9

    .line 3392
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayPolicy;->mForceShowSystemBars:Z

    if-eqz v2, :cond_a

    goto :goto_71

    .line 3395
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3396
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 3397
    .local v3, "fl":I
    invoke-static {v2, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    .line 3398
    .local v2, "sysui":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v4

    .line 3399
    invoke-virtual {v4, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 3400
    .local v4, "request":Landroid/view/InsetsSource;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_5d

    .line 3401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frame: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attr: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " request: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    :cond_5d
    and-int/lit16 v5, v3, 0x400

    if-nez v5, :cond_6f

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_6f

    if-eqz v4, :cond_6e

    .line 3406
    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v5

    if-nez v5, :cond_6e

    goto :goto_6f

    :cond_6e
    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    .line 3404
    :goto_70
    return v1

    .line 3393
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "sysui":I
    .end local v3    # "fl":I
    .end local v4    # "request":Landroid/view/InsetsSource;
    :cond_71
    :goto_71
    return v1
.end method

.method updateConfigurationAndScreenSizeDependentBehaviors()V
    .registers 7

    .line 3563
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3564
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-eq v1, v2, :cond_1d

    const v1, 0x11100ac

    .line 3566
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_NAVBAR_MOVABLE_POLICY:Z

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarCanMove:Z

    .line 3570
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayRotation;->updateUserDependentConfiguration(Landroid/content/res/Resources;)V

    .line 3573
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DisplayPolicyExt;->updateConfigurationAndScreenSizeDependentBehaviors(IIII)V

    .line 3577
    return-void
.end method

.method updateDisplayOverrideConfiguration()V
    .registers 4

    .line 5241
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5242
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 5243
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->computeScreenConfiguration(Landroid/content/res/Configuration;)V

    .line 5244
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5245
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mUiContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 5246
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->onConfigurationChanged()V

    .line 5247
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mSystemGestures:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-virtual {v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->onConfigurationChanged()V

    .line 5248
    return-void
.end method

.method updateHideNavInputEventReceiver()V
    .registers 13

    .line 2041
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 2042
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 2044
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    goto :goto_14

    :cond_13
    move-object v3, v2

    .line 2046
    .local v3, "navControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :goto_14
    instance-of v4, v3, Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1c

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowState;

    goto :goto_1d

    :cond_1c
    move-object v4, v2

    .line 2047
    .local v4, "navControllingWin":Lcom/android/server/wm/WindowState;
    :goto_1d
    if-eqz v4, :cond_24

    .line 2048
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v5

    goto :goto_25

    :cond_24
    move-object v5, v2

    .line 2049
    .local v5, "requestedState":Landroid/view/InsetsState;
    :goto_25
    if-eqz v5, :cond_2c

    .line 2050
    invoke-virtual {v5, v1}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v6

    goto :goto_30

    .line 2051
    :cond_2c
    invoke-static {v1}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v6

    :goto_30
    nop

    .line 2052
    .local v6, "navVisible":Z
    const/4 v7, 0x0

    if-eqz v4, :cond_3d

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v8, v8, Landroid/view/InsetsFlags;->behavior:I

    if-nez v8, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v7

    .line 2057
    .local v1, "showBarsByTouch":Z
    :goto_3e
    const-string v8, "WindowManager"

    if-nez v6, :cond_7b

    if-nez v1, :cond_45

    goto :goto_7b

    .line 2071
    :cond_45
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_9f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_9f

    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2072
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    .line 2073
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    new-instance v10, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$ZFWTJnn7zmeQfZ_Zmm9GNRwaSo8;-><init>(Lcom/android/server/wm/DisplayPolicy;)V

    .line 2072
    const-string/jumbo v11, "nav_input_consumer"

    invoke-virtual {v2, v9, v11, v10}, Lcom/android/server/wm/InputMonitor;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2076
    const-string/jumbo v2, "nav_input_consumer created."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_9f

    .line 2058
    :cond_7b
    :goto_7b
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v7, :cond_9f

    .line 2059
    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 2060
    iget-object v7, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2061
    invoke-virtual {v7, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2060
    invoke-virtual {v7, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2062
    iput-object v2, p0, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    .line 2063
    const-string/jumbo v2, "nav_input_consumer dismissed."

    invoke-static {v8, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/16 v7, 0x3e8

    invoke-virtual {v2, v7}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 2081
    :cond_9f
    :goto_9f
    return-void
.end method

.method updateSystemUiVisibilityLw()I
    .registers 36

    .line 4074
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_7

    goto :goto_9

    .line 4075
    :cond_7
    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_9
    nop

    .line 4076
    .local v0, "winCandidate":Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    if-nez v0, :cond_e

    .line 4077
    return v6

    .line 4082
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_47

    .line 4087
    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_29

    .line 4088
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v7

    goto :goto_2a

    :cond_29
    move v1, v6

    .line 4089
    .local v1, "lastFocusCanReceiveKeys":Z
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    goto :goto_40

    .line 4090
    :cond_39
    if-eqz v1, :cond_3e

    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFocusedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_40

    .line 4091
    :cond_3e
    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    :goto_40
    move-object v0, v2

    .line 4092
    if-nez v0, :cond_44

    .line 4093
    return v6

    .line 4092
    :cond_44
    move-object/from16 v18, v0

    goto :goto_49

    .line 4082
    .end local v1    # "lastFocusCanReceiveKeys":Z
    :cond_47
    move-object/from16 v18, v0

    .line 4096
    .end local v0    # "winCandidate":Lcom/android/server/wm/WindowState;
    .local v18, "winCandidate":Lcom/android/server/wm/WindowState;
    :goto_49
    move-object/from16 v13, v18

    .line 4097
    .local v13, "win":Lcom/android/server/wm/WindowState;
    iput-object v13, v14, Lcom/android/server/wm/DisplayPolicy;->mSystemUiControllingWindow:Lcom/android/server/wm/WindowState;

    .line 4099
    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 4101
    const/4 v0, 0x0

    invoke-static {v13, v0}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v1, v14, Lcom/android/server/wm/DisplayPolicy;->mResettingSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iget v1, v14, Lcom/android/server/wm/DisplayPolicy;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 4104
    .local v0, "tmpVisibility":I
    iget-boolean v1, v14, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBar:Z

    if-eqz v1, :cond_78

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getSurfaceLayer()I

    move-result v1

    iget v2, v14, Lcom/android/server/wm/DisplayPolicy;->mForcingShowNavBarLayer:I

    if-ge v1, v2, :cond_78

    .line 4105
    const/4 v1, 0x7

    .line 4106
    invoke-static {v13, v1}, Lcom/android/server/wm/PolicyControl;->adjustClearableFlags(Lcom/android/server/wm/WindowState;I)I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    move v12, v0

    goto :goto_79

    .line 4109
    :cond_78
    move v12, v0

    .end local v0    # "tmpVisibility":I
    .local v12, "tmpVisibility":I
    :goto_79
    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v14, v6, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v11

    .line 4111
    .local v11, "fullscreenAppearance":I
    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    invoke-direct {v14, v6, v0, v1}, Lcom/android/server/wm/DisplayPolicy;->updateLightStatusBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v10

    .line 4113
    .local v10, "dockedAppearance":I
    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 4114
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v19

    .line 4115
    .local v19, "inSplitScreen":Z
    const/4 v0, 0x3

    if-eqz v19, :cond_a0

    .line 4116
    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v7, v2}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    goto :goto_a5

    .line 4119
    :cond_a0
    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 4121
    :goto_a5
    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v19, :cond_ab

    const/4 v2, 0x4

    goto :goto_ac

    .line 4122
    :cond_ab
    move v2, v7

    :goto_ac
    iget-object v3, v14, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 4121
    invoke-virtual {v1, v2, v6, v3}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 4124
    iget v1, v14, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4125
    invoke-direct {v14, v13, v1, v12}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarsLw(Lcom/android/server/wm/WindowState;II)Landroid/util/Pair;

    move-result-object v9

    .line 4126
    .local v9, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4127
    .local v8, "visibility":I
    iget-object v1, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Lcom/android/server/wm/WindowState;

    .line 4128
    .local v15, "navColorWin":Lcom/android/server/wm/WindowState;
    if-eqz v15, :cond_cf

    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v15, v1, :cond_cf

    move/from16 v16, v7

    goto :goto_d1

    :cond_cf
    move/from16 v16, v6

    .line 4130
    .local v16, "isNavbarColorManagedByIme":Z
    :goto_d1
    invoke-static {v8}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v1

    and-int/lit8 v20, v1, 0x3

    .line 4133
    .local v20, "opaqueAppearance":I
    const/4 v0, -0x1

    .line 4134
    .local v0, "appearanceBySystem":I
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BLUR_WALLPAPER_BACKGROUND_APPEARANCE:Z

    if-eqz v1, :cond_f6

    .line 4135
    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    .line 4136
    .local v1, "opaque":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_f6

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_f6

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4137
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isBlurWallpaperBackgroundTarget()Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 4138
    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3, v7, v7}, Lcom/android/server/wm/DisplayPolicyExt;->getBlurWallpaperBackgroundAppearance(Lcom/android/server/wm/ActivityRecord;ZZ)I

    move-result v0

    move v5, v0

    goto :goto_f7

    .line 4142
    .end local v1    # "opaque":Lcom/android/server/wm/WindowState;
    :cond_f6
    move v5, v0

    .end local v0    # "appearanceBySystem":I
    .local v5, "appearanceBySystem":I
    :goto_f7
    const/4 v0, -0x1

    if-ne v5, v0, :cond_104

    .line 4145
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v1, Landroid/view/InsetsFlags;->appearance:I

    and-int/lit16 v2, v2, -0xc1

    iput v2, v1, Landroid/view/InsetsFlags;->appearance:I

    .line 4151
    :cond_104
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_BLUR_WALLPAPER_BACKGROUND_APPEARANCE:Z

    const/4 v4, 0x2

    if-eqz v1, :cond_10f

    if-eq v5, v0, :cond_10f

    .line 4152
    move v6, v4

    move/from16 v23, v5

    goto :goto_145

    .line 4154
    :cond_10f
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-ne v0, v4, :cond_13e

    .line 4162
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v0, Landroid/view/InsetsFlags;->appearance:I

    iget-object v2, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueWindowState:Lcom/android/server/wm/WindowState;

    iget-object v3, v14, Lcom/android/server/wm/DisplayPolicy;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/wm/WindowState;

    iget-object v0, v14, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4160
    iget-object v4, v14, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v7, v15}, Lcom/android/server/wm/DisplayPolicyExt;->canBeNavColorWinLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 4161
    iget-object v4, v14, Lcom/android/server/wm/DisplayPolicy;->mFocusedWindow:Lcom/android/server/wm/WindowState;

    move-object v7, v4

    goto :goto_130

    .line 4162
    :cond_12f
    move-object v7, v15

    .line 4155
    :goto_130
    move-object v4, v0

    move-object/from16 v0, p0

    const/4 v6, 0x2

    move/from16 v23, v5

    .end local v5    # "appearanceBySystem":I
    .local v23, "appearanceBySystem":I
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/DisplayPolicy;->updateLightNavigationBarAppearanceLw(ILcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    or-int v5, v0, v20

    goto :goto_145

    .line 4163
    .end local v23    # "appearanceBySystem":I
    .restart local v5    # "appearanceBySystem":I
    :cond_13e
    move v6, v4

    move/from16 v23, v5

    .end local v5    # "appearanceBySystem":I
    .restart local v23    # "appearanceBySystem":I
    invoke-static {v8}, Landroid/view/InsetsFlags;->getAppearance(I)I

    move-result v5

    :goto_145
    move v0, v5

    .line 4165
    .local v0, "appearance":I
    sget v1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-ne v1, v6, :cond_14f

    .line 4167
    iget-object v1, v14, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicyExt;->updateLastTransparentNavigationBarUptime(I)V

    .line 4170
    :cond_14f
    iget v1, v14, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    xor-int/2addr v1, v8

    .line 4171
    .local v1, "diff":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayPolicy;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    .line 4172
    .local v2, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    and-int/lit8 v3, v8, 0x6

    if-nez v3, :cond_17d

    iget-object v3, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 4174
    invoke-static {v13, v3}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_17d

    iget-object v3, v14, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_16f

    .line 4175
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v4

    if-nez v4, :cond_17d

    :cond_16f
    iget-object v3, v14, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_17b

    .line 4176
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v4

    if-eqz v4, :cond_17b

    goto :goto_17d

    :cond_17b
    const/4 v3, 0x0

    goto :goto_17e

    :cond_17d
    :goto_17d
    const/4 v3, 0x1

    .line 4178
    .local v3, "isFullscreen":Z
    :goto_17e
    iget-object v4, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->behavior:I

    .line 4179
    .local v4, "behavior":I
    and-int/lit16 v5, v8, 0x1800

    if-nez v5, :cond_190

    const/4 v5, 0x1

    if-eq v4, v5, :cond_190

    if-ne v4, v6, :cond_18e

    goto :goto_190

    :cond_18e
    const/4 v5, 0x0

    goto :goto_191

    :cond_190
    :goto_190
    const/4 v5, 0x1

    .line 4183
    .local v5, "isImmersive":Z
    :goto_191
    if-nez v1, :cond_1c1

    iget v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    if-ne v7, v0, :cond_1c1

    iget v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    if-ne v7, v11, :cond_1c1

    iget v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    if-ne v7, v10, :cond_1c1

    iget v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    if-ne v7, v4, :cond_1c1

    iget-boolean v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    if-ne v7, v3, :cond_1c1

    iget-boolean v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    if-ne v7, v5, :cond_1c1

    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v6, v14, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    .line 4190
    invoke-virtual {v7, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c1

    iget-object v6, v14, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 4191
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c1

    .line 4192
    const/4 v6, 0x0

    return v6

    .line 4197
    :cond_1c1
    iget v6, v14, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    invoke-static {v8, v6}, Lcom/android/server/wm/DisplayPolicy;->getTransientState(II)Landroid/util/Pair;

    move-result-object v24

    .line 4199
    .local v24, "transientState":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    iput v8, v14, Lcom/android/server/wm/DisplayPolicy;->mLastSystemUiFlags:I

    .line 4200
    iput v0, v14, Lcom/android/server/wm/DisplayPolicy;->mLastAppearance:I

    .line 4201
    iput v11, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFullscreenAppearance:I

    .line 4202
    iput v10, v14, Lcom/android/server/wm/DisplayPolicy;->mLastDockedAppearance:I

    .line 4203
    iput v4, v14, Lcom/android/server/wm/DisplayPolicy;->mLastBehavior:I

    .line 4204
    iput-boolean v3, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsFullscreen:Z

    .line 4205
    iput-boolean v5, v14, Lcom/android/server/wm/DisplayPolicy;->mLastFocusIsImmersive:Z

    .line 4206
    iget-object v6, v14, Lcom/android/server/wm/DisplayPolicy;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4207
    iget-object v6, v14, Lcom/android/server/wm/DisplayPolicy;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4208
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v14, Lcom/android/server/wm/DisplayPolicy;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v7, v6

    .line 4209
    .local v7, "fullscreenStackBounds":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    move/from16 v25, v4

    .end local v4    # "behavior":I
    .local v25, "behavior":I
    iget-object v4, v14, Lcom/android/server/wm/DisplayPolicy;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v4, v6

    .line 4210
    .local v4, "dockedStackBounds":Landroid/graphics/Rect;
    if-eqz v19, :cond_210

    .line 4211
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/internal/view/AppearanceRegion;

    move-object/from16 v26, v9

    .end local v9    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    .local v26, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    new-instance v9, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v9, v11, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    const/16 v17, 0x0

    aput-object v9, v6, v17

    new-instance v9, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v9, v10, v4}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    move-object/from16 v27, v4

    const/4 v4, 0x1

    .end local v4    # "dockedStackBounds":Landroid/graphics/Rect;
    .local v27, "dockedStackBounds":Landroid/graphics/Rect;
    aput-object v9, v6, v4

    goto :goto_220

    .line 4214
    .end local v26    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    .end local v27    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v4    # "dockedStackBounds":Landroid/graphics/Rect;
    .restart local v9    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    :cond_210
    move-object/from16 v27, v4

    move-object/from16 v26, v9

    const/4 v4, 0x1

    const/16 v17, 0x0

    .end local v4    # "dockedStackBounds":Landroid/graphics/Rect;
    .end local v9    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    .restart local v26    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/android/server/wm/WindowState;>;"
    .restart local v27    # "dockedStackBounds":Landroid/graphics/Rect;
    new-array v6, v4, [Lcom/android/internal/view/AppearanceRegion;

    new-instance v4, Lcom/android/internal/view/AppearanceRegion;

    invoke-direct {v4, v11, v7}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    aput-object v4, v6, v17

    :goto_220
    move-object v4, v15

    .end local v15    # "navColorWin":Lcom/android/server/wm/WindowState;
    .local v4, "navColorWin":Lcom/android/server/wm/WindowState;
    move-object v15, v6

    .line 4216
    .local v15, "appearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v28

    .line 4218
    .local v28, "cause":Ljava/lang/String;
    and-int/lit8 v6, v8, 0x4

    if-nez v6, :cond_244

    iget-object v6, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 4220
    invoke-static {v13, v6}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_242

    iget-object v6, v14, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_240

    .line 4221
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v9

    if-eqz v9, :cond_255

    goto :goto_245

    .line 4220
    :cond_240
    const/4 v6, 0x0

    goto :goto_255

    :cond_242
    const/4 v6, 0x0

    goto :goto_245

    .line 4218
    :cond_244
    const/4 v6, 0x0

    .line 4221
    :goto_245
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_258

    iget-object v9, v14, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_255

    .line 4223
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v17

    if-eqz v17, :cond_255

    goto :goto_259

    :cond_255
    :goto_255
    move/from16 v17, v6

    goto :goto_25b

    .line 4221
    :cond_258
    const/4 v9, 0x1

    .line 4223
    :goto_259
    move/from16 v17, v9

    .line 4225
    .local v17, "isFullscreenAll":Z
    :goto_25b
    iget-object v9, v14, Lcom/android/server/wm/DisplayPolicy;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .end local v7    # "fullscreenStackBounds":Landroid/graphics/Rect;
    .local v22, "fullscreenStackBounds":Landroid/graphics/Rect;
    move-object/from16 v7, p0

    move/from16 v29, v8

    .end local v8    # "visibility":I
    .local v29, "visibility":I
    move-object/from16 v30, v2

    move-object v2, v9

    .end local v2    # "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    .local v30, "insetsPolicy":Lcom/android/server/wm/InsetsPolicy;
    move v9, v0

    move/from16 v31, v10

    .end local v10    # "dockedAppearance":I
    .local v31, "dockedAppearance":I
    move-object/from16 v10, v24

    move/from16 v32, v11

    .end local v11    # "fullscreenAppearance":I
    .local v32, "fullscreenAppearance":I
    move v11, v3

    move/from16 v33, v12

    .end local v12    # "tmpVisibility":I
    .local v33, "tmpVisibility":I
    move v12, v5

    move-object/from16 v34, v13

    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    .local v34, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v14, v28

    invoke-direct/range {v6 .. v17}, Lcom/android/server/wm/-$$Lambda$DisplayPolicy$oiQL1HFEOynQLubrtKuZOfDeMKY;-><init>(Lcom/android/server/wm/DisplayPolicy;IILandroid/util/Pair;ZZLcom/android/server/wm/WindowState;Ljava/lang/String;[Lcom/android/internal/view/AppearanceRegion;ZZ)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4287
    return v1
.end method

.method validateAddingWindowLw(Landroid/view/WindowManager$LayoutParams;II)I
    .registers 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I

    .line 1155
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "DisplayPolicy"

    if-eqz v0, :cond_10

    .line 1156
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1161
    :cond_10
    const/4 v0, 0x0

    .line 1163
    .local v0, "isStandAloneMode":Z
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    const/4 v5, -0x7

    if-eq v3, v4, :cond_95

    const/16 v4, 0x7de

    const/16 v6, -0xa

    if-eq v3, v4, :cond_94

    const/16 v4, 0x7e1

    if-eq v3, v4, :cond_8e

    const/16 v4, 0x7e3

    if-eq v3, v4, :cond_7e

    const/16 v4, 0x7e8

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x7f1

    if-eq v3, v4, :cond_8e

    const/16 v4, 0x8e9

    if-eq v3, v4, :cond_8e

    packed-switch v3, :pswitch_data_b6

    const-string v4, "WindowManager"

    packed-switch v3, :pswitch_data_c0

    goto :goto_a5

    .line 1228
    :pswitch_3b
    if-nez v0, :cond_7e

    .line 1229
    const-string/jumbo v1, "validateAddingWindowLw: TYPE_NAVIGATION_BAR_STANDALONE failed, not in standalone mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return v6

    .line 1197
    :pswitch_44
    if-nez v0, :cond_5e

    .line 1198
    const-string/jumbo v1, "validateAddingWindowLw: TYPE_NOTIFICATION_SHADE_STANDALONE failed, not in standalone mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return v6

    .line 1166
    :pswitch_4d
    if-nez v0, :cond_95

    .line 1167
    const-string/jumbo v1, "validateAddingWindowLw: TYPE_STATUS_BAR_STANDALONE failed, not in standalone mode"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return v6

    .line 1276
    :pswitch_56
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v3, v4, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1279
    goto :goto_a5

    .line 1204
    :cond_5e
    :pswitch_5e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1207
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNotificationShade:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_a5

    .line 1208
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1221
    return v5

    .line 1259
    :cond_6e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v3, p3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 1260
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a5

    .line 1235
    :cond_7e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1238
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_a5

    .line 1239
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1252
    return v5

    .line 1271
    :cond_8e
    :pswitch_8e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1274
    goto :goto_a5

    .line 1281
    :cond_94
    return v6

    .line 1173
    :cond_95
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1176
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_a5

    .line 1177
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1190
    return v5

    .line 1284
    :cond_a5
    :goto_a5
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    if-eqz v3, :cond_b3

    .line 1285
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1, p2, p3, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1288
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->providesInsetsTypes:[I

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->enforceSingleInsetsTypeCorrespondingToWindowType([I)V

    .line 1290
    :cond_b3
    const/4 v1, 0x0

    return v1

    nop

    :pswitch_data_b6
    .packed-switch 0x7f8
        :pswitch_5e
        :pswitch_8e
        :pswitch_56
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0xa3d
        :pswitch_4d
        :pswitch_44
        :pswitch_3b
    .end packed-switch
.end method
