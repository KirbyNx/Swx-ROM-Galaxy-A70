.class public Lcom/android/server/wm/MultiWindowPointerEventListener;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowGesture"

.field private static final TASK_ID_UNDEFINED:I = -0x1


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private mDefaultMinimalSizeOfResizeableTask:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

.field private final mInitRect:Landroid/graphics/Rect;

.field private mIsMoved:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mNotResizeableRect:Landroid/graphics/Rect;

.field private mNotSupport:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mTaskId:I

.field private final mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

.field private mTaskOrientation:I

.field private mTaskResizable:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    .line 98
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 109
    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 113
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 114
    return-void
.end method

.method private adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "edgeFlags"    # I

    .line 412
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    const v1, 0x3f99999a    # 1.2f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 414
    .local v0, "ratio":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_57

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 416
    .local v1, "minHeight":I
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_57

    .line 418
    .end local v0    # "ratio":F
    .end local v1    # "minHeight":I
    :cond_27
    const/4 v2, 0x2

    if-ne v0, v2, :cond_57

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 420
    .restart local v0    # "ratio":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_58

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 422
    .local v1, "minWidth":I
    const/4 v2, 0x5

    if-eq p2, v2, :cond_51

    const/16 v2, 0x9

    if-eq p2, v2, :cond_4b

    goto :goto_58

    .line 427
    :cond_4b
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_58

    .line 424
    :cond_51
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 425
    goto :goto_58

    .line 418
    .end local v0    # "ratio":F
    .end local v1    # "minWidth":I
    :cond_57
    :goto_57
    nop

    .line 432
    :cond_58
    :goto_58
    return-void
.end method

.method private findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 151
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    .line 152
    const-string v1, "MultiWindowGesture"

    const-string v3, "findTargetTaskBounds: the keyguard is currently locked."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 154
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 155
    const-string v1, "MultiWindowGesture"

    const-string v3, "findTargetTaskBounds: the quick panel is expanded."

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 161
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 162
    .local v1, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_51

    .line 163
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 164
    .local v3, "windowType":I
    const/16 v4, 0x8b2

    if-ne v3, v4, :cond_51

    .line 165
    const-string v4, "MultiWindowGesture"

    const-string v5, "findTargetTaskBounds: the edge panel is expanded."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 171
    .end local v1    # "focusedWindow":Lcom/android/server/wm/WindowState;
    .end local v3    # "windowType":I
    :cond_51
    :try_start_51
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    .line 173
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_12d

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_12d

    .line 174
    const-string v3, "MultiWindowGesture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findTargetTaskBounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v3

    if-nez v3, :cond_85

    .line 176
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_51 .. :try_end_81} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 178
    :cond_85
    :try_start_85
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v4, :cond_9d

    .line 179
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    if-ne v3, v5, :cond_94

    goto :goto_9d

    .line 213
    :cond_94
    const-string v3, "MultiWindowGesture"

    const-string v4, "findTargetTaskBounds: failed, task is not dock or full"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12d

    .line 180
    :cond_9d
    :goto_9d
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 181
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_c6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 182
    const-string v4, "MultiWindowGesture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findTargetTaskBounds: failed, task is relaunching, t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_85 .. :try_end_c2} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 185
    :cond_c6
    :try_start_c6
    invoke-virtual {v1, p3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 187
    iget v4, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 188
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 189
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v6, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 191
    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v4, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    iget v2, v1, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v4, v1, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-direct {p0, v2, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->updateMinimalSize(II)V

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 196
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getResizeMode()I

    move-result v2

    .line 197
    .local v2, "taskResizeMode":I
    const/4 v4, 0x5

    const/4 v6, 0x2

    if-eq v2, v4, :cond_126

    const/4 v4, 0x6

    if-eq v2, v4, :cond_123

    const/4 v4, 0x7

    if-eq v2, v4, :cond_110

    goto :goto_128

    .line 199
    :cond_110
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v4, v7, :cond_11f

    .line 200
    goto :goto_120

    .line 201
    :cond_11f
    move v6, v5

    :goto_120
    iput v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 202
    goto :goto_128

    .line 204
    :cond_123
    iput v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 205
    goto :goto_128

    .line 207
    :cond_126
    iput v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 211
    .end local v2    # "taskResizeMode":I
    :cond_128
    :goto_128
    monitor-exit v0
    :try_end_129
    .catchall {:try_start_c6 .. :try_end_129} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 216
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_12d
    :goto_12d
    :try_start_12d
    monitor-exit v0
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 217
    return v2

    .line 216
    :catchall_132
    move-exception v1

    :try_start_133
    monitor-exit v0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isHapticSupported()Z
    .registers 3

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->semGetSupportedVibrationType()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private reset()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    .line 237
    iput v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    .line 238
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    .line 239
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 242
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->dismiss()V

    .line 244
    return-void
.end method

.method private showToast()V
    .registers 4

    .line 435
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 437
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 439
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 440
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 441
    return-void
.end method

.method private updateMinimalSize(II)V
    .registers 4
    .param p1, "taskMinWidth"    # I
    .param p2, "taskMinHeight"    # I

    .line 221
    if-lez p1, :cond_5

    .line 222
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    goto :goto_9

    .line 224
    :cond_5
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 226
    :goto_9
    if-lez p2, :cond_e

    .line 227
    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    goto :goto_12

    .line 229
    :cond_e
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 231
    :goto_12
    return-void
.end method


# virtual methods
.method onConfigurationChanged()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    const v1, 0x1050109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    .line 140
    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2e

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged, mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiWindowGesture"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_35

    .line 144
    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    .line 146
    :cond_35
    return-void
.end method

.method onDisplayReady()V
    .registers 4

    .line 117
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDefaultMinimalSizeOfResizeableTask:I

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 122
    new-instance v0, Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskIdFromPointSearchResult:Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->reset()V

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    .line 127
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 134
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 248
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CORNER_GESTURE_ENABLED:Z

    if-nez v0, :cond_5

    .line 251
    return-void

    .line 254
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 255
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 256
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 258
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    const-string v4, "MultiWindowGesture"

    if-nez v3, :cond_22

    .line 259
    if-nez v0, :cond_21

    .line 260
    const-string/jumbo v3, "mMultiWindowEdgeDetector is null"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_21
    return-void

    .line 263
    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicyExt;->isLockTaskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 264
    sget-boolean v3, Lcom/android/server/wm/MultiWindowPointerEventListener;->SAFE_DEBUG:Z

    if-eqz v3, :cond_46

    if-nez v0, :cond_46

    .line 265
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    .line 266
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 267
    const-string v3, "freeform gesture is blocked, lock task mode is running."

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_46
    return-void

    .line 273
    :cond_47
    const/4 v3, 0x0

    if-eqz v0, :cond_1ba

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v0, v7, :cond_177

    const/4 v8, 0x2

    if-eq v0, v8, :cond_5e

    if-eq v0, v5, :cond_59

    const/4 v4, 0x6

    if-eq v0, v4, :cond_177

    goto/16 :goto_1ee

    .line 404
    :cond_59
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    goto/16 :goto_1ee

    .line 293
    :cond_5e
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 294
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v5

    .line 297
    .local v5, "readyToFreeform":Z
    iget-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v9, :cond_87

    if-eqz v5, :cond_87

    .line 298
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v9, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v9

    if-nez v9, :cond_87

    .line 299
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 300
    const-string/jumbo v3, "onPointerEvent: not effective angle, failed"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    goto/16 :goto_1ee

    .line 305
    :cond_87
    iget-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskResizable:Z

    if-nez v9, :cond_c6

    .line 306
    if-eqz v5, :cond_1ee

    .line 307
    const-string/jumbo v3, "onPointerEvent: failed, task is not resizable"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v3, v8}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideState(I)V

    .line 310
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    .line 311
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 313
    iget-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v3, :cond_1ee

    .line 314
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isHapticSupported()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 315
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 316
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    sget-object v8, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 315
    invoke-static {v4, v6, v8}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 318
    :cond_bd
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast()V

    .line 319
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    .line 320
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_1ee

    .line 327
    :cond_c6
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v9, :cond_d9

    .line 328
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 330
    :cond_d9
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v9, :cond_11c

    .line 331
    invoke-virtual {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 332
    const-string/jumbo v3, "onPointerEvent: failed, KnoxKeyguard is not resizable"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v3, v8}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideState(I)V

    .line 335
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    .line 336
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 338
    iget-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v3, :cond_1ee

    .line 339
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isHapticSupported()Z

    move-result v3

    if-eqz v3, :cond_113

    .line 340
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 341
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    sget-object v8, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 340
    invoke-static {v4, v6, v8}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 343
    :cond_113
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->showToast()V

    .line 344
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    .line 345
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    goto/16 :goto_1ee

    .line 352
    :cond_11c
    if-eqz v5, :cond_167

    .line 353
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlgas()I

    move-result v4

    .line 354
    .local v4, "edgeFlags":I
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v8, v4, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    .line 355
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinWidth:I

    iget v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMinHeight:I

    .line 356
    invoke-static {v8, v4, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v8

    .line 358
    .local v8, "isAdjustMinimalTaskBounds":Z
    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskOrientation:I

    if-eqz v9, :cond_13c

    .line 359
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v9, v4}, Lcom/android/server/wm/MultiWindowPointerEventListener;->adjustAspectRatioIfNeeded(Landroid/graphics/Rect;I)V

    .line 363
    :cond_13c
    if-eqz v8, :cond_144

    .line 364
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v9, v7}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideState(I)V

    goto :goto_149

    .line 366
    :cond_144
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v9, v3}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->setGuideState(I)V

    .line 370
    :goto_149
    iget-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    if-nez v9, :cond_166

    .line 371
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isHapticSupported()Z

    move-result v9

    if-eqz v9, :cond_162

    .line 372
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 373
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v10

    sget-object v11, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 372
    invoke-static {v10, v6, v11}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 375
    :cond_162
    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mIsMoved:Z

    .line 376
    iput-boolean v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    .line 378
    .end local v4    # "edgeFlags":I
    .end local v8    # "isAdjustMinimalTaskBounds":Z
    :cond_166
    goto :goto_16e

    .line 379
    :cond_167
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 382
    :goto_16e
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 384
    .end local v5    # "readyToFreeform":Z
    goto/16 :goto_1ee

    .line 389
    :cond_177
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v4

    if-eqz v4, :cond_1b6

    iget-boolean v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotSupport:Z

    if-nez v4, :cond_1b6

    .line 390
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v4

    if-eqz v4, :cond_1b6

    .line 391
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->isHapticSupported()Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 392
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mVibrator:Landroid/os/SystemVibrator;

    .line 393
    invoke-static {v7}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v7

    sget-object v8, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 392
    invoke-static {v7, v6, v8}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/SystemVibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 395
    :cond_1a0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMtWindowController:Lcom/android/server/wm/MultiTaskingWindowController;

    iget-object v4, v4, Lcom/android/server/wm/MultiTaskingWindowController;->mH:Lcom/android/server/wm/MultiTaskingWindowController$H;

    iget v6, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTaskId:I

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/android/server/wm/MultiTaskingWindowController$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 397
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 400
    :cond_1b6
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    .line 401
    goto :goto_1ee

    .line 275
    :cond_1ba
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v4, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 276
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 277
    .local v4, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v4, :cond_1d5

    .line 278
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mNotResizeableRect:Landroid/graphics/Rect;

    .line 280
    :cond_1d5
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/MultiWindowPointerEventListener;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1eb

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "isDexMode":Z
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mFreeformGuideWindow:Lcom/samsung/android/multiwindow/FreeformGuideWindow;

    invoke-virtual {v5, v3}, Lcom/samsung/android/multiwindow/FreeformGuideWindow;->initialize(Z)V

    .line 285
    .end local v3    # "isDexMode":Z
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1ee

    .line 287
    :cond_1eb
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListener;->reset()V

    .line 408
    .end local v4    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_1ee
    :goto_1ee
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    .line 446
    .local v0, "displayId":I
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindowPointerEventListener{display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
