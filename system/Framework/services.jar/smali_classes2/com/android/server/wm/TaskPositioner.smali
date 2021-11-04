.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field mClientCallback:Landroid/os/IBinder;

.field mClientChannel:Landroid/view/InputChannel;

.field private final mContentOfDisplayFrame:Landroid/graphics/Rect;

.field private mCtrlType:I

.field private mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragEnded:Z

.field mDragWindowHandle:Landroid/view/InputWindowHandle;

.field private mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private mLastSnappingPosition:I

.field private mMaxHeight:I

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mMinWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnappingBounds:Landroid/graphics/Rect;

.field private final mSnappingOtherBounds:Landroid/graphics/Rect;

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field mTask:Lcom/android/server/wm/Task;

.field private mTaskOrientation:I

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpDisplaySize:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field mWindow:Lcom/android/server/wm/WindowState;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    .line 135
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnappingPosition:I

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpDisplaySize:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpContentRect:Landroid/graphics/Rect;

    .line 142
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    .line 317
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;)Lcom/samsung/android/multiwindow/FreeformGuideWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->adjustFreeformGuideSize()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskPositioner;

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private adjustFreeformGuideSize()V
    .registers 10

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_e

    move v0, v3

    goto :goto_f

    :cond_e
    move v0, v2

    .line 945
    .local v0, "adjustMinWidth":Z
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    if-gt v1, v4, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 946
    .local v1, "adjustMinHeight":Z
    :goto_1c
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    if-lt v4, v5, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v2

    .line 947
    .local v4, "adjustMaxWidth":Z
    :goto_29
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    if-lt v5, v6, :cond_35

    move v5, v3

    goto :goto_36

    :cond_35
    move v5, v2

    .line 948
    .local v5, "adjustMaxHeight":Z
    :goto_36
    if-eqz v0, :cond_50

    .line 949
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_47

    .line 950
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto :goto_50

    .line 952
    :cond_47
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 955
    :cond_50
    :goto_50
    if-eqz v1, :cond_6b

    .line 956
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_62

    .line 957
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    goto :goto_6b

    .line 959
    :cond_62
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 962
    :cond_6b
    :goto_6b
    if-eqz v4, :cond_85

    .line 963
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_7c

    .line 964
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->left:I

    goto :goto_85

    .line 966
    :cond_7c
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 969
    :cond_85
    :goto_85
    if-eqz v5, :cond_a0

    .line 970
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_97

    .line 971
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->top:I

    goto :goto_a0

    .line 973
    :cond_97
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 977
    :cond_a0
    :goto_a0
    if-eqz v0, :cond_a4

    if-nez v1, :cond_a8

    :cond_a4
    if-eqz v4, :cond_aa

    if-eqz v5, :cond_aa

    .line 978
    :cond_a8
    move v2, v3

    goto :goto_ab

    .line 979
    :cond_aa
    nop

    :goto_ab
    nop

    .line 980
    .local v2, "guideState":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v3, v2}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideState(I)V

    .line 981
    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 719
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .registers 2
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 766
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_b

    .line 767
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 770
    :cond_b
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    return-object v0
.end method

.method private endDragLocked()V
    .registers 3

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 595
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 596
    return-void
.end method

.method private synthetic lambda$startDrag$3(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "startBounds"    # Landroid/graphics/Rect;

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 584
    return-void
.end method

.method private synthetic lambda$toggleFreeformWindowingMode$4(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendToggleFreeformTransaction(Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$unregister$1(Lcom/android/server/wm/DexSnappingGuideWindow;)V
    .registers 3
    .param p0, "dexSnappingGuideWindow"    # Lcom/android/server/wm/DexSnappingGuideWindow;

    .line 451
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEBUG_LOG:Z

    if-eqz v0, :cond_b

    .line 452
    const-string v0, "WindowManager"

    const-string v1, "TaskPositioner unregister: dismiss snappingWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/DexSnappingGuideWindow;->dismiss()V

    .line 455
    return-void
.end method

.method private resizeTaskForSnappingGuide()V
    .registers 5

    .line 835
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnappingPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 836
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_f

    .line 837
    return-void

    .line 840
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne v0, v2, :cond_26

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iput v1, v0, Lcom/android/server/wm/DexSnappingGuideWindow;->mPointerPosition:I

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 843
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    goto :goto_42

    .line 844
    :cond_26
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnappingPosition:I

    if-ne v0, v2, :cond_2e

    .line 845
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->toggleFreeformWindowingMode()V

    goto :goto_42

    .line 847
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 851
    :goto_42
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMtWindowController:Lcom/android/server/wm/MultiTaskingWindowController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/MultiTaskingWindowController;->notifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    .line 854
    :cond_57
    return-void
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .registers 1
    .param p0, "factory"    # Lcom/android/server/wm/TaskPositioner$Factory;

    .line 762
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 763
    return-void
.end method

.method private showSnappingGuide(FF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/DexSnappingGuideWindow;->getSnappingPosition(FFLandroid/graphics/Rect;)I

    move-result v0

    .line 799
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnappingPosition:I

    if-ne v0, v1, :cond_15

    .line 800
    return-void

    .line 803
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 804
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 806
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_7e

    .line 807
    if-ne v0, v3, :cond_50

    .line 808
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getSnappingGuideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 809
    .local v1, "tmpBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_56

    .line 810
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpDisplaySize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    move v3, p1

    move v4, p2

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DexSnappingGuideWindow;->calculateGuideSize(FFILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 812
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 813
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DexSnappingGuideWindow;->show(Landroid/graphics/Rect;)V

    goto :goto_56

    .line 815
    .end local v1    # "tmpBounds":Landroid/graphics/Rect;
    :cond_50
    if-eqz v0, :cond_57

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    goto :goto_57

    :cond_56
    :goto_56
    goto :goto_ac

    .line 816
    :cond_57
    :goto_57
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 817
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpContentRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 818
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v7, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 817
    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DexSnappingGuideWindow;->calculateGuideSize(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 819
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DexSnappingGuideWindow;->show(Landroid/graphics/Rect;I)V

    goto :goto_ac

    .line 822
    :cond_7e
    if-ne v0, v3, :cond_86

    .line 823
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    invoke-virtual {v1}, Lcom/android/server/wm/DexSnappingGuideWindow;->dismiss()V

    goto :goto_ac

    .line 825
    :cond_86
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 826
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpContentRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingOtherBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 827
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v7, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 826
    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DexSnappingGuideWindow;->calculateGuideSize(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 828
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDexSnappingGuideWindow:Lcom/android/server/wm/DexSnappingGuideWindow;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DexSnappingGuideWindow;->show(Landroid/graphics/Rect;I)V

    .line 831
    :goto_ac
    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mLastSnappingPosition:I

    .line 832
    return-void
.end method

.method private toggleFreeformWindowingMode()V
    .registers 4

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 860
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 861
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    .line 862
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .local v2, "token":Landroid/os/IBinder;
    goto :goto_14

    .line 864
    .end local v2    # "token":Landroid/os/IBinder;
    :cond_13
    const/4 v2, 0x0

    .line 866
    .restart local v2    # "token":Landroid/os/IBinder;
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 867
    if-eqz v2, :cond_21

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 875
    :cond_21
    return-void

    .line 866
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateDraggedBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 691
    return-void
.end method

.method private updateMinMaxSize()V
    .registers 8

    .line 880
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_14f

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 881
    const/4 v0, 0x0

    .line 884
    .local v0, "displayContext":Landroid/content/Context;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_1c

    .line 885
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_1c
    nop

    .line 886
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 888
    .local v2, "defaultMinimalSizeOfResizeableTask":I
    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    iput v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 890
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mMinWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 891
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mMinWidth:I

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 893
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mMinHeight:I

    if-eq v3, v4, :cond_41

    .line 894
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mMinHeight:I

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 896
    :cond_41
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 897
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 898
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 899
    .local v3, "displaySize":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    .line 900
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 901
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_6a

    .line 902
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->getBaseDisplayRect(Landroid/graphics/Rect;)V

    .line 904
    :cond_6a
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxWidth:I

    if-ltz v5, :cond_80

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxWidth:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v5, v6, :cond_7b

    goto :goto_80

    .line 905
    :cond_7b
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxWidth:I

    goto :goto_84

    :cond_80
    :goto_80
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_84
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 906
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxHeight:I

    if-ltz v5, :cond_9c

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxHeight:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_97

    goto :goto_9c

    .line 907
    :cond_97
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mMaxHeight:I

    goto :goto_a0

    :cond_9c
    :goto_9c
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    :goto_a0
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 908
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    .line 909
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 911
    .end local v3    # "displaySize":Landroid/graphics/Rect;
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v3

    if-eqz v3, :cond_107

    .line 912
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_de

    const/4 v4, 0x6

    if-eq v3, v4, :cond_d8

    const/4 v4, 0x7

    if-eq v3, v4, :cond_ce

    goto :goto_e1

    .line 921
    :cond_ce
    iget-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v3, :cond_d4

    .line 922
    move v3, v5

    goto :goto_d5

    .line 923
    :cond_d4
    move v3, v6

    :goto_d5
    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    goto :goto_e1

    .line 914
    :cond_d8
    iput v6, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    .line 915
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 916
    goto :goto_e1

    .line 918
    :cond_de
    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    .line 919
    nop

    .line 927
    :goto_e1
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    const v4, 0x3f99999a    # 1.2f

    if-ne v3, v6, :cond_f7

    .line 928
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    .line 929
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    goto :goto_107

    .line 930
    :cond_f7
    if-ne v3, v5, :cond_107

    .line 931
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    .line 932
    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    .line 935
    :cond_107
    :goto_107
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_14f

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDrag: mTaskOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mTaskOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Min=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMinHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") Max=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mMaxWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMaxHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v0    # "displayContext":Landroid/content/Context;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "defaultMinimalSizeOfResizeableTask":I
    :cond_14f
    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "stackBounds"    # Landroid/graphics/Rect;

    .line 722
    int-to-float v0, p1

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 723
    .local v0, "offsetX":I
    int-to-float v1, p2

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 724
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 726
    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v2, v3

    .line 727
    .local v2, "maxLeft":I
    iget v3, p3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    .line 731
    .local v3, "minLeft":I
    iget v4, p3, Landroid/graphics/Rect;->top:I

    .line 732
    .local v4, "minTop":I
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr v5, v6

    .line 735
    .local v5, "maxTop":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_67

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 736
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/DisplayContent;->isInputMethodTargetTask(Lcom/android/server/wm/Task;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 738
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_58

    .line 740
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .local v6, "adjustedTop":I
    goto :goto_63

    .line 743
    .end local v6    # "adjustedTop":I
    :cond_58
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    .line 745
    .restart local v6    # "adjustedTop":I
    :goto_63
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 749
    .end local v6    # "adjustedTop":I
    :cond_67
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    .line 750
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    .line 751
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 749
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 753
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v6, :cond_a3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWindowDragBounds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WindowManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_a3
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 775
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 776
    return-void
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$register$0$TaskPositioner(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 409
    const/4 v0, 0x0

    .line 412
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    .line 413
    return-void
.end method

.method public synthetic lambda$unregister$2$TaskPositioner()V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz v0, :cond_17

    .line 469
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_f

    .line 470
    const-string v0, "WindowManager"

    const-string v1, "TaskPositioner unregister: dismiss guideWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->dismiss()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    .line 475
    :cond_17
    return-void
.end method

.method notifyMoveLocked(FF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 601
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_29

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyMoveLocked: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_29
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 606
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 608
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v0, :cond_37

    .line 610
    return v2

    .line 613
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 614
    return v2

    .line 619
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 620
    invoke-virtual {v0, v3}, Lcom/android/server/wm/FreeformWindowController;->autoDockFreeformIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 621
    return v1

    .line 628
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMtWindowController:Lcom/android/server/wm/MultiTaskingWindowController;

    .line 631
    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingWindowController;->isFullscreenNavigationBarGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 633
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 634
    .local v0, "insetStateController":Lcom/android/server/wm/InsetsStateController;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v1

    .line 635
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 636
    .local v1, "leftEdge":Landroid/graphics/Rect;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v3

    .line 637
    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 638
    .local v3, "rightEdge":Landroid/graphics/Rect;
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v4

    .line 639
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    .line 641
    .local v4, "bottomEdge":Landroid/graphics/Rect;
    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_96

    .line 642
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 644
    :cond_96
    if-eqz v3, :cond_a4

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a4

    .line 645
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 647
    :cond_a4
    if-eqz v4, :cond_b2

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b2

    .line 648
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 654
    .end local v0    # "insetStateController":Lcom/android/server/wm/InsetsStateController;
    .end local v1    # "leftEdge":Landroid/graphics/Rect;
    .end local v3    # "rightEdge":Landroid/graphics/Rect;
    .end local v4    # "bottomEdge":Landroid/graphics/Rect;
    :cond_b2
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 658
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/DisplayPolicy;->mTopFreeFormFrameThickness:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 661
    float-to-int v0, p1

    .line 662
    .local v0, "nX":I
    float-to-int v1, p2

    .line 663
    .local v1, "nY":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 666
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 667
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 670
    :cond_fe
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 671
    return v2
.end method

.method register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 330
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_b

    .line 331
    const-string v0, "Registering task positioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_15

    .line 335
    const-string v0, "Task positioner already registered"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 339
    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 340
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 341
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 342
    const/4 v3, 0x1

    aget-object v4, v0, v3

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 343
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 345
    new-instance v4, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 346
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 347
    invoke-virtual {v7}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v7

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 349
    new-instance v4, Landroid/view/InputApplicationHandle;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    const-wide v6, 0x2540be400L

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 352
    new-instance v4, Landroid/view/InputWindowHandle;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 353
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-direct {v4, v5, v8}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 354
    iput-object v1, v4, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 356
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 357
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/16 v4, 0x7e0

    iput v4, v1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 358
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-wide v6, v1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v3, v1, Landroid/view/InputWindowHandle;->visible:Z

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 374
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 375
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-boolean v2, v1, Landroid/view/InputWindowHandle;->paused:Z

    .line 376
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 378
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v2, v1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 382
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 385
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 386
    .local v1, "displayBounds":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 387
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 388
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameTop:I

    .line 389
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameRight:I

    .line 390
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 393
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_e3

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x2f2cdacf

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_e3
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->pause()V

    .line 397
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskPositioningController;->showInputSurface(I)V

    .line 399
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 400
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v4, 0x3a

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 401
    const/16 v4, 0x20

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 402
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 404
    iput-boolean v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 408
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;

    invoke-direct {v5, p0, p1}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$sQ-DRLtq5G-8BwIVu4iEBWYok4U;-><init>(Lcom/android/server/wm/TaskPositioner;Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mContentOfDisplayFrame:Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v5, v5, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 429
    :try_start_12f
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 430
    invoke-interface {v4, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_13a} :catch_144

    .line 435
    nop

    .line 436
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 437
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 438
    return-void

    .line 431
    :catch_144
    move-exception v2

    .line 433
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 434
    return-void
.end method

.method resizeDrag(FF)V
    .registers 14
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 682
    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget v7, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget-boolean v9, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    iget-boolean v10, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v10}, Lcom/android/internal/policy/TaskResizingAlgorithm;->resizeDrag(FFFFLandroid/graphics/Rect;IIILandroid/graphics/Point;ZZ)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(Landroid/graphics/Rect;)V

    .line 685
    return-void
.end method

.method startDrag(ZZFF)V
    .registers 11
    .param p1, "resize"    # Z
    .param p2, "preserveOrientation"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .line 512
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_43

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDrag: win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preserveOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 521
    .local v0, "startBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 523
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 524
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 525
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 526
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 529
    const/4 v2, 0x0

    .line 531
    .local v2, "delta":I
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v4, v3}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    .line 532
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 536
    const/4 v3, 0x1

    if-eqz p1, :cond_a1

    .line 537
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_72

    .line 538
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 540
    :cond_72
    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_7f

    .line 541
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 543
    :cond_7f
    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_8c

    .line 544
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 546
    :cond_8c
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpl-float v5, p4, v5

    if-lez v5, :cond_98

    .line 547
    iget v5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 549
    :cond_98
    iget v4, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz v4, :cond_9e

    move v4, v3

    goto :goto_9f

    :cond_9e
    move v4, v1

    :goto_9f
    iput-boolean v4, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 554
    :cond_a1
    neg-int v4, v2

    neg-int v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 562
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_b1

    move v1, v3

    :cond_b1
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 565
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->updateMinMaxSize()V

    .line 568
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 573
    iget-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz v1, :cond_c2

    .line 574
    invoke-virtual {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 590
    :cond_c2
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 591
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .line 758
    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .registers 6

    .line 441
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_b

    .line 442
    const-string v0, "Unregistering task positioner"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_15

    .line 460
    const-string v0, "Task positioner not registered"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 466
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    if-eqz v0, :cond_25

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioner$Uj6MFqd171rT5XBDjZl-K602V6E;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$Uj6MFqd171rT5XBDjZl-K602V6E;-><init>(Lcom/android/server/wm/TaskPositioner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskPositioningController;->hideInputSurface(I)V

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 485
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 486
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 487
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 488
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 490
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 491
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 492
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 495
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 498
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_71

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x54cdeb55

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 499
    :cond_71
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->resume()V

    .line 500
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 501
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    if-eqz v1, :cond_83

    .line 502
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 504
    :cond_83
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindow:Lcom/android/server/wm/WindowState;

    .line 505
    return-void
.end method
