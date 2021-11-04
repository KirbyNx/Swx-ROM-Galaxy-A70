.class Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;
.super Ljava/lang/Object;
.source "RecentTaskItemController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentTaskItemController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkipRemoveTopMostRecentPairTaskFlags"
.end annotation


# instance fields
.field private mCellSplitDismissedByCallback:Z

.field private mSplitDismissedByCallback:Z

.field private mSplitDismissedByLaunchHome:Z

.field private mSplitStartRecentPairTask:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByCallback:Z

    .line 771
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByLaunchHome:Z

    .line 772
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitStartRecentPairTask:Z

    .line 774
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mCellSplitDismissedByCallback:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/RecentTaskItemController$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/RecentTaskItemController$1;

    .line 769
    invoke-direct {p0}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    .line 769
    invoke-direct {p0}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->shouldSkip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;
    .param p1, "x1"    # Lcom/android/server/wm/Task;

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setSplitDismissedByLaunchHomeIfNeeded(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    .line 769
    invoke-direct {p0}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->clear()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;
    .param p1, "x1"    # Z

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setSplitDismissedByCallback(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    .line 769
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByLaunchHome:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;
    .param p1, "x1"    # Z

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setSplitStartRecentPairTask(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;
    .param p1, "x1"    # Z

    .line 769
    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setCellSplitDismissedByCallback(Z)V

    return-void
.end method

.method private clear()V
    .registers 2

    .line 782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByCallback:Z

    .line 783
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByLaunchHome:Z

    .line 784
    return-void
.end method

.method private clearCell()V
    .registers 2

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mCellSplitDismissedByCallback:Z

    .line 788
    return-void
.end method

.method private setCellSplitDismissedByCallback(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 816
    iput-boolean p1, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mCellSplitDismissedByCallback:Z

    .line 817
    return-void
.end method

.method private setSplitDismissedByCallback(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 803
    iput-boolean p1, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByCallback:Z

    .line 804
    return-void
.end method

.method private setSplitDismissedByLaunchHomeIfNeeded(Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 791
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 792
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 793
    .local v0, "topLaunchHomeActivity":Z
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 794
    .local v2, "windowingMode":I
    if-eqz v0, :cond_1b

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    .line 796
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByLaunchHome:Z

    .line 797
    return v1

    .line 799
    :cond_1b
    return v1
.end method

.method private setSplitStartRecentPairTask(Z)V
    .registers 2
    .param p1, "start"    # Z

    .line 807
    iput-boolean p1, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitStartRecentPairTask:Z

    .line 808
    return-void
.end method

.method private shouldCellDismissSkip()Z
    .registers 2

    .line 812
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mCellSplitDismissedByCallback:Z

    return v0
.end method

.method private shouldSkip()Z
    .registers 2

    .line 778
    iget-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByCallback:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByLaunchHome:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitStartRecentPairTask:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
