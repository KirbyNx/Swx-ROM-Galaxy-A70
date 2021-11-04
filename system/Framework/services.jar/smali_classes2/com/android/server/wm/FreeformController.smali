.class public Lcom/android/server/wm/FreeformController;
.super Ljava/lang/Object;
.source "FreeformController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FreeformController$H;
    }
.end annotation


# static fields
.field static final ADJUST_FREEFROM_DISPLAY_INSET_PX:I = 0x8

.field private static final DEBUG:Z

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.85f

.field public static final FREEFORM_DEFAULT_SIZE_RATIO_FOR_MULTI_SPLIT:F = 0.45f

.field public static final FREEFORM_DEFAULT_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final MAX_BOUNDS_CONFLICT_COUNT:I = 0xc8

.field private static final MAX_DEX_FREEFORM_DEFAULT_CNT:I = 0x14

.field private static final MAX_FREEFORM_DEFAULT_CNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "FreeformController"

.field private static sExceptDisplayForAlwaysOnTop:Ljava/util/List;


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/multiwindow/IFreeformCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mH:Lcom/android/server/wm/FreeformController$H;

.field private mMaxDexFreeformOverWrittenCnt:I

.field private mMaxFreeformOverWrittenCnt:I

.field private final mMinimizeContainerServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

.field private final mSmartPopupViewServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/FreeformController;->DEBUG:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/FreeformController;->sExceptDisplayForAlwaysOnTop:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    .line 102
    iput v0, p0, Lcom/android/server/wm/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    .line 111
    iput-object p1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 112
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 114
    new-instance v0, Lcom/android/server/wm/MinimizeContainerServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/wm/MinimizeContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

    .line 117
    new-instance v0, Lcom/android/server/wm/SmartPopupViewServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/wm/SmartPopupViewServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FreeformController;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/BubbleContainerServiceBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FreeformController;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/BubbleContainerServiceBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FreeformController;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FreeformController;

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 23
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "fromDisplayBounds"    # Landroid/graphics/Rect;
    .param p3, "toDisplayBounds"    # Landroid/graphics/Rect;
    .param p4, "taskBounds"    # Landroid/graphics/Rect;
    .param p5, "outBounds"    # Landroid/graphics/Rect;
    .param p6, "resize"    # Z

    .line 497
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 498
    return-void

    .line 500
    :cond_d
    const/4 v3, 0x0

    .line 501
    .local v3, "offsetX":I
    const/4 v4, 0x0

    .line 502
    .local v4, "offsetY":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    .line 503
    const/16 v5, 0x8

    .line 504
    .local v5, "alignmentOffset":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge v6, v7, :cond_22

    move v6, v8

    goto :goto_23

    :cond_22
    move v6, v9

    .line 505
    .local v6, "needResizeWidth":Z
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v7, v10, :cond_2e

    goto :goto_2f

    :cond_2e
    move v8, v9

    :goto_2f
    move v7, v8

    .line 506
    .local v7, "needResizeHeight":Z
    const/16 v8, 0x8

    if-nez v6, :cond_7f

    if-eqz v7, :cond_37

    goto :goto_7f

    .line 542
    :cond_37
    iget v10, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 543
    .local v10, "leftRatio":F
    iget v11, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 544
    .local v11, "topRatio":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v10

    float-to-int v3, v12

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v11

    float-to-int v4, v12

    .line 546
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v2, v9, v9, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 547
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v11, p0

    move-object/from16 v15, p1

    goto/16 :goto_135

    .line 507
    .end local v10    # "leftRatio":F
    .end local v11    # "topRatio":F
    :cond_7f
    :goto_7f
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 508
    .local v10, "stableInsets":Landroid/graphics/Rect;
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12, v9, v10}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 509
    if-eqz v6, :cond_a0

    .line 510
    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v12

    add-int/2addr v9, v8

    iput v9, v2, Landroid/graphics/Rect;->left:I

    .line 511
    iget v9, v0, Landroid/graphics/Rect;->right:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v12

    sub-int/2addr v9, v8

    iput v9, v2, Landroid/graphics/Rect;->right:I

    goto :goto_c3

    .line 513
    :cond_a0
    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v9, v12

    .line 514
    .local v9, "leftRatio":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v3, v12

    .line 515
    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 516
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int/2addr v12, v3

    iput v12, v2, Landroid/graphics/Rect;->right:I

    .line 518
    .end local v9    # "leftRatio":F
    :goto_c3
    if-eqz v7, :cond_d6

    .line 519
    iget v9, v0, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v12

    add-int/2addr v9, v8

    iput v9, v2, Landroid/graphics/Rect;->top:I

    .line 520
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v12

    sub-int/2addr v9, v8

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_f9

    .line 522
    :cond_d6
    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v9, v12

    .line 523
    .local v9, "topRatio":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v9

    float-to-int v4, v12

    .line 524
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 525
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v12, v4

    iput v12, v2, Landroid/graphics/Rect;->bottom:I

    .line 528
    .end local v9    # "topRatio":F
    :goto_f9
    const/4 v3, 0x0

    .line 529
    const/4 v4, 0x0

    .line 530
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 531
    .local v9, "prevWidth":I
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 532
    .local v12, "prevHeight":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 532
    move-object/from16 v15, p1

    invoke-virtual {v15, v2, v13, v14}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 534
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-eq v9, v13, :cond_123

    .line 535
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v13, v9

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v3, v13

    .line 537
    :cond_123
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-eq v12, v13, :cond_131

    .line 538
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v13, v12

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v4, v13

    .line 540
    :cond_131
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 541
    .end local v9    # "prevWidth":I
    .end local v10    # "stableInsets":Landroid/graphics/Rect;
    .end local v12    # "prevHeight":I
    nop

    .line 550
    :goto_135
    const/4 v3, 0x0

    .line 551
    const/4 v4, 0x0

    .line 552
    iget v9, v2, Landroid/graphics/Rect;->left:I

    if-le v8, v9, :cond_140

    .line 553
    iget v9, v2, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 v3, v9, 0x8

    goto :goto_14e

    .line 554
    :cond_140
    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v8

    iget v10, v2, Landroid/graphics/Rect;->right:I

    if-ge v9, v10, :cond_14e

    .line 555
    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v8

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v9, v10

    .line 557
    :cond_14e
    :goto_14e
    iget v9, v2, Landroid/graphics/Rect;->top:I

    if-le v8, v9, :cond_157

    .line 558
    iget v9, v2, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v4, v9, 0x8

    goto :goto_165

    .line 559
    :cond_157
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v8

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v10, :cond_165

    .line 560
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v8

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v8

    .line 562
    :cond_165
    :goto_165
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 563
    return-void
.end method

.method private getMaxVisibleFreeformCntLocked(Z)I
    .registers 3
    .param p1, "isDexMode"    # Z

    .line 354
    iget v0, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    if-lez v0, :cond_5

    .line 355
    goto :goto_6

    :cond_5
    const/4 v0, 0x5

    .line 357
    .local v0, "maxVisibleFreeformCnt":I
    :goto_6
    return v0
.end method

.method private hasConfigChangesToResize(I)Z
    .registers 4
    .param p1, "changes"    # I

    .line 482
    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 483
    return v1

    .line 485
    :cond_6
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    .line 486
    return v1

    .line 488
    :cond_c
    and-int/lit16 v0, p1, 0x1c00

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private isVisibleFreeformStackLocked(Lcom/android/server/wm/ActivityStack;)Z
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 404
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic lambda$makeMaxCountToastLocked$0(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "toastContext"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 422
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 423
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 424
    return-void
.end method

.method static synthetic lambda$performDisplayOverrideConfigUpdate$1(ZZFFLcom/android/server/wm/Task;)V
    .registers 6
    .param p0, "densityChanged"    # Z
    .param p1, "shouldResize"    # Z
    .param p2, "scaleW"    # F
    .param p3, "scaleH"    # F
    .param p4, "task"    # Lcom/android/server/wm/Task;

    .line 468
    if-eqz p0, :cond_5

    .line 469
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 471
    :cond_5
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p4}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_19

    .line 474
    :cond_12
    if-nez p1, :cond_15

    .line 475
    return-void

    .line 477
    :cond_15
    invoke-virtual {p4, p2, p3}, Lcom/android/server/wm/Task;->resize(FF)V

    .line 478
    return-void

    .line 472
    :cond_19
    :goto_19
    return-void
.end method

.method private makeMaxCountToastLocked(Landroid/view/Display;ZI)V
    .registers 10
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "isDexMode"    # Z
    .param p3, "maxCount"    # I

    .line 409
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 411
    .local v0, "themeContext":Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    .line 417
    .local v1, "toastContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 418
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x10404b6

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$FreeformController$ApeKIQl0LjezaaWbJ0uOJI90Sms;

    invoke-direct {v4, v1, v2}, Lcom/android/server/wm/-$$Lambda$FreeformController$ApeKIQl0LjezaaWbJ0uOJI90Sms;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/FreeformController$H;->post(Ljava/lang/Runnable;)Z

    .line 425
    return-void
.end method

.method static useAlwaysOnTopFreeform(ILcom/android/server/wm/DisplayContent;)Z
    .registers 5
    .param p0, "windowingMode"    # I
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 339
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    sget-object v1, Lcom/android/server/wm/FreeformController;->sExceptDisplayForAlwaysOnTop:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 343
    const/4 v1, 0x5

    if-ne p0, v1, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    .line 341
    :cond_18
    return v0
.end method


# virtual methods
.method bindBubbleContainerService(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleBindMinimizeContainerService(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleBindSmartPopupViewService(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 632
    const-string v0, "[FreeformController]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mMinimizeContainerServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mSmartPopupViewServiceBinder:Lcom/android/server/wm/BubbleContainerServiceBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BubbleContainerServiceBinder;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 643
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/FreeformWindowController;->dumplocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 646
    return-void
.end method

.method getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v1

    monitor-enter v1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getFreeformStacks(I)Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "freeformStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityStack;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    .line 196
    .local v4, "freeformStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isMinimized()Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v5, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v6, v4, Lcom/android/server/wm/ActivityStack;->mUserId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 198
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v4    # "freeformStack":Lcom/android/server/wm/ActivityStack;
    :cond_41
    goto :goto_1c

    .line 201
    .end local v2    # "freeformStacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityStack;>;"
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 202
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 201
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public initialize()V
    .registers 3

    .line 123
    new-instance v0, Lcom/android/server/wm/FreeformController$H;

    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FreeformController$H;-><init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    .line 124
    return-void
.end method

.method public synthetic lambda$updateFreeformBoundsForLidStateChanged$2$FreeformController(ZZLandroid/graphics/Rect;Lcom/android/server/wm/Task;)V
    .registers 13
    .param p1, "isLidOpened"    # Z
    .param p2, "isPortrait"    # Z
    .param p3, "nextBounds"    # Landroid/graphics/Rect;
    .param p4, "task"    # Lcom/android/server/wm/Task;

    .line 572
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_53

    invoke-virtual {p4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_53

    .line 573
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 574
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 575
    .local v0, "prevBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_20

    .line 576
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    move-object v3, v1

    goto :goto_29

    .line 577
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    move-object v3, v1

    :goto_29
    nop

    .line 578
    .local v3, "fromDisplayBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_36

    .line 579
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    move-object v4, v1

    goto :goto_3f

    .line 580
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v1

    move-object v4, v1

    :goto_3f
    nop

    .line 581
    .local v4, "toDisplayBounds":Landroid/graphics/Rect;
    xor-int/lit8 v7, p1, 0x1

    move-object v1, p0

    move-object v2, p4

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/FreeformController;->calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 583
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 584
    const/4 v1, 0x0

    invoke-virtual {p4, p3, v1, v1}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 587
    .end local v0    # "prevBounds":Landroid/graphics/Rect;
    .end local v3    # "fromDisplayBounds":Landroid/graphics/Rect;
    .end local v4    # "toDisplayBounds":Landroid/graphics/Rect;
    :cond_53
    return-void
.end method

.method minimizeExcessiveAllVisibleFreeformLocked()V
    .registers 7

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    .line 362
    .local v0, "displayCount":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_9
    if-ge v1, v0, :cond_35

    .line 363
    iget-object v2, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 364
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_20

    .line 365
    const-string v3, "FreeformController"

    const-string/jumbo v4, "minimizeAllFreeformLocked: activityDisplay is null."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 368
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v3

    .line 369
    .local v3, "tdaCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "tdaNdx":I
    :goto_26
    if-ltz v4, :cond_32

    .line 370
    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 371
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 369
    .end local v5    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 362
    .end local v2    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3    # "tdaCount":I
    .end local v4    # "tdaNdx":I
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 374
    .end local v1    # "displayNdx":I
    :cond_35
    return-void
.end method

.method minimizeExcessiveVisibleFreeformLocked(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 12
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 378
    nop

    .line 379
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 380
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 381
    .local v1, "homeStackIdx":I
    iget-object v2, p1, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isDexMode()Z

    move-result v2

    .line 382
    .local v2, "isDexMode":Z
    invoke-direct {p0, v2}, Lcom/android/server/wm/FreeformController;->getMaxVisibleFreeformCntLocked(Z)I

    move-result v3

    .line 384
    .local v3, "maxVisibleFreeformCnt":I
    const/4 v4, 0x0

    .line 385
    .local v4, "visibleFreeformCnt":I
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v5

    .line 386
    .local v5, "numStacks":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "stackNdx":I
    :goto_1c
    if-le v6, v1, :cond_37

    .line 387
    invoke-virtual {p1, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 389
    .local v7, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v7}, Lcom/android/server/wm/FreeformController;->isVisibleFreeformStackLocked(Lcom/android/server/wm/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 390
    add-int/lit8 v4, v4, 0x1

    .line 391
    if-le v4, v3, :cond_34

    .line 392
    iget-object v8, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/android/server/wm/MultiTaskingController;->minimizeTaskLocked(Lcom/android/server/wm/Task;Z)Z

    .line 386
    .end local v7    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_34
    add-int/lit8 v6, v6, -0x1

    goto :goto_1c

    .line 396
    .end local v6    # "stackNdx":I
    :cond_37
    if-le v4, v3, :cond_44

    .line 397
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 398
    .local v6, "display":Landroid/view/Display;
    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/wm/FreeformController;->makeMaxCountToastLocked(Landroid/view/Display;ZI)V

    .line 401
    .end local v0    # "homeStack":Lcom/android/server/wm/ActivityStack;
    .end local v1    # "homeStackIdx":I
    .end local v2    # "isDexMode":Z
    .end local v3    # "maxVisibleFreeformCnt":I
    .end local v4    # "visibleFreeformCnt":I
    .end local v5    # "numStacks":I
    .end local v6    # "display":Landroid/view/Display;
    :cond_44
    return-void
.end method

.method notifyFreeformMinimizeAnimationEnd(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 183
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 184
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v2, 0xcb

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/FreeformController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/FreeformController$H;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method

.method notifyFreeformMinimizeStateChanged(Lcom/android/server/wm/Task;Z)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "minimize"    # Z

    .line 171
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 172
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 173
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 174
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    if-eqz p2, :cond_17

    const/16 v2, 0xc9

    goto :goto_19

    .line 176
    :cond_17
    const/16 v2, 0xca

    .line 175
    :goto_19
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/FreeformController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/FreeformController$H;->sendMessage(Landroid/os/Message;)Z

    .line 177
    return-void
.end method

.method performDisplayOverrideConfigUpdate(IIFF)V
    .registers 9
    .param p1, "changes"    # I
    .param p2, "displayId"    # I
    .param p3, "scaleW"    # F
    .param p4, "scaleH"    # F

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 462
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_b

    .line 463
    return-void

    .line 465
    :cond_b
    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 466
    .local v1, "densityChanged":Z
    :goto_12
    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformController;->hasConfigChangesToResize(I)Z

    move-result v2

    .line 467
    .local v2, "shouldResize":Z
    new-instance v3, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;

    invoke-direct {v3, v1, v2, p3, p4}, Lcom/android/server/wm/-$$Lambda$FreeformController$HMtwelHCo0Ht1wWqdNzoiYauPE0;-><init>(ZZFF)V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 479
    return-void
.end method

.method registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 4
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 157
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method scheduleBindMinimizeContainerService(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FreeformController$H;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method scheduleBindSmartPopupViewService(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FreeformController$H;->sendMessage(Landroid/os/Message;)Z

    .line 145
    return-void
.end method

.method scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FreeformController$H;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method scheduleUnbindSmartPopupViewService(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FreeformController$H;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method

.method setMaxVisibleFreeformCountForDex(II)V
    .registers 5
    .param p1, "maxPhoneCount"    # I
    .param p2, "maxDexCount"    # I

    .line 446
    const/4 v0, -0x1

    if-lez p1, :cond_5

    move v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    iput v1, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    .line 447
    if-lez p2, :cond_b

    move v0, p2

    :cond_b
    iput v0, p0, Lcom/android/server/wm/FreeformController;->mMaxDexFreeformOverWrittenCnt:I

    .line 449
    sget-boolean v0, Lcom/android/server/wm/FreeformController;->DEBUG:Z

    if-eqz v0, :cond_3c

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxVisibleFreeformCount: mMaxFreeformOverWrittenCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FreeformController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 453
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    const-string v1, "FreeformController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/FreeformController;->minimizeExcessiveAllVisibleFreeformLocked()V

    .line 456
    return-void
.end method

.method showNotSupportMultiWindowToast(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 208
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1b

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNotSupportMultiWindowToast: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController$H;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mH:Lcom/android/server/wm/FreeformController$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController$H;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method

.method unbindBubbleContainerService(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindSmartPopupViewService(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 4
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 163
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method updateFreeformBoundsForDisplayDeviceTypeChanged(Lcom/android/server/wm/Task;)V
    .registers 24
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 591
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_c4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_e

    goto/16 :goto_c4

    .line 594
    :cond_e
    iget-object v0, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 595
    .local v9, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    .line 596
    .local v10, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack;->getLastMinimizedDisplayType()I

    move-result v11

    .line 597
    .local v11, "lastMinimizedDisplayType":I
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityStack;->getLastMinimizedRotation()I

    move-result v12

    .line 598
    .local v12, "lastMinimizedRotation":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_c3

    iget v1, v9, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v11, v1, :cond_c3

    .line 600
    iget-object v1, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 601
    .local v13, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v1, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v14

    .line 602
    .local v14, "curRotation":I
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 603
    .local v15, "curDisplayBounds":Landroid/graphics/Rect;
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v6, 0x0

    if-gt v1, v2, :cond_46

    const/4 v1, 0x1

    goto :goto_47

    :cond_46
    move v1, v6

    :goto_47
    move v5, v1

    .line 604
    .local v5, "isPortrait":Z
    iget v1, v9, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v1, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    move v1, v6

    :goto_4f
    move/from16 v16, v1

    .line 606
    .local v16, "isLidOpened":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 607
    .local v2, "prevBounds":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 608
    .local v1, "nextBounds":Landroid/graphics/Rect;
    if-eqz v16, :cond_65

    .line 609
    iget-object v3, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_6d

    .line 610
    :cond_65
    iget-object v3, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v3

    :goto_6d
    nop

    .line 611
    .local v3, "fromDisplayBounds":Landroid/graphics/Rect;
    if-eqz v16, :cond_79

    .line 612
    iget-object v4, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/MultiWindowFoldController;->getMainDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_81

    .line 613
    :cond_79
    iget-object v4, v7, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowFoldController:Lcom/android/server/wm/MultiWindowFoldController;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/MultiWindowFoldController;->getCoverDisplayBounds(Z)Landroid/graphics/Rect;

    move-result-object v4

    :goto_81
    move-object/from16 v18, v3

    .end local v3    # "fromDisplayBounds":Landroid/graphics/Rect;
    .local v18, "fromDisplayBounds":Landroid/graphics/Rect;
    move-object v3, v4

    .line 615
    .local v3, "toDisplayBounds":Landroid/graphics/Rect;
    if-eq v12, v0, :cond_92

    if-eq v14, v0, :cond_92

    if-eq v12, v14, :cond_92

    .line 617
    iget-object v0, v13, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v4, v18

    .end local v18    # "fromDisplayBounds":Landroid/graphics/Rect;
    .local v4, "fromDisplayBounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v4, v12, v14, v2}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    goto :goto_94

    .line 615
    .end local v4    # "fromDisplayBounds":Landroid/graphics/Rect;
    .restart local v18    # "fromDisplayBounds":Landroid/graphics/Rect;
    :cond_92
    move-object/from16 v4, v18

    .line 620
    .end local v18    # "fromDisplayBounds":Landroid/graphics/Rect;
    .restart local v4    # "fromDisplayBounds":Landroid/graphics/Rect;
    :goto_94
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->updateMinMaxSizeIfNeeded()V

    .line 621
    if-nez v16, :cond_9c

    const/16 v17, 0x1

    goto :goto_9e

    :cond_9c
    move/from16 v17, v6

    :goto_9e
    move-object/from16 v0, p0

    move-object/from16 v18, v1

    .end local v1    # "nextBounds":Landroid/graphics/Rect;
    .local v18, "nextBounds":Landroid/graphics/Rect;
    move-object/from16 v1, p1

    move-object/from16 v19, v2

    .end local v2    # "prevBounds":Landroid/graphics/Rect;
    .local v19, "prevBounds":Landroid/graphics/Rect;
    move-object v2, v4

    move-object/from16 v20, v4

    .end local v4    # "fromDisplayBounds":Landroid/graphics/Rect;
    .local v20, "fromDisplayBounds":Landroid/graphics/Rect;
    move-object/from16 v4, v19

    move/from16 v21, v5

    .end local v5    # "isPortrait":Z
    .local v21, "isPortrait":Z
    move-object/from16 v5, v18

    move v7, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/FreeformController;->calculateFreeformBoundsForLidStateChanged(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 623
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c1

    .line 624
    move-object/from16 v0, v18

    .end local v18    # "nextBounds":Landroid/graphics/Rect;
    .local v0, "nextBounds":Landroid/graphics/Rect;
    invoke-virtual {v8, v0, v7, v7}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    goto :goto_c3

    .line 623
    .end local v0    # "nextBounds":Landroid/graphics/Rect;
    .restart local v18    # "nextBounds":Landroid/graphics/Rect;
    :cond_c1
    move-object/from16 v0, v18

    .line 627
    .end local v3    # "toDisplayBounds":Landroid/graphics/Rect;
    .end local v13    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "curRotation":I
    .end local v15    # "curDisplayBounds":Landroid/graphics/Rect;
    .end local v16    # "isLidOpened":Z
    .end local v18    # "nextBounds":Landroid/graphics/Rect;
    .end local v19    # "prevBounds":Landroid/graphics/Rect;
    .end local v20    # "fromDisplayBounds":Landroid/graphics/Rect;
    .end local v21    # "isPortrait":Z
    :cond_c3
    :goto_c3
    return-void

    .line 592
    .end local v9    # "globalConfig":Landroid/content/res/Configuration;
    .end local v10    # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v11    # "lastMinimizedDisplayType":I
    .end local v12    # "lastMinimizedRotation":I
    :cond_c4
    :goto_c4
    return-void
.end method

.method updateFreeformBoundsForLidStateChanged(Z)V
    .registers 7
    .param p1, "isLidOpened"    # Z

    .line 566
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 567
    .local v0, "nextBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/FreeformController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 568
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 569
    .local v2, "curDisplayBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 571
    .local v3, "isPortrait":Z
    :goto_1e
    new-instance v4, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;

    invoke-direct {v4, p0, p1, v3, v0}, Lcom/android/server/wm/-$$Lambda$FreeformController$MiDyz_WrFLglf4kegTrE3zhi5m8;-><init>(Lcom/android/server/wm/FreeformController;ZZLandroid/graphics/Rect;)V

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 588
    return-void
.end method
