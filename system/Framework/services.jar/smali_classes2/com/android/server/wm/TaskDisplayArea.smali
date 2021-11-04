.class final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;,
        Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/ActivityStack;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

.field private mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

.field mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

.field mLaunchRootTask:Lcom/android/server/wm/Task;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

.field private mRemoved:Z

.field private mRootHomeTask:Lcom/android/server/wm/ActivityStack;

.field private mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

.field private mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

.field private mRootSplitScreenCellTask:Lcom/android/server/wm/ActivityStack;

.field private mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mSkipSplitScreenChangeTransition:Z

.field private mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportMultiWindowTransitionListener:Z

.field mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

.field private final mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

.field private final mTmpFreeformStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpHomeStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpLayerForAnimationLayer:I

.field private mTmpLayerForSplitScreenDividerAnchor:I

.field private final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field private final mTmpNormalStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 7
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "displayAreaFeature"    # I

    .line 202
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    .line 142
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformStacks:Ljava/util/ArrayList;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 156
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 165
    new-instance v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-direct {v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 188
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 192
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    .line 196
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    .line 203
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 204
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 205
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 207
    iput-boolean v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSupportMultiWindowTransitionListener:Z

    .line 210
    if-eqz v1, :cond_63

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskDisplayArea$MultiWindowTransitionListener;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 214
    :cond_63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 97
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->handleTaskStackOrdering()V

    return-void
.end method

.method private adjustFreeformTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "startLayer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;I)I"
        }
    .end annotation

    .line 897
    .local p2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 898
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 899
    .local v0, "stackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_25

    .line 900
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 901
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityStack;->mBoostStackLayerForAppTransition:Z

    if-nez v3, :cond_1d

    .line 902
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "startLayer":I
    .local v3, "startLayer":I
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move p3, v3

    goto :goto_22

    .line 904
    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    :cond_1d
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 899
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 908
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 909
    .local v1, "zBoostSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_43

    .line 910
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 911
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "startLayer":I
    .local v4, "startLayer":I
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 909
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, 0x1

    move p3, v4

    goto :goto_2c

    .line 913
    .end local v2    # "i":I
    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    :cond_43
    return p3
.end method

.method private adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I
    .registers 4
    .param p1, "s"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "layer"    # I

    .line 841
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 842
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isPairTask()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 844
    :cond_c
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "layer":I
    .local v0, "layer":I
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    move p2, v0

    .line 846
    .end local v0    # "layer":I
    .restart local p2    # "layer":I
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isTaskAnimating()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAppTransitioning()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_23

    .line 852
    :cond_1e
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "layer":I
    .restart local v0    # "layer":I
    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    move p2, v0

    .line 854
    .end local v0    # "layer":I
    .restart local p2    # "layer":I
    :goto_23
    return p2
.end method

.method private adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I
    .registers 10
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "startLayer"    # I
    .param p4, "normalStacks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;IZ)I"
        }
    .end annotation

    .line 867
    .local p2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 868
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 869
    .local v0, "stackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_2e

    .line 870
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    .line 871
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_26

    .line 872
    add-int/lit8 v3, p3, 0x1

    .end local p3    # "startLayer":I
    .local v3, "startLayer":I
    invoke-virtual {v2, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 873
    if-eqz p4, :cond_24

    .line 874
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    goto :goto_2b

    .line 873
    .end local p3    # "startLayer":I
    .restart local v3    # "startLayer":I
    :cond_24
    move p3, v3

    goto :goto_2b

    .line 877
    .end local v3    # "startLayer":I
    .restart local p3    # "startLayer":I
    :cond_26
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    .line 869
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 881
    .end local v1    # "i":I
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    .line 882
    .local v1, "zBoostSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_35
    if-ge v2, v1, :cond_53

    .line 883
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 884
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "startLayer":I
    .local v4, "startLayer":I
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/ActivityStack;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 885
    if-eqz p4, :cond_4f

    .line 886
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustNormalStackLayer(Lcom/android/server/wm/ActivityStack;I)I

    move-result p3

    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    goto :goto_50

    .line 885
    .end local p3    # "startLayer":I
    .restart local v4    # "startLayer":I
    :cond_4f
    move p3, v4

    .line 882
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "startLayer":I
    .restart local p3    # "startLayer":I
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 889
    .end local v2    # "i":I
    :cond_53
    return p3
.end method

.method private findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .registers 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_22

    .line 537
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 540
    .local v3, "curr":Lcom/android/server/wm/ActivityStack;
    if-ne v3, p1, :cond_12

    move v2, v1

    .line 541
    .local v2, "sameStack":Z
    :cond_12
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-gt v4, v5, :cond_1f

    if-nez v2, :cond_1f

    .line 552
    return v0

    .line 536
    .end local v2    # "sameStack":Z
    .end local v3    # "curr":Lcom/android/server/wm/ActivityStack;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 556
    .end local v0    # "i":I
    :cond_22
    return v2
.end method

.method private findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I
    .registers 6
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 514
    const/high16 v0, -0x80000000

    .line 515
    .local v0, "minPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/ActivityStack;)I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 517
    move v0, v1

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 523
    .end local v1    # "i":I
    :cond_1d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 528
    .local v1, "currentIndex":I
    if-le v1, v0, :cond_2a

    .line 529
    move v0, v1

    .line 532
    .end local v1    # "currentIndex":I
    :cond_2a
    return v0
.end method

.method private findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I
    .registers 8
    .param p1, "requestedPosition"    # I
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "adding"    # Z

    .line 580
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    .line 582
    .local v0, "maxPosition":I
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForStack(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 586
    .local v1, "minPosition":I
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_14

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    goto :goto_19

    .line 588
    :cond_14
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_19

    .line 589
    const/4 p1, 0x0

    .line 592
    :cond_19
    :goto_19
    move v2, p1

    .line 593
    .local v2, "targetPosition":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 594
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 596
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 602
    .local v3, "prevPosition":I
    if-eq v2, p1, :cond_30

    if-nez p3, :cond_2e

    if-ge v2, v3, :cond_30

    .line 603
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 606
    :cond_30
    return v2
.end method

.method private forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 10
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 636
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_31

    .line 637
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_30

    .line 638
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 639
    .local v2, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "j":I
    :goto_1b
    if-ltz v3, :cond_2d

    .line 640
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 642
    return v0

    .line 639
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 637
    .end local v2    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "j":I
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1    # "i":I
    :cond_30
    goto :goto_5e

    .line 647
    :cond_31
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 648
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v1, :cond_5e

    .line 649
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 650
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 651
    .local v4, "appTokensCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_49
    if-ge v5, v4, :cond_5b

    .line 652
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/ActivityRecord;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 654
    return v0

    .line 651
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 648
    .end local v3    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4    # "appTokensCount":I
    .end local v5    # "j":I
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 659
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    return v0
.end method

.method private getPriority(Lcom/android/server/wm/ActivityStack;)I
    .registers 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    return v0

    .line 507
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    return v0

    .line 508
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    return v0

    .line 509
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    return v0

    .line 510
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method static getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .registers 4
    .param p0, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2241
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 2242
    .local v1, "index":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return-object v2
.end method

.method private handleTaskStackOrdering()V
    .registers 14

    .line 2481
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_5

    return-void

    .line 2483
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2484
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 2485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove the stack("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") without DisplayContent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->removeImmediately()V

    .line 2487
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    .line 2488
    return-void

    .line 2491
    :cond_31
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    .line 2492
    .local v2, "task":Lcom/android/server/wm/ActivityStack;
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    .line 2494
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    .line 2495
    .local v10, "defaultTaskArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 2496
    .local v11, "home":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    .line 2497
    .local v12, "homeParent":Lcom/android/server/wm/WindowContainer;
    if-eqz v12, :cond_47

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2498
    .local v1, "homeParentTask":Lcom/android/server/wm/Task;
    :cond_47
    if-nez v1, :cond_58

    .line 2499
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, v10, :cond_53

    .line 2500
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_73

    .line 2502
    :cond_53
    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_73

    .line 2504
    :cond_58
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v1, v3, :cond_65

    .line 2505
    move-object v3, v1

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_73

    .line 2507
    :cond_65
    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "handleTaskStackOrdering"

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2511
    :goto_73
    return-void
.end method

.method private isDismissingSplitScreenOrWindowingModeChanging()Z
    .registers 8

    .line 2517
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2518
    .local v0, "home":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    if-nez v0, :cond_e

    goto :goto_31

    .line 2522
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2523
    .local v1, "homeParent":Lcom/android/server/wm/WindowContainer;
    if-ne v1, p0, :cond_15

    .line 2524
    return v2

    .line 2527
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2528
    .local v3, "secondaryRoot":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2529
    .local v4, "cellRoot":Lcom/android/server/wm/ActivityStack;
    const/4 v5, 0x1

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2530
    return v5

    .line 2532
    :cond_27
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2533
    return v5

    .line 2535
    :cond_30
    return v2

    .line 2519
    .end local v1    # "homeParent":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "secondaryRoot":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "cellRoot":Lcom/android/server/wm/ActivityStack;
    :cond_31
    :goto_31
    return v2
.end method

.method private static isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I

    .line 2144
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p1, :cond_f

    :cond_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .registers 10
    .param p1, "windowingMode"    # I
    .param p2, "supportsMultiWindow"    # Z
    .param p3, "supportsSplitScreen"    # Z
    .param p4, "supportsFreeform"    # Z
    .param p5, "supportsPip"    # Z
    .param p6, "activityType"    # I

    .line 1847
    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    if-ne p1, v0, :cond_6

    goto :goto_2c

    .line 1851
    :cond_6
    const/4 v1, 0x0

    if-nez p2, :cond_a

    .line 1852
    return v1

    .line 1855
    :cond_a
    const/4 v2, 0x6

    if-ne p1, v2, :cond_e

    .line 1856
    return v0

    .line 1859
    :cond_e
    const/4 v2, 0x3

    if-eq p1, v2, :cond_21

    const/4 v2, 0x4

    if-eq p1, v2, :cond_21

    .line 1868
    if-nez p4, :cond_1a

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1a

    .line 1869
    return v1

    .line 1872
    :cond_1a
    if-nez p5, :cond_20

    const/4 v2, 0x2

    if-ne p1, v2, :cond_20

    .line 1873
    return v1

    .line 1875
    :cond_20
    return v0

    .line 1864
    :cond_21
    if-eqz p3, :cond_2a

    .line 1865
    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 1864
    :goto_2b
    return v0

    .line 1849
    :cond_2c
    :goto_2c
    return v0
.end method

.method public static synthetic lambda$XcH01_sSElIBkfdzcfbGZuAMtmk(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getVisibleTasks$0(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "visibleTasks"    # Ljava/util/ArrayList;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 291
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 292
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_f
    return-void
.end method

.method static synthetic lambda$onAnimationFinished$3(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2403
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2404
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    sget-object v1, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2405
    return-void
.end method

.method private moveCellSplitScreenTasksToSecondary()V
    .registers 10

    .line 1807
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1808
    .local v0, "wct":Landroid/window/WindowContainerTransaction;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1809
    .local v1, "rootCellTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_73

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_73

    .line 1810
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_73

    .line 1813
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1814
    .local v2, "rootSecondaryTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_72

    iget-boolean v3, v2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_72

    .line 1815
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_72

    .line 1819
    :cond_33
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_39
    if-ltz v3, :cond_6a

    .line 1820
    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1822
    .local v4, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_4e

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_4f

    :cond_4e
    const/4 v5, 0x0

    .line 1823
    .local v5, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_4f
    const/4 v6, 0x0

    if-eqz v5, :cond_58

    iget-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v7, :cond_58

    .line 1824
    iput-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1826
    :cond_58
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 1827
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v8

    .line 1826
    invoke-virtual {v0, v7, v8, v6}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1819
    .end local v4    # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v5    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    goto :goto_39

    .line 1829
    .end local v3    # "i":I
    :cond_6a
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1830
    return-void

    .line 1816
    :cond_72
    :goto_72
    return-void

    .line 1811
    .end local v2    # "rootSecondaryTask":Lcom/android/server/wm/Task;
    :cond_73
    :goto_73
    return-void
.end method

.method private moveSplitScreenTasksToFullScreen()V
    .registers 8

    .line 1771
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 1772
    .local v0, "wct":Landroid/window/WindowContainerTransaction;
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1773
    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 1779
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_1a
    if-ltz v1, :cond_3f

    .line 1780
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1781
    .local v3, "root":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_25
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3c

    .line 1782
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    .line 1781
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1779
    .end local v3    # "root":Lcom/android/server/wm/Task;
    .end local v4    # "j":I
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1786
    .end local v1    # "i":I
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 1787
    return-void
.end method

.method private updateLaunchRootTask(I)Lcom/android/server/wm/Task;
    .registers 8
    .param p1, "windowingMode"    # I

    .line 1377
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1379
    const/4 v0, 0x0

    return-object v0

    .line 1381
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_3e

    .line 1382
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1383
    .local v1, "t":Lcom/android/server/wm/Task;
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-eq v2, p1, :cond_1f

    .line 1384
    goto :goto_3b

    .line 1387
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3a

    .line 1388
    const/4 v2, 0x0

    .local v2, "j":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    .local v3, "n":I
    :goto_28
    if-ge v2, v3, :cond_3a

    .line 1389
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1390
    .local v4, "tt":Lcom/android/server/wm/Task;
    iget-boolean v5, v4, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_37

    if-eq v4, v1, :cond_37

    .line 1391
    iput-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1392
    goto :goto_3a

    .line 1388
    .end local v4    # "tt":Lcom/android/server/wm/Task;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1396
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_3a
    :goto_3a
    return-object v1

    .line 1381
    .end local v1    # "t":Lcom/android/server/wm/Task;
    :cond_3b
    :goto_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1398
    .end local v0    # "i":I
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    return-object v0
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1579
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_b

    .line 1580
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    .line 1582
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3c

    .line 1584
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3c

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 1585
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v1, -0x1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 1586
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1585
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_3c
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 386
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 388
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result p2

    .line 390
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    .line 394
    return-void
.end method

.method bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 97
    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    return-void
.end method

.method addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .registers 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 308
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " stack="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_3d

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_3a

    .line 310
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_75

    .line 311
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_3a
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_75

    .line 318
    :cond_3d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_73

    .line 320
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_75

    .line 321
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_73
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    .line 330
    :cond_75
    :goto_75
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 331
    return-void

    .line 333
    :cond_7c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 334
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_af

    .line 335
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_8a

    .line 340
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_e2

    .line 336
    :cond_8a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_af
    const/4 v3, 0x3

    if-ne v0, v3, :cond_e2

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_e2

    .line 345
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_bd

    .line 351
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_e2

    .line 346
    :cond_bd
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStackReferenceIfNeeded: split screen primary stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_e2
    :goto_e2
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .registers 5

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "stackNdx":I
    :goto_6
    if-ltz v0, :cond_1f

    .line 1534
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1535
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1c

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1536
    const/4 v1, 0x0

    return v1

    .line 1533
    .end local v2    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1539
    .end local v0    # "stackNdx":I
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1540
    .local v0, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_47

    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_47
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 1545
    return v1
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 765
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 767
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 765
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 769
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 772
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_7

    .line 773
    return-void

    .line 775
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 782
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 784
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mBoostStackLayerForAppTransition:Z

    if-eqz v2, :cond_36

    .line 785
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    goto :goto_65

    .line 789
    :cond_36
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 791
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 792
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 795
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 797
    :cond_4e
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 798
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eq v1, v2, :cond_60

    .line 800
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 802
    :cond_60
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v1    # "s":Lcom/android/server/wm/ActivityStack;
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 806
    .end local v0    # "i":I
    :cond_68
    const/4 v0, 0x0

    .line 808
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeStacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v0

    .line 810
    add-int/lit8 v1, v0, 0x1

    .line 812
    .local v0, "layerForHomeAnimationLayer":I
    .local v1, "layer":I
    const/4 v3, 0x0

    .line 814
    .local v3, "layerForFreeformAnimationLayer":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "layer":I
    .local v4, "layer":I
    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    .line 815
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "layer":I
    .restart local v1    # "layer":I
    iput v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    .line 816
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalStacks:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v1, v5}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    move-result v1

    .line 820
    add-int/lit8 v4, v1, 0x1

    .line 823
    .local v1, "layerForBoostedAnimationLayer":I
    .restart local v4    # "layer":I
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFreeformStacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/server/wm/TaskDisplayArea;->adjustFreeformTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v4

    .line 824
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "layer":I
    .local v5, "layer":I
    move v3, v4

    .line 827
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopStacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v4, v5, v2}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;IZ)I

    .line 829
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 830
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForAnimationLayer:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 831
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    iget v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpLayerForSplitScreenDividerAnchor:I

    invoke-virtual {p1, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 832
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 834
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b1

    .line 835
    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 838
    :cond_b1
    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .registers 2

    .line 2293
    const/4 v0, 0x1

    return v0
.end method

.method createPairTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Lcom/android/server/wm/PairTask;
    .registers 6
    .param p1, "splitPrimaryTask"    # Lcom/android/server/wm/Task;
    .param p2, "splitSecondaryTask"    # Lcom/android/server/wm/Task;

    .line 1370
    new-instance v0, Lcom/android/server/wm/PairTask$Builder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getNextStackId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/PairTask$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 1371
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PairTask$Builder;->setPair(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Lcom/android/server/wm/PairTask$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/PairTask$Builder;->build()Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 1370
    return-object v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .registers 11
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 1297
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;
    .registers 16
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .param p4, "info"    # Landroid/content/pm/ActivityInfo;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "createdByOrganizer"    # Z

    .line 1318
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 1322
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1326
    :cond_1d
    if-nez p2, :cond_22

    if-nez p6, :cond_22

    .line 1329
    const/4 p2, 0x1

    .line 1332
    :cond_22
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5b

    if-eqz p2, :cond_5b

    .line 1335
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1336
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_2f

    goto :goto_5b

    .line 1337
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1342
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5b
    :goto_5b
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1358
    const/4 v0, 0x2

    if-ne p1, v0, :cond_84

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->dismissPip()V

    .line 1363
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getNextStackId()I

    move-result v8

    .line 1364
    .local v8, "stackId":I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v8

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->createStackUnchecked(IIIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 1346
    .end local v8    # "stackId":I
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;
    .registers 22
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "stackId"    # I
    .param p4, "onTop"    # Z
    .param p5, "info"    # Landroid/content/pm/ActivityInfo;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "createdByOrganizer"    # Z

    .line 1404
    move-object v0, p0

    move v1, p1

    move/from16 v8, p2

    const/4 v9, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    if-ne v8, v9, :cond_b

    goto :goto_13

    .line 1405
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1408
    :cond_13
    :goto_13
    if-nez p5, :cond_23

    .line 1409
    new-instance v3, Landroid/content/pm/ActivityInfo;

    invoke-direct {v3}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1410
    .end local p5    # "info":Landroid/content/pm/ActivityInfo;
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v10, v3

    goto :goto_25

    .line 1408
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local p5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_23
    move-object/from16 v10, p5

    .line 1414
    .end local p5    # "info":Landroid/content/pm/ActivityInfo;
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :goto_25
    if-eqz p7, :cond_29

    const/4 v3, 0x0

    goto :goto_2d

    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1417
    .local v3, "launchRootTask":Lcom/android/server/wm/Task;
    :goto_2d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v4

    if-eqz v4, :cond_46

    if-nez p7, :cond_46

    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-nez v4, :cond_46

    if-nez v3, :cond_46

    if-ne v8, v2, :cond_46

    if-nez v1, :cond_46

    .line 1421
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    move-object v11, v3

    goto :goto_47

    .line 1425
    :cond_46
    move-object v11, v3

    .end local v3    # "launchRootTask":Lcom/android/server/wm/Task;
    .local v11, "launchRootTask":Lcom/android/server/wm/Task;
    :goto_47
    if-eqz v11, :cond_4c

    .line 1427
    const/4 v1, 0x0

    move v12, v1

    .end local p1    # "windowingMode":I
    .local v1, "windowingMode":I
    goto :goto_4d

    .line 1425
    .end local v1    # "windowingMode":I
    .restart local p1    # "windowingMode":I
    :cond_4c
    move v12, v1

    .line 1430
    .end local p1    # "windowingMode":I
    .local v12, "windowingMode":I
    :goto_4d
    new-instance v13, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v1, v13

    move/from16 v3, p3

    move/from16 v4, p2

    move-object v5, v10

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;IILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    .line 1432
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    const v2, 0x7fffffff

    const/high16 v3, -0x80000000

    if-eqz v11, :cond_76

    .line 1433
    if-eqz p4, :cond_68

    goto :goto_69

    :cond_68
    move v2, v3

    :goto_69
    invoke-virtual {v11, v1, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1434
    if-eqz p4, :cond_80

    .line 1435
    move-object v2, v11

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_80

    .line 1438
    :cond_76
    if-eqz p4, :cond_79

    goto :goto_7a

    :cond_79
    move v2, v3

    :goto_7a
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 1439
    invoke-virtual {v1, v12, v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZ)V

    .line 1441
    :cond_80
    :goto_80
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskDisplayArea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2563
    .local v0, "doublePrefix":Ljava/lang/String;
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2564
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_4d

    .line 2565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mPreferredTopFocusableStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2567
    :cond_4d
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_6b

    .line 2568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2571
    .local v1, "triplePrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "stackNdx":I
    :goto_94
    if-ltz v2, :cond_b9

    .line 2573
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    .line 2574
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "* "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    invoke-virtual {v3, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2572
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v2, v2, -0x1

    goto :goto_94

    .line 2577
    .end local v2    # "stackNdx":I
    :cond_b9
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 2305
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginActivityVisibilityUpdate()V

    .line 2307
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_d
    if-ltz v0, :cond_19

    .line 2308
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2309
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_22

    .line 2307
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2313
    .end local v0    # "stackNdx":I
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 2314
    nop

    .line 2315
    return-void

    .line 2313
    :catchall_22
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->endActivityVisibilityUpdate()V

    .line 2314
    throw v0
.end method

.method ensureFocusWithLaunchingWindowingMode(I)V
    .registers 3
    .param p1, "launchingWindowingMode"    # I

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_f

    .line 2551
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2552
    .local v0, "secondaryRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_f

    .line 2553
    iput p1, v0, Lcom/android/server/wm/Task;->mLaunchSplitWindowingMode:I

    .line 2556
    .end local v0    # "secondaryRootTask":Lcom/android/server/wm/Task;
    :cond_f
    :goto_f
    return-void
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootWindowContainer$FindTaskResult;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isPreferredDisplayArea"    # Z
    .param p3, "result"    # Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    .line 1598
    const/4 v0, 0x0

    .line 1600
    .local v0, "dexPreloadDone":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->clear()V

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_c
    if-ltz v1, :cond_6d

    .line 1602
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1603
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1604
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_6a

    .line 1605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 1610
    :cond_39
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->process(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)V

    .line 1616
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_6a

    .line 1617
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-boolean v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v3, :cond_63

    .line 1619
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->QC_IOP_V3:Z

    if-eqz v3, :cond_5d

    .line 1620
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_5d

    .line 1622
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1626
    :cond_5d
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 1627
    return-void

    .line 1628
    :cond_63
    if-eqz p2, :cond_6a

    .line 1632
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootWindowContainer$FindTaskResult;)V

    .line 1601
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1638
    .end local v1    # "stackNdx":I
    :cond_6d
    const-string v1, "1"

    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1639
    const-string/jumbo v1, "persist.sys.dexpreload_en"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 1640
    const-string/jumbo v1, "persist.sys.libpreload_en"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1641
    :cond_92
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_b6

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_b6

    .line 1642
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-nez v1, :cond_b6

    .line 1643
    if-eqz p1, :cond_b6

    .line 1644
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/server/ipm/DexPreloader;->excute(Landroid/content/pm/ApplicationInfo;)V

    .line 1645
    const/4 v0, 0x1

    .line 1653
    :cond_b6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->QC_IOP_V3:Z

    if-eqz v1, :cond_d1

    if-nez v0, :cond_d1

    .line 1654
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_ce

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpFindTaskResult:Lcom/android/server/wm/RootWindowContainer$FindTaskResult;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_d1

    .line 1655
    :cond_ce
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1659
    :cond_d1
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 612
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_11

    .line 613
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 614
    return v0

    .line 616
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 617
    return v0

    .line 620
    :cond_11
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->forAllExitingAppTokenWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 621
    return v0

    .line 623
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 624
    return v0

    .line 627
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 3
    .param p1, "animationLayer"    # I

    .line 919
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 922
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 927
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0

    .line 925
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getDisplayId()I
    .registers 2

    .line 2256
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1509
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_8

    .line 1510
    const/4 v1, 0x0

    return-object v1

    .line 1514
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1515
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_1f

    .line 1518
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1519
    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_1f

    .line 1522
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1525
    :cond_1f
    return-object v1
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 4

    .line 1449
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_5

    .line 1450
    return-object v0

    .line 1453
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 1454
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1455
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1456
    return-object v1

    .line 1453
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1460
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2125
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "userId"    # I

    .line 2130
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2131
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_8

    .line 2132
    const/4 v1, 0x0

    return-object v1

    .line 2135
    :cond_8
    sget-object v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 2136
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 2137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2135
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 2138
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2139
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2140
    return-object v2
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .registers 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 1529
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 8
    .param p1, "currentFocus"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "ignoreCurrent"    # Z

    .line 1464
    if-eqz p1, :cond_7

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1467
    .local v0, "currentWindowingMode":I
    :goto_8
    const/4 v1, 0x0

    .line 1468
    .local v1, "candidate":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_45

    .line 1469
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1470
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1a

    if-ne v3, p1, :cond_1a

    .line 1471
    goto :goto_38

    .line 1473
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_21

    .line 1474
    goto :goto_38

    .line 1478
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTopFreeform()Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2b

    .line 1482
    goto :goto_38

    .line 1486
    :cond_2b
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3b

    if-nez v1, :cond_3b

    .line 1487
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1495
    move-object v1, v3

    .line 1496
    nop

    .line 1468
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_38
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 1498
    .restart local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3b
    if-eqz v1, :cond_44

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1500
    return-object v1

    .line 1502
    :cond_44
    return-object v3

    .line 1504
    .end local v2    # "i":I
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_45
    return-object v1
.end method

.method getNextStackId()I
    .registers 2

    .line 1293
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser()I

    move-result v0

    return v0
.end method

.method getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 2072
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootHomeTask(Z)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "onTop"    # Z

    .line 2083
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2084
    .local v0, "homeTask":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2085
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2087
    :cond_14
    return-object v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .registers 10
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 1152
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;
    .registers 21
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "candidateTask"    # Lcom/android/server/wm/Task;

    .line 1169
    move-object v7, p0

    move/from16 v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p5

    if-eqz v8, :cond_b

    move v0, v8

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    .line 1168
    :goto_f
    move/from16 v11, p2

    invoke-static {v0, v11}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1171
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1172
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1e

    .line 1173
    return-object v0

    .line 1172
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1e
    goto/16 :goto_d9

    .line 1175
    :cond_20
    if-eqz v10, :cond_d9

    .line 1176
    move-object v6, v10

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    .line 1177
    .local v6, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v9, :cond_2b

    const v0, 0x7fffffff

    goto :goto_2d

    :cond_2b
    const/high16 v0, -0x80000000

    :goto_2d
    move v12, v0

    .line 1178
    .local v12, "position":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLaunchRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v13

    .line 1188
    .local v13, "launchRootTask":Lcom/android/server/wm/Task;
    const/4 v0, 0x0

    if-eqz v13, :cond_5e

    .line 1189
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 1190
    invoke-virtual {v13, v6, v12}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_77

    .line 1191
    :cond_3f
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, v13, :cond_77

    .line 1193
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v8, :cond_5a

    .line 1196
    invoke-static/range {p1 .. p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1197
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isDexMode()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1200
    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1203
    :cond_5a
    invoke-virtual {v6, v13, v12}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_77

    .line 1214
    :cond_5e
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v7, :cond_6a

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_77

    .line 1215
    :cond_6a
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_74

    .line 1216
    invoke-virtual {p0, v6, v12}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_77

    .line 1218
    :cond_74
    invoke-virtual {v6, p0, v9}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 1222
    :cond_77
    :goto_77
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    if-eq v1, v8, :cond_c0

    .line 1224
    const/4 v1, 0x5

    if-ne v8, v1, :cond_8c

    instance-of v2, v10, Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_8c

    .line 1226
    move-object v2, v10

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x1

    invoke-virtual {v2, v8, v0, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZ)V

    goto :goto_8f

    .line 1229
    :cond_8c
    invoke-virtual {v10, v8}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1231
    :goto_8f
    if-ne v8, v1, :cond_c0

    .line 1232
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c0

    iget-object v0, v10, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a3

    iget-object v0, v10, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1234
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1235
    :cond_a3
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 1236
    .local v14, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    .line 1237
    if-eqz v14, :cond_b6

    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    goto :goto_b7

    :cond_b6
    const/4 v1, 0x0

    :goto_b7
    move-object v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1236
    move-object/from16 v1, p5

    move-object v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .line 1242
    .end local v14    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_c0
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_d8

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_d8

    .line 1243
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 1244
    iget-object v0, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v1, "re-use freeform stack"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->scheduleBindMinimizeContainerService(Ljava/lang/String;)V

    .line 1248
    :cond_d8
    return-object v6

    .line 1175
    .end local v6    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "position":I
    .end local v13    # "launchRootTask":Lcom/android/server/wm/Task;
    :cond_d9
    :goto_d9
    nop

    .line 1250
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;IZ)Lcom/android/server/wm/ActivityStack;
    .registers 13
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I
    .param p5, "onTop"    # Z

    .line 1263
    if-eqz p2, :cond_7

    .line 1264
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1267
    .local v0, "windowingMode":I
    :goto_8
    invoke-static {p2, p1, p3}, Lcom/android/server/wm/ForceLaunchWindowingModeUtils;->resolveForceLaunchWindowingMode(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v1

    .line 1268
    .local v1, "forceWindowingMode":I
    if-eqz v1, :cond_f

    .line 1269
    move v0, v1

    .line 1276
    .end local v1    # "forceWindowingMode":I
    :cond_f
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1278
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v1, v1, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v1, :cond_39

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    if-lez v1, :cond_39

    .line 1280
    if-eqz v0, :cond_23

    .line 1281
    move v1, v0

    goto :goto_27

    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v1

    .line 1280
    :goto_27
    invoke-static {v1, p4}, Lcom/android/server/wm/DisplayContent;->alwaysCreateStack(II)Z

    move-result v1

    if-eqz v1, :cond_39

    if-nez p3, :cond_39

    .line 1283
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1287
    :cond_39
    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p4

    move v4, p5

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateStack(IIZLandroid/content/Intent;Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getOrientation(I)I
    .registers 15
    .param p1, "candidate"    # I

    .line 693
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4a

    .line 694
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 695
    .local v0, "topTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_21

    .line 696
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1f
    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v3

    .line 697
    .local v4, "isTopTaskHomeOrRecents":Z
    :goto_22
    const/4 v5, 0x0

    .line 699
    .local v5, "isMultiSplitAnimation":Z
    if-eqz v4, :cond_4a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_4a

    if-nez v5, :cond_4a

    .line 704
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 705
    .local v6, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_4a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v7

    if-nez v7, :cond_3d

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v7, :cond_4a

    .line 706
    :cond_3d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrientation()I

    move-result v7

    .line 707
    .local v7, "orientation":I
    if-eq v7, v1, :cond_4a

    .line 708
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 709
    invoke-virtual {v6, p1}, Lcom/android/server/wm/ActivityRecord;->getOrientation(I)I

    move-result v1

    return v1

    .line 716
    .end local v0    # "topTask":Lcom/android/server/wm/Task;
    .end local v4    # "isTopTaskHomeOrRecents":Z
    .end local v5    # "isMultiSplitAnimation":Z
    .end local v6    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7    # "orientation":I
    :cond_4a
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 744
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result v4

    .line 745
    .local v4, "orientation":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-eq v4, v1, :cond_7d

    if-eq v4, v0, :cond_7d

    .line 747
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_7c

    int-to-long v0, v4

    .local v0, "protoLogParam0":J
    iget-object v8, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, v8

    .local v8, "protoLogParam1":J
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x5253dbca

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v10, v11, v7, v6, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 750
    .end local v0    # "protoLogParam0":J
    .end local v8    # "protoLogParam1":J
    :cond_7c
    return v4

    .line 753
    :cond_7d
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    int-to-long v0, v0

    .restart local v0    # "protoLogParam0":J
    iget-object v8, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v8, v8

    .restart local v8    # "protoLogParam1":J
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v11, 0x61c711e7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v5, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v10, v11, v7, v6, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 758
    .end local v0    # "protoLogParam0":J
    .end local v8    # "protoLogParam1":J
    :cond_a3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0

    .line 722
    .end local v4    # "orientation":I
    :cond_aa
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_d5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 728
    .local v0, "topHomeTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 732
    .local v4, "topHomeActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_c5

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v5, :cond_c5

    goto :goto_c6

    :cond_c5
    move v2, v3

    .line 734
    .local v2, "isHomeActivityLaunching":Z
    :goto_c6
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_ce

    if-eqz v2, :cond_d5

    .line 735
    :cond_ce
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOrientation()I

    move-result v3

    .line 736
    .local v3, "orientation":I
    if-eq v3, v1, :cond_d5

    .line 737
    return v3

    .line 741
    .end local v0    # "topHomeTask":Lcom/android/server/wm/Task;
    .end local v2    # "isHomeActivityLaunching":Z
    .end local v3    # "orientation":I
    .end local v4    # "topHomeActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_d5
    const/4 v0, -0x1

    return v0
.end method

.method getRootHomeTask()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootPinnedTask()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootRecentsTask()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenCellTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_24

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    return-object v1

    .line 280
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 285
    .end local v0    # "i":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .registers 2

    .line 935
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "rootTaskId"    # I

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 1138
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1139
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v2

    if-ne v2, p1, :cond_13

    .line 1140
    return-object v1

    .line 1137
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1143
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .registers 6
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 221
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 223
    :cond_6
    const/4 v1, 0x3

    if-ne p2, v1, :cond_c

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 226
    :cond_c
    if-ne p1, v0, :cond_11

    .line 227
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 228
    :cond_11
    if-ne p1, v1, :cond_16

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    return-object v0

    .line 231
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_37

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 233
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez p2, :cond_2d

    .line 234
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_2d

    .line 237
    return-object v1

    .line 239
    :cond_2d
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 240
    return-object v1

    .line 231
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 243
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStackAt(I)Lcom/android/server/wm/ActivityStack;
    .registers 3
    .param p1, "index"    # I

    .line 2067
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected getStackCount()I
    .registers 2

    .line 2063
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    .line 249
    .local v0, "count":I
    if-lez v0, :cond_f

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;
    .registers 3
    .param p1, "windowingMode"    # I

    .line 2100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 295
    return-object v0
.end method

.method hasPinnedTask()Z
    .registers 2

    .line 2222
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isMultiSplitActive()Z
    .registers 2

    .line 2227
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenCellTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method isMultiSplitTwoUpModeActivated()Z
    .registers 2

    .line 2231
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isMultiSplitActive()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isOnTop()Z
    .registers 2

    .line 429
    const/4 v0, 0x1

    return v0
.end method

.method isRemoved()Z
    .registers 2

    .line 2260
    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return v0
.end method

.method isSplitScreenModeActivated()Z
    .registers 3

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2092
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isSplitSecondaryTopTaskHomeOrRecents()Z
    .registers 5

    .line 2412
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2413
    .local v0, "rootSecondary":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2414
    return v1

    .line 2416
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2417
    .local v2, "secondaryTopTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method isStackVisible(I)Z
    .registers 4
    .param p1, "windowingMode"    # I

    .line 2247
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2248
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 8
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    const/4 v2, 0x0

    if-ltz v0, :cond_36

    .line 1991
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1992
    .local v3, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_33

    .line 1995
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTopFreeform()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-eq v3, p1, :cond_1c

    .line 1997
    goto :goto_33

    .line 2001
    :cond_1c
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2e

    .line 2002
    invoke-virtual {v3, v1, v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2003
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_2e

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2e

    .line 2004
    goto :goto_33

    .line 2009
    .end local v4    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_2e
    if-ne v3, p1, :cond_31

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    return v1

    .line 1990
    .end local v3    # "current":Lcom/android/server/wm/ActivityStack;
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2012
    .end local v0    # "i":I
    :cond_36
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .registers 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1986
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z
    .registers 16
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1927
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1928
    .local v0, "supportsMultiWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 1929
    .local v1, "supportsSplitScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1930
    .local v2, "supportsFreeform":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1931
    .local v3, "supportsPip":Z
    if-eqz v0, :cond_2f

    .line 1932
    if-eqz p3, :cond_1d

    .line 1933
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    .line 1934
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    goto :goto_2f

    .line 1936
    :cond_1d
    if-eqz p2, :cond_2f

    .line 1937
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    .line 1938
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 1939
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v2

    .line 1940
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v3

    .line 1944
    :cond_2f
    :goto_2f
    if-eqz p1, :cond_40

    .line 1945
    move-object v4, p0

    move v5, p1

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZZI)Z

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, 0x1

    goto :goto_41

    :cond_40
    const/4 v4, 0x0

    .line 1944
    :goto_41
    return v4
.end method

.method isWindowingModeSupportedInCover(I)Z
    .registers 3
    .param p1, "windowingMode"    # I

    .line 2457
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$moveSplitScreenTasksToFullScreen$2$TaskDisplayArea(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1774
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1775
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    :cond_15
    return-void
.end method

.method public synthetic lambda$onParentChanged$1$TaskDisplayArea()V
    .registers 5

    .line 942
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 943
    const-string v2, "animationLayer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 944
    const-string v2, "TaskDisplayArea.onParentChanged"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 945
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 946
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 947
    const-string v3, "boostedAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 948
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 949
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 950
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 951
    const-string/jumbo v3, "homeAnimationLayer"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 952
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 953
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 955
    const-string/jumbo v3, "splitScreenDividerAnchor"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 956
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 957
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 960
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 961
    const-string v1, "freeformAnimationLayer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 962
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 964
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 967
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 968
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 969
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 970
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 971
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 972
    return-void
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2116
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_a

    .line 2117
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2118
    return-void

    .line 2120
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 2121
    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 2104
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2105
    .local v0, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_9

    .line 2106
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2108
    :cond_9
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 11
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2153
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2155
    return-void

    .line 2158
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v1

    .line 2159
    .local v1, "isRootTask":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 2161
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_1c

    .line 2163
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2167
    :goto_1c
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    goto :goto_2b

    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    .line 2168
    .local v3, "numStacks":I
    :goto_2b
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_2c
    if-ge v4, v3, :cond_6e

    .line 2169
    if-eqz v1, :cond_35

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    goto :goto_3f

    .line 2170
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    :goto_3f
    nop

    .line 2171
    .local v5, "s":Lcom/android/server/wm/ActivityStack;
    if-ne v5, p1, :cond_43

    .line 2172
    goto :goto_6b

    .line 2174
    :cond_43
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    .line 2175
    .local v6, "winMode":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_4f

    const/4 v8, 0x4

    if-ne v6, v8, :cond_4e

    goto :goto_4f

    :cond_4e
    move v7, v2

    .line 2177
    .local v7, "isValidWindowingMode":Z
    :cond_4f
    :goto_4f
    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_6b

    if-eqz v7, :cond_6b

    .line 2179
    add-int/lit8 v0, v4, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2180
    .local v0, "position":I
    if-eqz v1, :cond_63

    .line 2181
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_6e

    .line 2183
    :cond_63
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8, v0, p1, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2185
    goto :goto_6e

    .line 2168
    .end local v0    # "position":I
    .end local v5    # "s":Lcom/android/server/wm/ActivityStack;
    .end local v6    # "winMode":I
    .end local v7    # "isValidWindowingMode":Z
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 2188
    .end local v4    # "stackNdx":I
    :cond_6e
    :goto_6e
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .registers 10
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "behindStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2196
    if-eqz p2, :cond_38

    if-ne p2, p1, :cond_5

    goto :goto_38

    .line 2200
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2201
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_37

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v0, v1, :cond_12

    goto :goto_37

    .line 2209
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2210
    .local v1, "stackIndex":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2211
    .local v2, "behindStackIndex":I
    if-gt v1, v2, :cond_23

    .line 2212
    add-int/lit8 v3, v2, -0x1

    goto :goto_24

    :cond_23
    move v3, v2

    .line 2213
    .local v3, "insertIndex":I
    :goto_24
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2214
    .local v5, "position":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isRootTask()Z

    move-result v6

    if-eqz v6, :cond_33

    .line 2215
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_36

    .line 2217
    :cond_33
    invoke-virtual {v0, v5, p1, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2219
    :goto_36
    return-void

    .line 2202
    .end local v1    # "stackIndex":I
    .end local v2    # "behindStackIndex":I
    .end local v3    # "insertIndex":I
    .end local v5    # "position":I
    :cond_37
    :goto_37
    return-void

    .line 2197
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;
    :cond_38
    :goto_38
    return-void
.end method

.method protected onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 2395
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 2400
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$c6WX1OJulyBcNxLC1-ugTWqE1bU;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2407
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 2385
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    .line 2389
    return-void
.end method

.method onMultiSplitScreenModeDismissed(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .line 1792
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 1794
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1796
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_b
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1797
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->moveCellSplitScreenTasksToSecondary()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    .line 1800
    iput-boolean v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1803
    nop

    .line 1804
    return-void

    .line 1799
    :catchall_19
    move-exception v0

    .line 1800
    iput-boolean v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 1802
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1803
    throw v0
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 6
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 940
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 941
    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_51

    .line 974
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 976
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 977
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 978
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 979
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 980
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 982
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBoostedAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 983
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mHomeAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 984
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 987
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 988
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mFreeformAppAnimationLayer:Landroid/view/SurfaceControl;

    .line 992
    :goto_51
    return-void
.end method

.method onSplitScreenModeDismissed()V
    .registers 2

    .line 1726
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 1727
    return-void
.end method

.method onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "toTop"    # Lcom/android/server/wm/ActivityStack;

    .line 1731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;Z)V

    .line 1732
    return-void
.end method

.method onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 9
    .param p1, "toTop"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "animate"    # Z

    .line 1736
    const-string/jumbo v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTaskItemController;->onSplitScreenModeDismissed()V

    .line 1739
    xor-int/lit8 v1, p2, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 1742
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1744
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_16
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 1745
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->moveSplitScreenTasksToFullScreen()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_42

    .line 1747
    if-eqz p1, :cond_1f

    .line 1748
    move-object v1, p1

    goto :goto_23

    :cond_1f
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1749
    .local v1, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    :goto_23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1750
    .local v3, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_39

    if-eqz v1, :cond_31

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_31
    if-eqz p1, :cond_39

    .line 1758
    :cond_33
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1763
    :cond_39
    iput-boolean v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 1766
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1767
    .end local v1    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "homeStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 1768
    return-void

    .line 1747
    :catchall_42
    move-exception v1

    if-eqz p1, :cond_47

    .line 1748
    move-object v3, p1

    goto :goto_4b

    :cond_47
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1749
    .local v3, "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    :goto_4b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1750
    .local v4, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_61

    if-eqz v3, :cond_59

    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskDisplayArea;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_5b

    :cond_59
    if-eqz p1, :cond_61

    .line 1758
    :cond_5b
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1763
    :cond_61
    iput-boolean v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSkipSplitScreenChangeTransition:Z

    .line 1766
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1767
    .end local v3    # "topFullscreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v4    # "homeStack":Lcom/android/server/wm/ActivityStack;
    throw v1
.end method

.method onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2286
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2287
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 2286
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2289
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onStackRemoved(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 995
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_27

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeStack: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_2e

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1002
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 1003
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1004
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 303
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 305
    :cond_17
    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1559
    const/4 v0, 0x0

    .line 1560
    .local v0, "someActivityPaused":Z
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "stackNdx":I
    :goto_7
    if-ltz v1, :cond_4b

    .line 1561
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1562
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1563
    .local v3, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_48

    .line 1564
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_1f

    .line 1565
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_48

    .line 1566
    :cond_1f
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_42

    .line 1567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pauseBackStacks: stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mResumedActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_42
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1560
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1574
    .end local v1    # "stackNdx":I
    :cond_4b
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V
    .registers 12
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "includingParents"    # Z

    .line 434
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 435
    .local v0, "moveToTop":Z
    :goto_c
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_15

    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    move v4, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v4, v1

    .line 440
    .local v4, "moveToBottom":Z
    :goto_16
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 441
    .local v5, "wasContained":Z
    const/4 v6, 0x0

    if-eqz v0, :cond_29

    if-eqz v5, :cond_29

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 442
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 445
    :cond_29
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v7

    if-eqz v7, :cond_5a

    if-nez v0, :cond_5a

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring move of always-on-top stack="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to bottom"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 452
    .local v1, "currentPosition":I
    invoke-super {p0, v1, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 453
    return-void

    .line 457
    .end local v1    # "currentPosition":I
    :cond_5a
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 458
    const/4 p3, 0x0

    .line 460
    :cond_6d
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForStack(ILcom/android/server/wm/ActivityStack;Z)I

    move-result v7

    .line 461
    .local v7, "targetPosition":I
    invoke-super {p0, v7, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 463
    if-eqz p3, :cond_95

    if-nez v0, :cond_7a

    if-eqz v4, :cond_95

    .line 466
    :cond_7a
    if-eqz v0, :cond_85

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 467
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_8b

    .line 468
    :cond_85
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v2, p2, :cond_8b

    .line 469
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 477
    :cond_8b
    :goto_8b
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_92

    const v3, 0x7fffffff

    :cond_92
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/DisplayContent;->positionDisplayAt(IZ)V

    .line 481
    :cond_95
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Z)V

    .line 483
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 490
    if-eqz v0, :cond_a8

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 491
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_ae

    .line 492
    :cond_a8
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v1, p2, :cond_ae

    .line 493
    iput-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 495
    :cond_ae
    :goto_ae
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 97
    check-cast p2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "includingParents"    # Z

    .line 1015
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 1017
    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;I)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I

    .line 1039
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 1041
    return-void
.end method

.method positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .registers 13
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "position"    # I
    .param p3, "includingParents"    # Z
    .param p4, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 1047
    if-eqz p4, :cond_7

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1049
    .local v0, "prevFocusedStack":Lcom/android/server/wm/ActivityStack;
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1050
    .local v1, "wasContained":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSingleTaskInstance:Z

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    if-eqz v1, :cond_1e

    goto :goto_36

    .line 1051
    :cond_1e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "positionStackAt: Can only have one task on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1057
    :cond_36
    :goto_36
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(ILcom/android/server/wm/ActivityStack;Z)V

    .line 1059
    if-eqz p4, :cond_60

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1061
    .local v2, "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eq v2, v0, :cond_60

    .line 1062
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    .line 1063
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, v3, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1065
    const/4 v5, -0x1

    if-nez v2, :cond_50

    move v6, v5

    goto :goto_54

    :cond_50
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v6

    .line 1066
    :goto_54
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_59

    goto :goto_5d

    :cond_59
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getRootTaskId()I

    move-result v5

    .line 1063
    :goto_5d
    invoke-static {v3, v4, v6, v5, p4}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedStack(IIIILjava/lang/String;)V

    .line 1072
    .end local v2    # "currentFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_60
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isOnTop()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 1073
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1074
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_75

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_75

    .line 1075
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1076
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->updateTopActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 1081
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_75
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 1082
    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1030
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method positionStackAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 1034
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 1036
    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 1021
    return-void
.end method

.method positionStackAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "includingParents"    # Z
    .param p3, "updateLastFocusedStackReason"    # Ljava/lang/String;

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 1027
    return-void
.end method

.method positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/ActivityStack;

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1091
    .local v0, "home":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1092
    .local v1, "homeParent":Lcom/android/server/wm/WindowContainer;
    const/4 v2, 0x0

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_11

    :cond_10
    move-object v3, v2

    .line 1093
    .local v3, "homeParentTask":Lcom/android/server/wm/Task;
    :goto_11
    const/4 v4, 0x0

    if-nez v3, :cond_24

    .line 1095
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v2, p0, :cond_1f

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto/16 :goto_94

    .line 1098
    :cond_1f
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_94

    .line 1100
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-ne v3, v5, :cond_31

    .line 1102
    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_94

    .line 1105
    :cond_31
    iget-boolean v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mSupportMultiWindowTransitionListener:Z

    if-eqz v5, :cond_78

    .line 1106
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 1107
    .local v5, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_41

    :cond_40
    move-object v6, v2

    .line 1108
    .local v6, "parentTask":Lcom/android/server/wm/Task;
    :goto_41
    if-eqz v6, :cond_47

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1109
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    :cond_47
    if-eqz v6, :cond_78

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 1110
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_78

    if-eqz v2, :cond_78

    .line 1111
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_78

    .line 1112
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eq v7, p1, :cond_78

    .line 1113
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    if-eqz v7, :cond_6f

    .line 1114
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->handleTaskStackOrdering()V

    .line 1116
    :cond_6f
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTaskToBeReparented:Lcom/android/server/wm/ActivityStack;

    .line 1117
    move-object v7, v6

    check-cast v7, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7, p1, v4}, Lcom/android/server/wm/ActivityStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 1118
    const/4 p1, 0x0

    .line 1121
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v6    # "parentTask":Lcom/android/server/wm/Task;
    :cond_78
    if-eqz p1, :cond_94

    .line 1123
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1124
    .restart local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_86

    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz v5, :cond_86

    .line 1125
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1129
    .end local v2    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_86
    move-object v8, v3

    check-cast v8, Lcom/android/server/wm/ActivityStack;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "positionTaskBehindHome"

    move-object v7, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1134
    :cond_94
    :goto_94
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 3

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_6
    if-ltz v0, :cond_14

    .line 2319
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 2320
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->prepareFreezingTaskBounds()V

    .line 2318
    .end local v1    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2322
    .end local v0    # "stackNdx":I
    :cond_14
    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    .line 2269
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2270
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2272
    :cond_d
    return-void
.end method

.method remove()Lcom/android/server/wm/ActivityStack;
    .registers 12

    .line 2329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 2331
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v1

    .line 2332
    .local v1, "destroyContentOnRemoval":Z
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 2333
    .local v2, "toDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v3, 0x0

    .line 2341
    .local v3, "lastReparentedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 2343
    .local v4, "numStacks":I
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v5

    .line 2344
    .local v5, "splitScreenActivated":Z
    if-eqz v5, :cond_20

    .line 2345
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_21

    :cond_20
    nop

    .line 2346
    .local v0, "rootStack":Lcom/android/server/wm/ActivityStack;
    :goto_21
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_22
    const/4 v7, 0x1

    if-ge v6, v4, :cond_59

    .line 2347
    invoke-virtual {p0, v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2349
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v1, :cond_49

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-nez v9, :cond_32

    goto :goto_49

    .line 2353
    :cond_32
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v9

    if-eqz v9, :cond_3c

    if-eqz v0, :cond_3c

    .line 2354
    move-object v9, v0

    goto :goto_3d

    :cond_3c
    move-object v9, v2

    :goto_3d
    const v10, 0x7fffffff

    .line 2353
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2358
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 2359
    move-object v3, v8

    goto :goto_4c

    .line 2350
    :cond_49
    :goto_49
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesImmediately()V

    .line 2363
    :goto_4c
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v9

    sub-int v9, v4, v9

    sub-int/2addr v6, v9

    .line 2364
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v4

    .line 2346
    .end local v8    # "stack":Lcom/android/server/wm/ActivityStack;
    add-int/2addr v6, v7

    goto :goto_22

    .line 2366
    .end local v6    # "stackNdx":I
    :cond_59
    if-eqz v3, :cond_77

    if-eqz v5, :cond_77

    .line 2367
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v6

    if-nez v6, :cond_70

    .line 2368
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v6

    .line 2369
    invoke-virtual {v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2370
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_77

    .line 2371
    :cond_70
    if-eqz v0, :cond_77

    .line 2373
    const-string v6, "display-removed"

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2377
    :cond_77
    :goto_77
    iput-boolean v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    .line 2379
    return-object v3
.end method

.method protected removeChild(Lcom/android/server/wm/ActivityStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 398
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 404
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ActivityTaskManager"

    const-string v2, "TaskDisplayArea\'s removeChild called without gaining lock, callers: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStackRemoved(Lcom/android/server/wm/ActivityStack;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    .line 415
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 416
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->setUnminimizedWhenRemoved()V

    .line 418
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_42

    .line 419
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string v1, "all freeform stack detached"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FreeformController;->scheduleUnbindMinimizeContainerService(Ljava/lang/String;)V

    .line 424
    :cond_42
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 97
    check-cast p1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method removeExistingAppTokensIfPossible()V
    .registers 12

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_5b

    .line 673
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 674
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_19
    if-ltz v3, :cond_58

    .line 675
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 676
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    if-nez v5, :cond_55

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-eqz v5, :cond_39

    .line 677
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 681
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->cancelAnimation()V

    .line 682
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v5, :cond_52

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x2eda896

    const/4 v8, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v6, v7, v10, v8, v9}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 684
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    :cond_52
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->removeIfPossible()V

    .line 674
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_55
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 672
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "j":I
    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 688
    .end local v0    # "i":I
    :cond_5b
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 2252
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 2253
    return-void
.end method

.method removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 369
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_1c

    .line 370
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_f

    .line 371
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootRecentsTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_1c

    .line 372
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_16

    .line 373
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/ActivityStack;

    goto :goto_1c

    .line 374
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1c

    .line 375
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootSplitScreenPrimaryTask:Lcom/android/server/wm/ActivityStack;

    .line 382
    :cond_1c
    :goto_1c
    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .registers 8
    .param p1, "windowingModes"    # [I

    .line 1666
    if-eqz p1, :cond_4e

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_4e

    .line 1673
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1674
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_e
    if-ltz v1, :cond_35

    .line 1675
    aget v2, p1, v1

    .line 1676
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_18
    if-ltz v3, :cond_32

    .line 1677
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1678
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_25

    .line 1679
    goto :goto_2f

    .line 1681
    :cond_25
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_2c

    .line 1682
    goto :goto_2f

    .line 1684
    :cond_2c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1674
    .end local v2    # "windowingMode":I
    .end local v3    # "i":I
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1688
    .end local v1    # "j":I
    :cond_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3b
    if-ltz v1, :cond_4d

    .line 1689
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1688
    add-int/lit8 v1, v1, -0x1

    goto :goto_3b

    .line 1691
    .end local v1    # "i":I
    :cond_4d
    return-void

    .line 1667
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_4e
    :goto_4e
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .registers 10
    .param p1, "activityTypes"    # [I

    .line 1694
    if-eqz p1, :cond_65

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_65

    .line 1701
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_e
    if-ltz v1, :cond_4c

    .line 1703
    aget v2, p1, v1

    .line 1704
    .local v2, "activityType":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_18
    if-ltz v3, :cond_49

    .line 1705
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1707
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityStack;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_3d

    .line 1708
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_28
    if-ltz v5, :cond_3c

    .line 1709
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    .line 1710
    .local v6, "childStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v7

    if-ne v7, v2, :cond_39

    .line 1711
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    .end local v6    # "childStack":Lcom/android/server/wm/ActivityStack;
    :cond_39
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    .end local v5    # "k":I
    :cond_3c
    goto :goto_46

    .line 1714
    :cond_3d
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_46

    .line 1715
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1702
    .end local v2    # "activityType":I
    .end local v3    # "i":I
    :cond_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1720
    .end local v1    # "j":I
    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_52
    if-ltz v1, :cond_64

    .line 1721
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 1720
    add-int/lit8 v1, v1, -0x1

    goto :goto_52

    .line 1723
    .end local v1    # "i":I
    :cond_64
    return-void

    .line 1695
    .end local v0    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityStack;>;"
    :cond_65
    :goto_65
    return-void
.end method

.method resetPreferredTopFocusableRootTaskIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1008
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_d

    .line 1009
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gtz v0, :cond_d

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    .line 1012
    :cond_d
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)I
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1892
    if-eqz p2, :cond_7

    .line 1893
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1897
    .local v0, "windowingMode":I
    :goto_8
    if-nez v0, :cond_1e

    .line 1898
    if-eqz p3, :cond_10

    .line 1899
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 1901
    :cond_10
    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 1902
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 1904
    :cond_18
    if-nez v0, :cond_1e

    .line 1906
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    .line 1909
    :cond_1e
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v0

    .line 1910
    if-eqz v0, :cond_26

    .line 1911
    move v1, v0

    goto :goto_27

    :cond_26
    const/4 v1, 0x1

    .line 1910
    :goto_27
    return v1
.end method

.method setExitingTokensHasVisible(Z)V
    .registers 6
    .param p1, "hasVisible"    # Z

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 664
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mExitingActivities:Ljava/util/ArrayList;

    .line 665
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1a
    if-ltz v2, :cond_27

    .line 666
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    iput-boolean p1, v3, Lcom/android/server/wm/ActivityRecord;->hasVisible:Z

    .line 665
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 663
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2    # "j":I
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 669
    .end local v0    # "i":I
    :cond_2a
    return-void
.end method

.method taskIdFromPoint(IILcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;)I
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "outResult"    # Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;

    .line 2423
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getBounds(Landroid/graphics/Rect;)V

    .line 2424
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_f

    .line 2425
    return v1

    .line 2428
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_17
    if-ltz v0, :cond_3f

    .line 2429
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 2430
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 2431
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_28

    .line 2432
    goto :goto_3c

    .line 2438
    :cond_28
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2439
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2440
    if-eqz p3, :cond_39

    .line 2441
    iput-object v2, p3, Lcom/android/server/wm/DisplayContent$TaskIdFromPointSearchResult;->mTask:Lcom/android/server/wm/Task;

    .line 2443
    :cond_39
    iget v1, v2, Lcom/android/server/wm/Task;->mTaskId:I

    return v1

    .line 2428
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 2447
    .end local v0    # "taskNdx":I
    :cond_3f
    return v1
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "considerKeyguardState"    # Z

    .line 2029
    const/4 v0, 0x0

    .line 2030
    .local v0, "topRunning":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2031
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_b

    .line 2032
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2036
    :cond_b
    if-nez v0, :cond_2c

    .line 2037
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2c

    .line 2038
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2040
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v3, v1, :cond_29

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isTopActivityFocusable()Z

    move-result v4

    if-nez v4, :cond_22

    .line 2041
    goto :goto_29

    .line 2043
    :cond_22
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2044
    if-eqz v0, :cond_29

    .line 2045
    goto :goto_2c

    .line 2037
    .end local v3    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 2052
    .end local v2    # "i":I
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_46

    if-eqz p1, :cond_46

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2053
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 2054
    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2055
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_46

    .line 2056
    const/4 v2, 0x0

    return-object v2

    .line 2059
    :cond_46
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnStackOrderChangedListener;

    .line 2278
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2279
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .registers 7
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;
    .param p4, "activityType"    # I

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    .line 1966
    .local v0, "inSplitScreenMode":Z
    if-nez v0, :cond_b

    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 1969
    const/4 p1, 0x0

    goto :goto_10

    .line 1970
    :cond_b
    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 1971
    const/4 p1, 0x4

    .line 1979
    :cond_10
    :goto_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1980
    const/4 v1, 0x0

    return v1

    .line 1982
    :cond_18
    return p1
.end method
