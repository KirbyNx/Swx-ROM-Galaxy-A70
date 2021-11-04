.class public Lcom/android/server/wm/FreeformWindowController;
.super Ljava/lang/Object;
.source "FreeformWindowController.java"


# static fields
.field public static final FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_RESTORE:I = 0x2

.field static final TAG:Ljava/lang/String; = "FreeformWindowController"


# instance fields
.field private final mBubbleContainerPoint:Landroid/graphics/PointF;

.field private final mForceHiddenFreeformWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeformCornerRadius:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFreeformHandlerSideOffset:I

.field private mFreeformTopOffset:I

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mBubbleContainerPoint:Landroid/graphics/PointF;

    .line 88
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpRegion:Landroid/graphics/Region;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 106
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FreeformWindowController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FreeformWindowController;

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic lambda$autoDockFreeformIfNeeded$4(Landroid/animation/ValueAnimator;)V
    .registers 1
    .param p0, "va"    # Landroid/animation/ValueAnimator;

    .line 484
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic lambda$hasVisibleFreeformOrBubbleContainer$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xa2c

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$shouldApplyForceHidePolicyLocked$3(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 330
    return v1

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mRequestFreeformForceHiding:Z

    if-eqz v0, :cond_14

    .line 333
    return v2

    .line 335
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x4000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1e

    .line 336
    return v2

    .line 338
    :cond_1e
    return v1
.end method

.method private shouldApplyForceHidePolicyLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "windowToBeForceHidden"    # Lcom/android/server/wm/WindowState;

    .line 322
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 323
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v2, :cond_c

    goto :goto_24

    .line 328
    :cond_c
    sget-object v2, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$AZ87uy0vx1zRupWeoeuAfEx5uNs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FreeformWindowController$AZ87uy0vx1zRupWeoeuAfEx5uNs;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 340
    .local v2, "requestedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_23

    if-eq p1, v2, :cond_23

    .line 341
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_21

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v4, :cond_21

    .line 343
    return v1

    .line 345
    :cond_21
    const/4 v1, 0x1

    return v1

    .line 348
    :cond_23
    return v1

    .line 325
    .end local v2    # "requestedWindow":Lcom/android/server/wm/WindowState;
    :cond_24
    :goto_24
    return v1
.end method


# virtual methods
.method addTouchExcludeRegionForAboveWindowsLocked(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "outRegion"    # Landroid/graphics/Region;

    .line 301
    new-instance v0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$KodgNDfAJ52rdqgHuXmyfB8Msqg;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$KodgNDfAJ52rdqgHuXmyfB8Msqg;-><init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllAboveAppWindows(Ljava/util/function/Consumer;ZZ)V

    .line 317
    return-void
.end method

.method applyForceHidePolicyIfNeededLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 352
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 353
    .local v0, "isFreeform":Z
    :goto_f
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0xa2c

    if-ne v3, v4, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    .line 355
    .local v3, "isContainer":Z
    :goto_1a
    if-nez v0, :cond_1e

    if-eqz v3, :cond_56

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformWindowController;->shouldApplyForceHidePolicyLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 356
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_45

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_45

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v4, :cond_45

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v1, :cond_45

    .line 361
    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->takeSnapshotByForce(Lcom/android/server/wm/Task;)V

    .line 363
    :cond_45
    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 364
    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 367
    :cond_55
    return v1

    .line 369
    :cond_56
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 370
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    .line 373
    :cond_66
    return v2
.end method

.method autoDockFreeformIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 15
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 440
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 441
    return v1

    .line 444
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 445
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 446
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d5

    if-nez v2, :cond_1c

    goto/16 :goto_d5

    .line 450
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 451
    .local v3, "displayBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 452
    .local v4, "startBounds":Landroid/graphics/Rect;
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformHandlerSideOffset:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x1

    if-le v5, v6, :cond_3c

    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 453
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_53

    :cond_3c
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformHandlerSideOffset:I

    sub-int/2addr v5, v6

    .line 454
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_56

    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 455
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_56

    .line 456
    :cond_53
    iput-boolean v7, v2, Lcom/android/server/wm/Task;->mReadyToAutoDock:Z

    .line 457
    return v1

    .line 460
    :cond_56
    iget-boolean v5, v2, Lcom/android/server/wm/Task;->mReadyToAutoDock:Z

    if-eqz v5, :cond_d4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_6e

    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 461
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_d4

    .line 462
    :cond_6e
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 463
    .local v5, "taskVisibleBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 464
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v6, v8

    .line 466
    .local v6, "distX":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 467
    .local v8, "updateBounds":Landroid/graphics/Rect;
    iget v9, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x2

    if-ne v9, v10, :cond_9f

    new-array v9, v11, [I

    aput v1, v9, v1

    neg-int v10, v6

    aput v10, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    goto :goto_a9

    .line 468
    :cond_9f
    new-array v9, v11, [I

    aput v1, v9, v1

    aput v6, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    :goto_a9
    nop

    .line 470
    .local v9, "va":Landroid/animation/ValueAnimator;
    iget-object v10, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v10

    .line 471
    .local v10, "durationScale":F
    const/high16 v11, 0x43a80000    # 336.0f

    mul-float/2addr v11, v10

    float-to-int v11, v11

    int-to-long v11, v11

    invoke-virtual {v9, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 472
    sget-object v11, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    new-instance v11, Lcom/android/server/wm/FreeformWindowController$2;

    invoke-direct {v11, p0, v8, v4, v2}, Lcom/android/server/wm/FreeformWindowController$2;-><init>(Lcom/android/server/wm/FreeformWindowController;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/Task;)V

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    iput-boolean v1, v2, Lcom/android/server/wm/Task;->mReadyToAutoDock:Z

    .line 484
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$XRc5etivULsE74Leg6n9kShV2JA;

    invoke-direct {v11, v9}, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$XRc5etivULsE74Leg6n9kShV2JA;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return v7

    .line 487
    .end local v5    # "taskVisibleBounds":Landroid/graphics/Rect;
    .end local v6    # "distX":I
    .end local v8    # "updateBounds":Landroid/graphics/Rect;
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    .end local v10    # "durationScale":F
    :cond_d4
    return v1

    .line 447
    .end local v3    # "displayBounds":Landroid/graphics/Rect;
    .end local v4    # "startBounds":Landroid/graphics/Rect;
    :cond_d5
    :goto_d5
    return v1
.end method

.method canApplyDimsLocked(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "dimTarget"    # Lcom/android/server/wm/WindowState;

    .line 266
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_2d

    .line 269
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 271
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 272
    .local v0, "targetVisibleFrame":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$JPk25AVnHo1IbDYOOqbDGnQ9Znc;-><init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/Task;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 292
    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v4

    :goto_2c
    return v1

    .line 267
    .end local v0    # "targetVisibleFrame":Landroid/graphics/Rect;
    :cond_2d
    :goto_2d
    return v1
.end method

.method clearMinimizeAnimState(Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "animatingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 252
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 253
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_19

    .line 254
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 256
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_19
    goto :goto_4

    .line 257
    :cond_1a
    return-void
.end method

.method dumplocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mForceHiddenFreeformWindows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    :cond_22
    return-void
.end method

.method getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 418
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 419
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 420
    .local v2, "task":Lcom/android/server/wm/Task;
    :goto_16
    if-eqz v2, :cond_1f

    .line 421
    iget v3, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 423
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 424
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 423
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getFreeformCornerRadiusLocked(I)I
    .registers 4
    .param p1, "displayId"    # I

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getFreeformTopOffset()I
    .registers 2

    .line 436
    iget v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformTopOffset:I

    return v0
.end method

.method hasVisibleFreeform(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 202
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 204
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method hasVisibleFreeformOrBubbleContainer(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformWindowController;->hasVisibleFreeform(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 178
    return v1

    .line 182
    :cond_8
    sget-object v0, Lcom/android/server/wm/-$$Lambda$FreeformWindowController$8MSYZOpA3dQSdmNl5juItofaM80;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FreeformWindowController$8MSYZOpA3dQSdmNl5juItofaM80;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 185
    .local v0, "bubbleContainerWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_24

    .line 186
    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardGoingAway:Z

    if-eqz v2, :cond_1d

    .line 187
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 188
    return v1

    .line 191
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 192
    return v1

    .line 198
    .end local v0    # "bubbleContainerWindow":Lcom/android/server/wm/WindowState;
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$addTouchExcludeRegionForAboveWindowsLocked$2$FreeformWindowController(Lcom/android/server/wm/DisplayContent;Landroid/graphics/Region;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "outRegion"    # Landroid/graphics/Region;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 302
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_f

    goto :goto_2e

    .line 305
    :cond_f
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xa28

    if-ne v0, v1, :cond_18

    .line 307
    return-void

    .line 309
    :cond_18
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 311
    return-void

    .line 313
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpRegion:Landroid/graphics/Region;

    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 315
    return-void

    .line 303
    :cond_2e
    :goto_2e
    return-void
.end method

.method public synthetic lambda$canApplyDimsLocked$1$FreeformWindowController(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .registers 10
    .param p1, "dimTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "targetVisibleFrame"    # Landroid/graphics/Rect;
    .param p3, "w"    # Lcom/android/server/wm/WindowState;

    .line 273
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 274
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    if-eqz v0, :cond_12

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v1, :cond_12

    .line 275
    :cond_11
    return v2

    .line 278
    :cond_12
    const/4 v1, 0x1

    if-ne p3, p1, :cond_19

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 280
    return v1

    .line 282
    :cond_19
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    .line 283
    .local v3, "visibleFrame":Landroid/graphics/Rect;
    iget-boolean v4, p3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_40

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 284
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lt v4, v5, :cond_40

    .line 285
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lt v4, v5, :cond_40

    .line 286
    :cond_3d
    iput-object p3, p0, Lcom/android/server/wm/FreeformWindowController;->mTmpWindow:Lcom/android/server/wm/WindowState;

    .line 287
    return v1

    .line 289
    :cond_40
    return v2
.end method

.method loadAnimationLocked(Lcom/android/server/wm/Task;Landroid/view/WindowManager$LayoutParams;IZLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Animation;
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "transit"    # I
    .param p4, "enter"    # Z
    .param p5, "frame"    # Landroid/graphics/Rect;
    .param p6, "surfaceInsets"    # Landroid/graphics/Rect;
    .param p7, "appTransition"    # Lcom/android/server/wm/AppTransition;

    .line 165
    iget v0, p1, Lcom/android/server/wm/Task;->mMinimizeAnimState:I

    .line 167
    .local v0, "minimizeAnimState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 168
    invoke-virtual {p0, p1, p5, p6}, Lcom/android/server/wm/FreeformWindowController;->loadMinimizeAnimationLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 169
    :cond_a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 170
    invoke-virtual {p0, p5, p6}, Lcom/android/server/wm/FreeformWindowController;->loadRestoreAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    .line 172
    :cond_12
    invoke-virtual {p0, p2, p3, p4, p7}, Lcom/android/server/wm/FreeformWindowController;->loadFreeformAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZLcom/android/server/wm/AppTransition;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method loadFreeformAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZLcom/android/server/wm/AppTransition;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appTransition"    # Lcom/android/server/wm/AppTransition;

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "a":Landroid/view/animation/Animation;
    const/16 v1, 0x18

    if-eq p2, v1, :cond_1b

    const/16 v1, 0x19

    if-eq p2, v1, :cond_d

    packed-switch p2, :pswitch_data_2a

    goto :goto_29

    .line 155
    :cond_d
    :pswitch_d
    if-eqz p3, :cond_13

    .line 156
    const v1, 0x10a000e

    goto :goto_16

    :cond_13
    const v1, 0x10a0010

    .line 155
    :goto_16
    invoke-virtual {p4, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_29

    .line 148
    :cond_1b
    :pswitch_1b
    if-eqz p3, :cond_21

    .line 149
    const v1, 0x10a0012

    goto :goto_24

    :cond_21
    const v1, 0x10a0014

    .line 148
    :goto_24
    invoke-virtual {p4, p1, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 150
    nop

    .line 159
    :goto_29
    return-object v0

    :pswitch_data_2a
    .packed-switch 0x6
        :pswitch_1b
        :pswitch_d
        :pswitch_1b
        :pswitch_d
        :pswitch_1b
        :pswitch_d
    .end packed-switch
.end method

.method loadMinimizeAnimationLocked(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "sourceFrame"    # Landroid/graphics/Rect;
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 218
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 220
    .local v0, "targetPoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mBubbleContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 223
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    const/4 v2, 0x0

    invoke-static {v2, v1, p2, p3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 226
    .local v1, "minimizeAnimation":Landroid/view/animation/Animation;
    new-instance v2, Lcom/android/server/wm/FreeformWindowController$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/FreeformWindowController$1;-><init>(Lcom/android/server/wm/FreeformWindowController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 237
    return-object v1
.end method

.method loadRestoreAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "targetFrame"    # Landroid/graphics/Rect;
    .param p2, "surfaceInsets"    # Landroid/graphics/Rect;

    .line 241
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 243
    .local v0, "sourcePoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mBubbleContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 246
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    const/4 v2, 0x1

    invoke-static {v2, v1, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->createMinimizeAnimation(ZLandroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method onConfigurationChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 113
    .local v1, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 114
    const v2, 0x105010a

    goto :goto_1d

    .line 115
    :cond_1a
    const v2, 0x1050146

    .line 113
    :goto_1d
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 116
    .local v2, "radius":I
    iget-object v3, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    .end local v2    # "radius":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 119
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_5f

    .line 120
    const v2, 0x10503b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 122
    .local v2, "insetTop":I
    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 123
    const v3, 0x10503b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "handlerImageHeight":I
    goto :goto_52

    .line 125
    .end local v3    # "handlerImageHeight":I
    :cond_4b
    const v3, 0x10503b0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 128
    .restart local v3    # "handlerImageHeight":I
    :goto_52
    add-int v4, v3, v2

    iput v4, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformTopOffset:I

    .line 129
    const v4, 0x10503b2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformHandlerSideOffset:I

    .line 131
    .end local v2    # "insetTop":I
    .end local v3    # "handlerImageHeight":I
    :cond_5f
    return-void
.end method

.method onDisplayRemovedLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mFreeformCornerRadius:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 137
    return-void
.end method

.method onWindowRemovedLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mForceHiddenFreeformWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method reportBubbleContainerPoint(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 210
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mBubbleContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mBubbleContainerPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 213
    :cond_d
    return-void
.end method

.method setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "alpha"    # F

    .line 402
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_e

    goto :goto_3a

    .line 406
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 407
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getActivityRecord(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 408
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 409
    .local v2, "task":Lcom/android/server/wm/Task;
    :goto_24
    if-eqz v2, :cond_2f

    .line 410
    iput p2, v2, Lcom/android/server/wm/Task;->mFreeformAlpha:F

    .line 411
    iget-object v3, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 413
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 414
    return-void

    .line 413
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 403
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFreeformAlpha: warning alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformWindowController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method setFreeformWindowingModeByCornerGestureLocked(ILandroid/graphics/Rect;)V
    .registers 10
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 495
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_ce

    .line 497
    .local v0, "task":Lcom/android/server/wm/Task;
    const-string v2, "FreeformWindowController"

    if-nez v0, :cond_38

    .line 498
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFreeformWindowingModeByCornerGestureLocked: taskId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_ce

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 499
    return-void

    .line 502
    :cond_38
    :try_start_38
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_80

    .line 503
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 504
    .local v1, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_53

    .line 505
    const-string/jumbo v3, "setFreeformWindowingModeByCornerGestureLocked: root activity not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_ce

    .line 541
    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 506
    return-void

    .line 508
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 509
    .local v2, "rootActivityTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_7f

    .line 510
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 511
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-eqz v5, :cond_66

    goto :goto_77

    .line 515
    :cond_66
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 516
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 517
    invoke-virtual {v2, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I
    :try_end_76
    .catchall {:try_start_53 .. :try_end_76} :catchall_ce

    goto :goto_7f

    .line 541
    :cond_77
    :goto_77
    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 512
    return-void

    .line 519
    .end local v1    # "root":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "rootActivityTask":Lcom/android/server/wm/Task;
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    :cond_7f
    :goto_7f
    goto :goto_c5

    .line 520
    :cond_80
    :try_start_80
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 521
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_94

    .line 522
    const-string/jumbo v1, "setFreeformWindowingModeByCornerGestureLocked: stack not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_ce

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 523
    return-void

    .line 526
    :cond_94
    :try_start_94
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    .line 527
    .local v2, "stackWindowingMode":I
    const/4 v5, 0x0

    if-eq v2, v4, :cond_ae

    .line 528
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 529
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 531
    if-eqz p2, :cond_a9

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 532
    :cond_a9
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    move-object p2, v4

    .line 536
    :cond_ae
    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4, v1}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 537
    iget-object v4, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 538
    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_c5
    .catchall {:try_start_94 .. :try_end_c5} :catchall_ce

    .line 541
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "stackWindowingMode":I
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_c5
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 542
    nop

    .line 543
    return-void

    .line 541
    :catchall_ce
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 542
    throw v0
.end method

.method public startResizingFreeformTaskLocked(IIZI)Z
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isPointerInput"    # Z
    .param p4, "displayId"    # I

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 386
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_f

    .line 387
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 388
    .local v1, "targetTask":Lcom/android/server/wm/Task;
    :goto_10
    if-nez v1, :cond_1c

    .line 389
    const-string v2, "FreeformWindowController"

    const-string/jumbo v3, "startResizingFreeformTask: failed, targetTask is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v2, 0x0

    return v2

    .line 392
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/FreeformWindowController;->mWm:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    .line 393
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    const/4 v5, 0x1

    .line 394
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v6

    int-to-float v7, p1

    int-to-float v8, p2

    .line 392
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v2

    return v2
.end method
