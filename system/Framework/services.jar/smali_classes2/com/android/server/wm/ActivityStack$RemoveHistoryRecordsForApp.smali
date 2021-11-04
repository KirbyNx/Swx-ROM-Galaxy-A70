.class Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveHistoryRecordsForApp"
.end annotation


# instance fields
.field private mApp:Lcom/android/server/wm/WindowProcessController;

.field private mHasVisibleActivities:Z

.field private mIsProcessRemoved:Z

.field private mToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityStack;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/ActivityStack;
    .param p2, "x1"    # Lcom/android/server/wm/ActivityStack$1;

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;-><init>(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method private addActivityToRemove(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 488
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, v1, :cond_b

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_b
    return-void
.end method

.method public static synthetic lambda$8j2ZFLAwkXnwDAxiTFN7mMDLhjU(Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->addActivityToRemove(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private processActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 494
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_24
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v2, :cond_2b

    .line 497
    return-void

    .line 499
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_36

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_38

    .line 503
    :cond_36
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mHasVisibleActivities:Z

    .line 506
    :cond_38
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v3, 0x2

    if-eq v0, v2, :cond_41

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-ne v0, v3, :cond_4c

    :cond_41
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_4c

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_4c

    .line 512
    const/4 v0, 0x0

    .local v0, "remove":Z
    goto :goto_7e

    .line 513
    .end local v0    # "remove":Z
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v0, :cond_5f

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 514
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_63

    :cond_5f
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_65

    .line 521
    :goto_63
    const/4 v0, 0x1

    .restart local v0    # "remove":Z
    goto :goto_7e

    .line 522
    .end local v0    # "remove":Z
    :cond_65
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_7d

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v0, v3, :cond_7d

    iget-wide v3, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 523
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xea60

    sub-long/2addr v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_7d

    .line 529
    const/4 v0, 0x1

    .restart local v0    # "remove":Z
    goto :goto_7e

    .line 532
    .end local v0    # "remove":Z
    :cond_7d
    const/4 v0, 0x0

    .line 534
    .restart local v0    # "remove":Z
    :goto_7e
    if-eqz v0, :cond_10b

    .line 535
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v3, :cond_88

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_d5

    :cond_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from stack : hasSavedState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " stateNotNeeded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " finishing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_d5
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_dd

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mIsProcessRemoved:Z

    if-eqz v3, :cond_12a

    .line 542
    :cond_dd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Force removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": app died, no saved state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 544
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 543
    const-string/jumbo v6, "proc died without state saved"

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_12a

    .line 551
    :cond_10b
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v3, :cond_123

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during removeHistory for activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_123
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 558
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 560
    :cond_12a
    :goto_12a
    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 561
    if-eqz v0, :cond_159

    .line 563
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 565
    .local v1, "task":Lcom/android/server/wm/Task;
    const-string v2, "appDied"

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 567
    if-eqz v1, :cond_159

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_159

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 568
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_159

    .line 569
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 573
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_159
    return-void
.end method


# virtual methods
.method process(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mHasVisibleActivities:Z

    .line 461
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 462
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mIsProcessRemoved:Z

    .line 463
    if-eqz v1, :cond_15

    .line 470
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->makeFinishingForProcessRemoved()V

    .line 473
    :cond_15
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStack$RemoveHistoryRecordsForApp$8j2ZFLAwkXnwDAxiTFN7mMDLhjU;

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 475
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 473
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 476
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 477
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 479
    :goto_29
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 480
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mToRemove:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->processActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_29

    .line 483
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mApp:Lcom/android/server/wm/WindowProcessController;

    .line 484
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack$RemoveHistoryRecordsForApp;->mHasVisibleActivities:Z

    return v0
.end method
