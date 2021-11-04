.class public Lcom/android/server/wm/RecentTaskItemController;
.super Ljava/lang/Object;
.source "RecentTaskItemController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;
    }
.end annotation


# static fields
.field static final CELL_PAIR_TASK:I = 0x2

.field static final PRIMARY_PAIR_TASK:I = 0x0

.field static final SECONDARY_PAIR_TASK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "RecentTaskItemController"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

.field private mMultiSplitActiveBeforeDismiss:Z

.field private final mPairTaskItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PairTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

.field private final mRecentTaskItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/android/server/wm/RootWindowContainer;

.field private mSkipAddCellTaskWithoutPairTask:Z

.field private final mStatus:Lcom/android/server/wm/SplitStatus;

.field private final mTasksForSwap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpTaskInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleRecentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mTmpTaskInfos:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mTasksForSwap:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;-><init>(Lcom/android/server/wm/RecentTaskItemController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    .line 71
    new-instance v0, Lcom/android/server/wm/SplitStatus;

    invoke-direct {v0}, Lcom/android/server/wm/SplitStatus;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    .line 73
    iput-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mSkipAddCellTaskWithoutPairTask:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mMultiSplitActiveBeforeDismiss:Z

    .line 78
    iput-object p1, p0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 79
    return-void
.end method

.method private createPairTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "splitPrimaryTask"    # Lcom/android/server/wm/Task;
    .param p2, "splitSecondaryTask"    # Lcom/android/server/wm/Task;

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->createPairTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 116
    .local v0, "pairTask":Lcom/android/server/wm/PairTask;
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TaskPersister;->savePairTask(Lcom/android/server/wm/PairTask;Z)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paired Task is created, split:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChildId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChildId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " virtual:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "RecentTaskItemController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method private createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 4
    .param p1, "tr"    # Lcom/android/server/wm/Task;

    .line 519
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 520
    .local v0, "rti":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 522
    iget-boolean v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isRunning:Z

    if-eqz v1, :cond_f

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 523
    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 524
    return-object v0
.end method

.method private getMatchedTopTask(I)Lcom/android/server/wm/Task;
    .registers 6
    .param p1, "windowingMode"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 308
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    sget-object v1, Lcom/android/server/wm/-$$Lambda$RecentTaskItemController$IYehGwREiFlMteB3M9jkvyD9_64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RecentTaskItemController$IYehGwREiFlMteB3M9jkvyD9_64;

    const-class v2, Lcom/android/server/wm/Task;

    .line 310
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 308
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 311
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 312
    .local v2, "matchedTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_22

    .line 313
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    return-object v3

    .line 315
    :cond_22
    const/4 v3, 0x0

    return-object v3
.end method

.method private getRecentPairTasksImpl(IIZII)Ljava/util/ArrayList;
    .registers 23
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 535
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    and-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    move v4, v5

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    .line 537
    .local v4, "withExcluded":Z
    :goto_10
    iget-object v6, v0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wm/RecentTasks;->isUserRunning(II)Z

    move-result v6

    const-string/jumbo v7, "user "

    const-string v8, "RecentTaskItemController"

    if-nez v6, :cond_3f

    .line 538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is still locked. Cannot load recents"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    return-object v5

    .line 541
    :cond_3f
    iget-object v6, v0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RecentTasks;->loadUserRecentsLocked(I)V

    .line 543
    iget-object v6, v0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wm/RecentTasks;->getProfileIds(I)Ljava/util/Set;

    move-result-object v6

    .line 544
    .local v6, "includedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v9, v0, Lcom/android/server/wm/RecentTaskItemController;->mTmpTaskInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 547
    iget-object v9, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 548
    iget-object v9, v0, Lcom/android/server/wm/RecentTaskItemController;->mTmpTaskInfos:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 549
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v9, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v10, v0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/PersonaActivityHelper;->getRecentExcludedUsers()Ljava/util/Set;

    move-result-object v10

    .line 554
    .local v10, "excludedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v10, :cond_be

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_be

    .line 555
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_85
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_be

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 556
    .local v12, "id":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_bd

    .line 557
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " is skipped. It\'s a knox excluded user id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 560
    .end local v12    # "id":I
    :cond_bd
    goto :goto_85

    .line 565
    .end local v10    # "excludedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_be
    const/4 v7, 0x0

    .line 566
    .local v7, "numVisibleTasks":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c0
    iget-object v11, v0, Lcom/android/server/wm/RecentTaskItemController;->mTmpTaskInfos:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1be

    .line 567
    iget-object v11, v0, Lcom/android/server/wm/RecentTaskItemController;->mTmpTaskInfos:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    .line 569
    .local v11, "task":Lcom/android/server/wm/Task;
    iget v12, v11, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f6

    .line 570
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v12, :cond_1ba

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping, not user: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ba

    .line 573
    :cond_f6
    iget-boolean v12, v11, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    if-eqz v12, :cond_114

    .line 574
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v12, :cond_1ba

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping, activity suspended: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ba

    .line 577
    :cond_114
    if-nez p3, :cond_13a

    .line 580
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v12

    if-nez v12, :cond_13a

    iget v12, v11, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v12, v3, :cond_13a

    .line 581
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v12, :cond_1ba

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping, not allowed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ba

    .line 585
    :cond_13a
    iget-boolean v12, v11, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-eqz v12, :cond_15d

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_15d

    .line 587
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v12, :cond_1ba

    .line 588
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping, auto-remove without activity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ba

    .line 592
    :cond_15d
    and-int/lit8 v12, p2, 0x2

    if-eqz v12, :cond_17e

    iget-boolean v12, v11, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v12, :cond_17e

    .line 593
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v12, :cond_1ba

    .line 594
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping, unavail real act: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ba

    .line 598
    :cond_17e
    iget-boolean v12, v11, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    if-nez v12, :cond_19b

    .line 600
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v12, :cond_1ba

    .line 601
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping, user setup not complete: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ba

    .line 605
    :cond_19b
    iget-object v12, v0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v12

    invoke-virtual {v12, v11, v5}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;Z)Z

    move-result v12

    if-eqz v12, :cond_1ba

    .line 606
    iget-object v12, v0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v12, v11, v10, v7, v4}, Lcom/android/server/wm/RecentTasks;->isInVisibleRange(Lcom/android/server/wm/Task;IIZ)Z

    move-result v12

    if-eqz v12, :cond_1ba

    .line 608
    iget-object v12, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v11    # "task":Lcom/android/server/wm/Task;
    :cond_1ba
    :goto_1ba
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c0

    .line 613
    .end local v10    # "i":I
    :cond_1be
    const/4 v5, 0x0

    .line 616
    .local v5, "pairTasks":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getRecentPairTasksImpl() maxNum :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1dc
    iget-object v11, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2cb

    .line 620
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v5

    if-lt v11, v1, :cond_205

    .line 621
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v11, :cond_2cb

    .line 622
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping, more than max num : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2cb

    .line 626
    :cond_205
    iget-object v11, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    .line 627
    .restart local v11    # "task":Lcom/android/server/wm/Task;
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v12

    if-eqz v12, :cond_2ba

    .line 628
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v12

    .line 629
    .local v12, "pairTask":Lcom/android/server/wm/PairTask;
    invoke-virtual {v12}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 630
    .local v13, "primaryTask":Lcom/android/server/wm/Task;
    invoke-virtual {v12}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChild()Lcom/android/server/wm/Task;

    move-result-object v14

    .line 631
    .local v14, "secondaryTask":Lcom/android/server/wm/Task;
    const/4 v15, 0x0

    .line 635
    .local v15, "cellTask":Lcom/android/server/wm/Task;
    if-eqz v13, :cond_29c

    if-eqz v14, :cond_29c

    iget-object v1, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    .line 636
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    iget-object v1, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    .line 637
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 638
    const/4 v1, 0x0

    .line 641
    .local v1, "isPairForMultiSplit":Z
    nop

    .line 642
    invoke-direct {v0, v12}, Lcom/android/server/wm/RecentTaskItemController;->createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    .line 643
    .local v2, "pairedTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-direct {v0, v13}, Lcom/android/server/wm/RecentTaskItemController;->createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-direct {v0, v14}, Lcom/android/server/wm/RecentTaskItemController;->createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    if-eqz v1, :cond_259

    .line 648
    invoke-direct {v0, v15}, Lcom/android/server/wm/RecentTaskItemController;->createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget v3, v15, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v12, v2, v3}, Lcom/android/server/wm/PairTask;->addPairChildIdInTaskInfo(Landroid/app/TaskInfo;I)V

    .line 651
    :cond_259
    add-int/lit8 v5, v5, 0x1

    .line 652
    iget v3, v11, Lcom/android/server/wm/Task;->mTaskId:I

    move-object/from16 v16, v2

    .end local v2    # "pairedTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .local v16, "pairedTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getPairPrimaryTaskId()I

    move-result v2

    if-ne v3, v2, :cond_272

    .line 653
    iget-object v2, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    if-eqz v1, :cond_29b

    .line 655
    iget-object v2, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_29b

    .line 657
    :cond_272
    iget v2, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getPairSecondaryTaskId()I

    move-result v3

    if-ne v2, v3, :cond_287

    .line 658
    iget-object v2, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 659
    if-eqz v1, :cond_29b

    .line 660
    iget-object v2, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_29b

    .line 662
    :cond_287
    if-eqz v1, :cond_29b

    iget v2, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getPairCellTaskId()I

    move-result v3

    if-ne v2, v3, :cond_29b

    .line 663
    iget-object v2, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 664
    iget-object v2, v0, Lcom/android/server/wm/RecentTaskItemController;->mVisibleRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 666
    .end local v1    # "isPairForMultiSplit":Z
    .end local v16    # "pairedTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_29b
    :goto_29b
    goto :goto_2b9

    .line 667
    :cond_29c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One of Paired Task is not visible task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {v0, v11}, Lcom/android/server/wm/RecentTaskItemController;->createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .end local v12    # "pairTask":Lcom/android/server/wm/PairTask;
    .end local v13    # "primaryTask":Lcom/android/server/wm/Task;
    .end local v14    # "secondaryTask":Lcom/android/server/wm/Task;
    .end local v15    # "cellTask":Lcom/android/server/wm/Task;
    :goto_2b9
    goto :goto_2c1

    .line 671
    :cond_2ba
    invoke-direct {v0, v11}, Lcom/android/server/wm/RecentTaskItemController;->createRecentTaskInfo(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v11    # "task":Lcom/android/server/wm/Task;
    :goto_2c1
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    goto/16 :goto_1dc

    .line 674
    .end local v10    # "i":I
    :cond_2cb
    :goto_2cb
    return-object v9
.end method

.method private static hasMatchedTaskInWindowingMode(Lcom/android/server/wm/Task;I)Z
    .registers 3
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "windowingMode"    # I

    .line 302
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne v0, p1, :cond_12

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 302
    :goto_13
    return v0
.end method

.method private hasSamePairTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "task1"    # Lcom/android/server/wm/Task;
    .param p2, "task2"    # Lcom/android/server/wm/Task;

    .line 245
    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    if-nez p2, :cond_6

    goto :goto_1a

    .line 248
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 249
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    nop

    .line 248
    :goto_19
    return v0

    .line 246
    :cond_1a
    :goto_1a
    return v0
.end method

.method private isSplitDismissByTaskInTopMostRecentPairTask()Z
    .registers 5

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 679
    .local v0, "top":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    .line 680
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 681
    .local v2, "recentTask":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 682
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/PairTask;->containsAsPairChild(Lcom/android/server/wm/Task;)Z

    move-result v1

    return v1

    .line 684
    .end local v2    # "recentTask":Lcom/android/server/wm/Task;
    :cond_34
    goto :goto_19

    .line 686
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$IYehGwREiFlMteB3M9jkvyD9_64(Lcom/android/server/wm/Task;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/RecentTaskItemController;->hasMatchedTaskInWindowingMode(Lcom/android/server/wm/Task;I)Z

    move-result p0

    return p0
.end method

.method private removePairTask(Lcom/android/server/wm/PairTask;)V
    .registers 6
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;

    .line 498
    const-string v0, "RecentTaskItemController"

    if-nez p1, :cond_b

    .line 499
    const-string/jumbo v1, "pairTask is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 502
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/PairTask;->dismissPair()V

    .line 503
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v2, p1, Lcom/android/server/wm/PairTask;->mTaskId:I

    iget v3, p1, Lcom/android/server/wm/PairTask;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paired Task is removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void
.end method


# virtual methods
.method addRecentPairTaskItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/PairTask;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "pairTasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/PairTask;>;"
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    return-void
.end method

.method addRecentTaskItem(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 95
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method addRecentTaskItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    return-void
.end method

.method createRecentPairTaskWithTopTasks()V
    .registers 4

    .line 428
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentTaskItemController;->getMatchedTopTask(I)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 429
    .local v1, "primaryTopTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTaskItemController;->getMatchedTopTask(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 430
    .local v2, "secondaryTopTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_13

    if-nez v2, :cond_f

    goto :goto_13

    .line 433
    :cond_f
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/wm/RecentTaskItemController;->setSplitTaskIds(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V

    .line 434
    return-void

    .line 431
    :cond_13
    :goto_13
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 690
    .local p2, "tmpTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 691
    const-string v0, "  RecentPairTasks List:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ":"

    const-string v3, "  num "

    const-string v4, ","

    if-ge v0, v1, :cond_4f

    .line 693
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 694
    .local v1, "recentTask":Lcom/android/server/wm/Task;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 695
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairPrimaryTaskId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairSecondaryTaskId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRecentPairWindowingMode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 702
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 692
    .end local v1    # "recentTask":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 705
    .end local v0    # "i":I
    :cond_4f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 706
    const-string v0, "  RecentTasks List:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_94

    .line 708
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 709
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairPrimaryTaskId()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairSecondaryTaskId()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRecentPairWindowingMode()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 717
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 707
    .end local v1    # "task":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 720
    .end local v0    # "i":I
    :cond_94
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 721
    const-string v0, "  Only PairedTaskItem List:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9d
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_bd

    .line 723
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 734
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 742
    .end local v0    # "i":I
    :cond_bd
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 743
    return-void
.end method

.method getPairTask(I)Lcom/android/server/wm/PairTask;
    .registers 5
    .param p1, "taskId"    # I

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PairTask;

    .line 511
    .local v1, "task":Lcom/android/server/wm/PairTask;
    iget v2, v1, Lcom/android/server/wm/PairTask;->mTaskId:I

    if-ne v2, p1, :cond_17

    .line 512
    return-object v1

    .line 514
    .end local v1    # "task":Lcom/android/server/wm/PairTask;
    :cond_17
    goto :goto_6

    .line 515
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPairTaskItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PairTask;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getRecentPairTasks(IIZII)Landroid/content/pm/ParceledListSlice;
    .registers 8
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "getTasksAllowed"    # Z
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 529
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/RecentTaskItemController;->getRecentPairTasksImpl(IIZII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method getRecentTopPairTask()Lcom/android/server/wm/PairTask;
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 259
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 260
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    return-object v0

    .line 262
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1d
    goto :goto_6

    .line 263
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method getStatus()Lcom/android/server/wm/SplitStatus;
    .registers 2

    .line 747
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    return-object v0
.end method

.method public initialize()V
    .registers 1

    .line 83
    return-void
.end method

.method isSplitDismissedByLaunchHome()Z
    .registers 2

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # getter for: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->mSplitDismissedByLaunchHome:Z
    invoke-static {v0}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$500(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)Z

    move-result v0

    return v0
.end method

.method isTopPairTaskInRecentTasks(Lcom/android/server/wm/PairTask;)Z
    .registers 7
    .param p1, "pair"    # Lcom/android/server/wm/PairTask;

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 268
    .local v0, "size":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2f

    .line 269
    iget-object v2, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 270
    .local v2, "first":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1f

    .line 271
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 272
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/Task;

    .line 274
    :cond_28
    invoke-virtual {p1, v2}, Lcom/android/server/wm/PairTask;->containsAsPairChild(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 275
    return v4

    .line 278
    .end local v2    # "first":Lcom/android/server/wm/Task;
    :cond_2f
    return v1
.end method

.method onCellDismissed()V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->shouldSkip()Z
    invoke-static {v0}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$100(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 420
    return-void

    .line 422
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RecentTaskItemController;->updateMultiSplitTaskIds(Lcom/android/server/wm/Task;Z)V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->createRecentPairTaskWithTopTasks()V

    .line 424
    return-void
.end method

.method onCellSplitScreenModeDismissed(Z)V
    .registers 3
    .param p1, "dismiss"    # Z

    .line 765
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setCellSplitDismissedByCallback(Z)V
    invoke-static {v0, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$700(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Z)V

    .line 766
    return-void
.end method

.method onSplitDismissed()V
    .registers 2

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mSkipAddCellTaskWithoutPairTask:Z

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->shouldSkip()Z
    invoke-static {v0}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$100(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/server/wm/RecentTaskItemController;->isSplitDismissByTaskInTopMostRecentPairTask()Z

    move-result v0

    if-nez v0, :cond_12

    .line 410
    return-void

    .line 412
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->removeTopMostRecentPairTask()V

    .line 413
    return-void
.end method

.method onSplitEntered()V
    .registers 1

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->createRecentPairTaskWithTopTasks()V

    .line 404
    return-void
.end method

.method onSplitScreenModeDismissed()V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setSplitDismissedByCallback(Z)V
    invoke-static {v0, v1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$400(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Z)V

    .line 491
    return-void
.end method

.method onSplitScreenTaskSwapped(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "taskForSwap"    # Lcom/android/server/wm/Task;

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTaskItemController;->swapTopMostRecentPairTask(Lcom/android/server/wm/Task;)V

    .line 495
    return-void
.end method

.method removeRecentPairTasksIncludingCellPairChild()V
    .registers 5

    .line 458
    const-string v0, "RecentTaskItemController"

    const-string/jumbo v1, "remove pairtasks by not supporting app min size"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 460
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 461
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    .line 463
    .local v2, "pair":Lcom/android/server/wm/PairTask;
    invoke-virtual {v2}, Lcom/android/server/wm/PairTask;->getSplitCellPairChild()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 464
    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTaskItemController;->removePairTask(Lcom/android/server/wm/PairTask;)V

    .line 467
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "pair":Lcom/android/server/wm/PairTask;
    :cond_2d
    goto :goto_e

    .line 468
    :cond_2e
    return-void
.end method

.method removeRecentTaskItem(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 354
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 355
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentTaskItemController;->removePairTask(Lcom/android/server/wm/PairTask;)V

    .line 357
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method removeTopMostRecentPairTask()V
    .registers 5

    .line 438
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->getRecentTopPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 439
    .local v0, "dismissTargetPairTask":Lcom/android/server/wm/PairTask;
    const-string v1, "RecentTaskItemController"

    if-nez v0, :cond_e

    .line 440
    const-string v2, "dismissTargetTask of splitDismissed is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/RecentTaskItemController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 445
    .local v2, "topTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_21

    .line 446
    const-string/jumbo v3, "topTask of splitDismissed is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 450
    :cond_21
    invoke-virtual {v0, v2}, Lcom/android/server/wm/PairTask;->containsAsPairChild(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mRecentTaskItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 454
    :cond_32
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentTaskItemController;->removePairTask(Lcom/android/server/wm/PairTask;)V

    .line 455
    return-void
.end method

.method replacePairTask(Lcom/android/server/wm/PairTask;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;
    .param p2, "primary"    # Lcom/android/server/wm/Task;
    .param p3, "secondary"    # Lcom/android/server/wm/Task;
    .param p4, "cell"    # Lcom/android/server/wm/Task;

    .line 218
    if-nez p1, :cond_3

    .line 219
    return-void

    .line 221
    :cond_3
    if-eqz p2, :cond_24

    if-nez p3, :cond_8

    goto :goto_24

    .line 224
    :cond_8
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v0

    if-nez v0, :cond_23

    .line 228
    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 229
    const/4 v0, 0x4

    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/PairTask;->addPairChild(Lcom/android/server/wm/Task;I)V

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskPersister;->savePairTask(Lcom/android/server/wm/PairTask;Z)V

    .line 238
    return-void

    .line 226
    :cond_23
    return-void

    .line 222
    :cond_24
    :goto_24
    return-void
.end method

.method setMultiSplitTaskIds(Lcom/android/server/wm/PairTask;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "pairTask"    # Lcom/android/server/wm/PairTask;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 241
    invoke-virtual {p1, p2}, Lcom/android/server/wm/PairTask;->addPairChildForMultiSplit(Lcom/android/server/wm/Task;)V

    .line 242
    return-void
.end method

.method setSkipAddCellTaskWithoutPairTask(Z)V
    .registers 2
    .param p1, "skip"    # Z

    .line 761
    iput-boolean p1, p0, Lcom/android/server/wm/RecentTaskItemController;->mSkipAddCellTaskWithoutPairTask:Z

    .line 762
    return-void
.end method

.method setSplitStartRecentPairTask(Z)V
    .registers 3
    .param p1, "start"    # Z

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setSplitStartRecentPairTask(Z)V
    invoke-static {v0, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$600(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Z)V

    .line 757
    return-void
.end method

.method setSplitTaskIds(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "matchedTask"    # Lcom/android/server/wm/Task;
    .param p2, "matchedTaskWindowingMode"    # I
    .param p3, "newTask"    # Lcom/android/server/wm/Task;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_69

    .line 127
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_69

    .line 128
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_69

    .line 129
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_69

    .line 134
    :cond_19
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1f

    .line 135
    move-object v0, p1

    .line 136
    .local v0, "splitPrimaryTask":Lcom/android/server/wm/Task;
    move-object v1, p3

    .local v1, "splitSecondaryTask":Lcom/android/server/wm/Task;
    goto :goto_21

    .line 138
    .end local v0    # "splitPrimaryTask":Lcom/android/server/wm/Task;
    .end local v1    # "splitSecondaryTask":Lcom/android/server/wm/Task;
    :cond_1f
    move-object v0, p3

    .line 139
    .restart local v0    # "splitPrimaryTask":Lcom/android/server/wm/Task;
    move-object v1, p1

    .line 142
    .restart local v1    # "splitSecondaryTask":Lcom/android/server/wm/Task;
    :goto_21
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/RecentTaskItemController;->hasSamePairTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    .line 144
    .local v2, "pairTask":Lcom/android/server/wm/PairTask;
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/PairTask;->replacePairChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 145
    iget-object v4, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/TaskPersister;->savePairTask(Lcom/android/server/wm/PairTask;Z)V

    .line 168
    return-void

    .line 171
    .end local v2    # "pairTask":Lcom/android/server/wm/PairTask;
    :cond_35
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 172
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTaskItemController;->removePairTask(Lcom/android/server/wm/PairTask;)V

    .line 174
    :cond_42
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v2, :cond_4d

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppPairController;->sendPairLoggingLocked()V

    .line 177
    :cond_4d
    const/4 v2, 0x0

    .line 178
    .restart local v2    # "pairTask":Lcom/android/server/wm/PairTask;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 179
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/PairTask;->replacePairChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 192
    iget-object v4, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/TaskPersister;->savePairTask(Lcom/android/server/wm/PairTask;Z)V

    goto :goto_68

    .line 194
    :cond_61
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/RecentTaskItemController;->createPairTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    .line 215
    :goto_68
    return-void

    .line 130
    .end local v0    # "splitPrimaryTask":Lcom/android/server/wm/Task;
    .end local v1    # "splitSecondaryTask":Lcom/android/server/wm/Task;
    .end local v2    # "pairTask":Lcom/android/server/wm/PairTask;
    :cond_69
    :goto_69
    return-void
.end method

.method setTaskPersister(Lcom/android/server/wm/TaskPersister;)V
    .registers 2
    .param p1, "mTaskPersister"    # Lcom/android/server/wm/TaskPersister;

    .line 91
    iput-object p1, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    .line 92
    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 88
    return-void
.end method

.method swapTopMostRecentPairTask(Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "taskForSwap"    # Lcom/android/server/wm/Task;

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mTasksForSwap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mTasksForSwap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_59

    .line 473
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->getRecentTopPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 474
    .local v0, "swapTargetTask":Lcom/android/server/wm/PairTask;
    if-eqz v0, :cond_54

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mTasksForSwap:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 476
    .local v1, "firstTarget":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/RecentTaskItemController;->mTasksForSwap:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 477
    .local v3, "secondTarget":Lcom/android/server/wm/Task;
    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/PairTask;->swapPair(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 478
    iget-object v4, p0, Lcom/android/server/wm/RecentTaskItemController;->mPairTaskPersister:Lcom/android/server/wm/TaskPersister;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/wm/TaskPersister;->savePairTask(Lcom/android/server/wm/PairTask;Z)V

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "swap task="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", task="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RecentTaskItemController"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v1    # "firstTarget":Lcom/android/server/wm/Task;
    .end local v3    # "secondTarget":Lcom/android/server/wm/Task;
    :cond_54
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mTasksForSwap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 484
    .end local v0    # "swapTargetTask":Lcom/android/server/wm/PairTask;
    :cond_59
    return-void
.end method

.method update(Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v0}, Lcom/android/server/wm/SplitStatus;->splitActivated()Z

    move-result v0

    .line 362
    .local v0, "wasActivated":Z
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v1}, Lcom/android/server/wm/SplitStatus;->allRootTaskEmpty()Z

    move-result v1

    .line 363
    .local v1, "wasAllRootTaskEmpty":Z
    const/4 v2, 0x0

    .line 364
    .local v2, "wasCellActivated":Z
    const/4 v3, 0x0

    .line 366
    .local v3, "wasAllRootTaskEmptyWithCell":Z
    iget-object v4, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/SplitStatus;->update(Lcom/android/server/wm/Task;)V

    .line 368
    iget-object v4, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->setSplitDismissedByLaunchHomeIfNeeded(Lcom/android/server/wm/Task;)Z
    invoke-static {v4, p1}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$200(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;Lcom/android/server/wm/Task;)Z

    move-result v4

    .line 373
    .local v4, "isLaunchHome":Z
    if-nez v0, :cond_27

    iget-object v5, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v5}, Lcom/android/server/wm/SplitStatus;->splitActivated()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 374
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->onSplitEntered()V

    goto :goto_34

    .line 375
    :cond_27
    if-eqz v0, :cond_34

    iget-object v5, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v5}, Lcom/android/server/wm/SplitStatus;->splitActivated()Z

    move-result v5

    if-nez v5, :cond_34

    .line 376
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->onSplitDismissed()V

    .line 392
    :cond_34
    :goto_34
    if-nez v1, :cond_43

    iget-object v5, p0, Lcom/android/server/wm/RecentTaskItemController;->mStatus:Lcom/android/server/wm/SplitStatus;

    invoke-virtual {v5}, Lcom/android/server/wm/SplitStatus;->allRootTaskEmpty()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 393
    iget-object v5, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->clear()V
    invoke-static {v5}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$300(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)V

    .line 399
    :cond_43
    return-void
.end method

.method updateMultiSplitTaskIds(Lcom/android/server/wm/Task;Z)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isAdded"    # Z

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/RecentTaskItemController;->getRecentTopPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 283
    .local v0, "updatePairTask":Lcom/android/server/wm/PairTask;
    if-eqz v0, :cond_45

    .line 284
    if-eqz p2, :cond_42

    .line 285
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 286
    iget v1, v0, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/PairTask;->mTaskId:I

    if-eq v1, v2, :cond_3d

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMultiSplitTaskIds:remove previous pair by cell,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/PairTask;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    const-string v2, "RecentTaskItemController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/RecentTaskItemController;->removePairTask(Lcom/android/server/wm/PairTask;)V

    goto :goto_3e

    .line 291
    :cond_3d
    return-void

    .line 294
    :cond_3e
    :goto_3e
    invoke-virtual {v0, p1}, Lcom/android/server/wm/PairTask;->addPairChildForMultiSplit(Lcom/android/server/wm/Task;)V

    goto :goto_45

    .line 296
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->removePairChildForMultiSplit()V

    .line 299
    :cond_45
    :goto_45
    return-void
.end method

.method updateSplitTaskIds(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "matchedTask"    # Lcom/android/server/wm/Task;
    .param p2, "matchedTaskWindowingMode"    # I
    .param p3, "newTask"    # Lcom/android/server/wm/Task;

    .line 254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RecentTaskItemController;->setSplitTaskIds(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V

    .line 255
    return-void
.end method

.method updateSplitTaskState(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 319
    if-nez p1, :cond_b

    .line 320
    const-string v0, "RecentTaskItemController"

    const-string/jumbo v1, "task of updateSplitTaskState is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_71

    .line 326
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 327
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_27

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 328
    return-void

    .line 330
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 331
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/wm/RecentTaskItemController;->getMatchedTopTask(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 332
    .local v2, "matchedTopTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_37

    .line 333
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/wm/RecentTaskItemController;->updateSplitTaskIds(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V

    .line 335
    .end local v2    # "matchedTopTask":Lcom/android/server/wm/Task;
    :cond_37
    goto :goto_70

    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 336
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wm/RecentTaskItemController;->getMatchedTopTask(I)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 337
    .restart local v2    # "matchedTopTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_48

    .line 338
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/wm/RecentTaskItemController;->updateSplitTaskIds(Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)V

    .line 340
    .end local v2    # "matchedTopTask":Lcom/android/server/wm/Task;
    :cond_48
    goto :goto_70

    .line 344
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 345
    iget-object v1, p0, Lcom/android/server/wm/RecentTaskItemController;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 346
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    .line 347
    .local v1, "splitActivated":Z
    if-nez v1, :cond_70

    iget-object v2, p0, Lcom/android/server/wm/RecentTaskItemController;->mFlags:Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;

    # invokes: Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->shouldSkip()Z
    invoke-static {v2}, Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;->access$100(Lcom/android/server/wm/RecentTaskItemController$SkipRemoveTopMostRecentPairTaskFlags;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 348
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentTaskItemController;->removePairTask(Lcom/android/server/wm/PairTask;)V

    .line 351
    .end local v1    # "splitActivated":Z
    :cond_70
    :goto_70
    return-void

    .line 324
    .end local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_71
    :goto_71
    return-void
.end method
