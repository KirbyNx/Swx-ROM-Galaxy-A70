.class Lcom/android/server/wm/TaskOrganizerController;
.super Landroid/window/ITaskOrganizerController$Stub;
.source "TaskOrganizerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;,
        Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;,
        Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
    }
.end annotation


# static fields
.field private static final DEFER_SPLIT_TASK_ORGANIZER_TIMEOUT_MS:J = 0x1388L

.field private static final EMPTY_LIST:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPORT_CONFIGS:I = 0x20000c00

.field private static final REPORT_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TaskOrganizerController"


# instance fields
.field private mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredSplitTaskOrganizer:Z

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mHandlDeferredSplitTaskOrganizerTimeoutRunnable:Ljava/lang/Runnable;

.field private final mLastSentTaskInfos:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/android/server/wm/Task;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskInfoChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

.field private final mTaskOrganizerStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskOrganizerController;->EMPTY_LIST:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 357
    invoke-direct {p0}, Landroid/window/ITaskOrganizerController$Stub;-><init>()V

    .line 333
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    .line 336
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    .line 347
    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$2SEKD1DgtwDZekWAaTCGbpabOfA;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$2SEKD1DgtwDZekWAaTCGbpabOfA;-><init>(Lcom/android/server/wm/TaskOrganizerController;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mHandlDeferredSplitTaskOrganizerTimeoutRunnable:Ljava/lang/Runnable;

    .line 358
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 359
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 361
    new-instance v0, Lcom/android/server/wm/SplitStatusCounter;

    invoke-direct {v0}, Lcom/android/server/wm/SplitStatusCounter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

    .line 364
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/function/Consumer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskOrganizerController;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/TaskOrganizerController;

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    return-object v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private handleDeferredSplitTaskOrganizerTimeout()V
    .registers 6

    .line 916
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 917
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 918
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTopMostLeafTask(Z)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 919
    .local v1, "topTask":Lcom/android/server/wm/Task;
    const/4 v3, 0x1

    if-eqz v1, :cond_24

    .line 920
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v4
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_3e

    if-eqz v4, :cond_24

    :cond_22
    move v4, v3

    goto :goto_25

    :cond_24
    move v4, v2

    .line 922
    .local v4, "isHomeOrRecentsTask":Z
    :goto_25
    if-eqz v4, :cond_29

    .line 923
    :try_start_27
    iput-boolean v3, v1, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 925
    :cond_29
    const-string v3, "defer_organizer_timeout"

    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskOrganizerController;->continueSplitTaskOrganizerLocked(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_37

    .line 927
    if-eqz v4, :cond_32

    .line 928
    :try_start_30
    iput-boolean v2, v1, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 931
    .end local v1    # "topTask":Lcom/android/server/wm/Task;
    .end local v4    # "isHomeOrRecentsTask":Z
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 932
    return-void

    .line 927
    .restart local v1    # "topTask":Lcom/android/server/wm/Task;
    .restart local v4    # "isHomeOrRecentsTask":Z
    :catchall_37
    move-exception v3

    if-eqz v4, :cond_3c

    .line 928
    :try_start_3a
    iput-boolean v2, v1, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 930
    :cond_3c
    nop

    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    throw v3

    .line 931
    .end local v1    # "topTask":Lcom/android/server/wm/Task;
    .end local v4    # "isHomeOrRecentsTask":Z
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static synthetic lambda$registerTaskOrganizer$1(ILcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "windowingMode"    # I
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 427
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne v0, p0, :cond_a

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    .line 430
    :cond_a
    return-void
.end method

.method private postDispatchTaskInfoChanged(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 994
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wm/Task;->mLaunchSplitWindowingMode:I

    .line 1003
    return-void
.end method

.method private retrieveSyncTransactionIdIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "lastInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "newInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 972
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 974
    return-void

    .line 976
    :cond_7
    if-eqz p2, :cond_f

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iget v1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v0, v1, :cond_17

    .line 978
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

    invoke-virtual {v0}, Lcom/android/server/wm/SplitStatusCounter;->getSyncId()J

    move-result-wide v0

    iput-wide v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->syncTransactionId:J

    .line 980
    :cond_17
    return-void
.end method


# virtual methods
.method clearWaitingDismissSplit()V
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

    invoke-virtual {v0}, Lcom/android/server/wm/SplitStatusCounter;->clearWaitingDismissSplit()V

    .line 988
    return-void
.end method

.method continueSplitTaskOrganizerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 895
    iget-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    if-eqz v0, :cond_4f

    .line 896
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continueSplitTaskOrganizerLocked:[SplitRecents] reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_25
    if-ltz v0, :cond_46

    .line 901
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 902
    .local v2, "pendingTask":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_36

    .line 903
    goto :goto_43

    .line 906
    :cond_36
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/SplitStatusCounter;->waitDismissSplitIfPossible(Lcom/android/server/wm/Task;)V

    .line 908
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 909
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 900
    .end local v2    # "pendingTask":Lcom/android/server/wm/Task;
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 911
    .end local v0    # "i":I
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mHandlDeferredSplitTaskOrganizerTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 913
    :cond_4f
    return-void
.end method

.method public createRootTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 14
    .param p1, "displayId"    # I
    .param p2, "windowingMode"    # I

    .line 482
    const-string v0, "createRootTask()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    .local v0, "origId":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_4b

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 486
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 487
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_22

    .line 488
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_45

    .line 499
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    return-object v4

    .line 491
    :cond_22
    :try_start_22
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/4 v10, 0x1

    move v5, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZLandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 494
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 495
    .local v5, "out":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_45

    .line 499
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    return-object v5

    .line 497
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "out":Landroid/app/ActivityManager$RunningTaskInfo;
    :catchall_45
    move-exception v3

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "windowingMode":I
    throw v3
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    .line 499
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "windowingMode":I
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 500
    throw v2
.end method

.method deferSplitTaskOrganizerLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 885
    iget-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    if-nez v0, :cond_28

    .line 886
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mHandlDeferredSplitTaskOrganizerTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deferSplitTaskOrganizerLocked:[SplitRecents] reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_28
    return-void
.end method

.method public deleteRootTask(Landroid/window/WindowContainerToken;)Z
    .registers 9
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 505
    const-string v0, "deleteRootTask()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    .local v0, "origId":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_53

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 509
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 510
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_26

    const/4 v4, 0x0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_4d

    .line 519
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    return v4

    .line 511
    :cond_26
    :try_start_26
    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_36

    .line 515
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->removeImmediately()V

    .line 516
    const/4 v4, 0x1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_4d

    .line 519
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    return v4

    .line 512
    :cond_36
    :try_start_36
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to delete task not created by organizer task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v4

    .line 517
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_4d
    move-exception v3

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_36 .. :try_end_4f} :catchall_4d

    :try_start_4f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    throw v3
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 519
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 520
    throw v2
.end method

.method dispatchPendingTaskInfoChanges()V
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 525
    return-void

    .line 527
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_14
    if-ge v0, v1, :cond_25

    .line 528
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskOrganizerController;->dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 531
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_25
    iget-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    if-eqz v0, :cond_4b

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_31
    if-ltz v0, :cond_4a

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 534
    .local v1, "pendingTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 535
    goto :goto_47

    .line 537
    :cond_42
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 532
    .end local v1    # "pendingTask":Lcom/android/server/wm/Task;
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .end local v0    # "i":I
    :cond_4a
    goto :goto_50

    .line 541
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 543
    :goto_50
    return-void
.end method

.method dispatchTaskInfoChanged(Lcom/android/server/wm/Task;Z)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SplitStatusCounter;->update(Lcom/android/server/wm/Task;)V

    .line 551
    const/4 v0, 0x0

    if-nez p2, :cond_5a

    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    if-eqz v1, :cond_5a

    .line 554
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 558
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 560
    nop

    .line 561
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 562
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    .line 563
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$PIGHIjGcx8SeireIEyyVf9gPE9E;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$PIGHIjGcx8SeireIEyyVf9gPE9E;-><init>(Lcom/android/server/wm/TaskOrganizerController;)V

    .line 564
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 565
    invoke-interface {v0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    .line 566
    .local v0, "secondaryIndex":I
    if-ltz v0, :cond_4e

    .line 567
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_53

    .line 569
    :cond_4e
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    .end local v0    # "secondaryIndex":I
    :goto_53
    goto :goto_59

    .line 573
    :cond_54
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :goto_59
    return-void

    .line 579
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RecentTaskItemController;->update(Lcom/android/server/wm/Task;)V

    .line 582
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 583
    .local v1, "lastInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v2, :cond_74

    .line 584
    new-instance v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 586
    :cond_74
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 587
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 588
    const/4 v2, 0x1

    if-eqz v1, :cond_aa

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v3, v4, :cond_aa

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-ne v3, v4, :cond_aa

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-ne v3, v4, :cond_aa

    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 592
    invoke-static {v3, v4}, Landroid/app/ActivityManager$TaskDescription;->equals(Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result v3

    if-nez v3, :cond_a8

    goto :goto_aa

    :cond_a8
    move v3, v0

    goto :goto_ab

    :cond_aa
    :goto_aa
    move v3, v2

    .line 593
    .local v3, "changed":Z
    :goto_ab
    if-nez v3, :cond_de

    .line 594
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    .line 595
    .local v4, "cfgChanges":I
    const/high16 v5, 0x20000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_cc

    .line 596
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v6, v2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide v5

    long-to-int v5, v5

    goto :goto_cd

    .line 598
    :cond_cc
    move v5, v0

    :goto_cd
    nop

    .line 599
    .local v5, "winCfgChanges":I
    and-int/lit8 v6, v5, 0x3

    if-nez v6, :cond_d6

    .line 600
    const v6, -0x20000001

    and-int/2addr v4, v6

    .line 602
    :cond_d6
    const v6, 0x20000c00

    and-int/2addr v6, v4

    if-eqz v6, :cond_dd

    move v0, v2

    :cond_dd
    move v3, v0

    .line 604
    .end local v4    # "cfgChanges":I
    .end local v5    # "winCfgChanges":I
    :cond_de
    if-nez v3, :cond_e3

    if-nez p2, :cond_e3

    .line 605
    return-void

    .line 607
    :cond_e3
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 608
    .local v0, "newInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mLastSentTaskInfos:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTmpTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 613
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 618
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 619
    invoke-interface {v4}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 618
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 620
    .local v2, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v2, :cond_10f

    .line 623
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/TaskOrganizerController;->retrieveSyncTransactionIdIfNeeded(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 626
    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskInfoChanged(Lcom/android/server/wm/Task;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 631
    .end local v2    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_10f
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->postDispatchTaskInfoChanged(Lcom/android/server/wm/Task;)V

    .line 634
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "TaskOrganizerController:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Per windowing mode:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1010
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d1

    .line 1011
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1012
    .local v3, "windowingMode":I
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1013
    .local v4, "taskOrgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_57
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_cd

    .line 1016
    iget-object v7, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 1017
    .local v7, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizedTasks:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$700(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1018
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mUid:I
    invoke-static {v7}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$800(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_a6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_ca

    .line 1021
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    add-int/lit8 v9, v9, 0x1

    goto :goto_a6

    .line 1015
    .end local v7    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v9    # "k":I
    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 1010
    .end local v3    # "windowingMode":I
    .end local v4    # "taskOrgs":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v5    # "j":I
    :cond_cd
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_22

    .line 1027
    .end local v2    # "i":I
    :cond_d1
    iget-boolean v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    if-eqz v1, :cond_de

    .line 1028
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDeferredSplitTaskOrganizer=true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    :cond_de
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1032
    return-void
.end method

.method public getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;
    .registers 12
    .param p1, "parent"    # Landroid/window/WindowContainerToken;
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/WindowContainerToken;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 698
    const-string v0, "getChildTasks()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_bb

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 702
    if-eqz p1, :cond_ad

    .line 705
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 706
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x0

    if-nez v3, :cond_3f

    .line 707
    const-string v5, "TaskOrganizerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t get children of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " because it is not valid."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_b5

    .line 733
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 708
    return-object v4

    .line 710
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 711
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_63

    .line 712
    const-string v6, "TaskOrganizerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not a task..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_b5

    .line 733
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 713
    return-object v4

    .line 716
    :cond_63
    :try_start_63
    iget-boolean v6, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v6, :cond_76

    .line 717
    const-string v6, "TaskOrganizerController"

    const-string v7, "Can only get children of root tasks created via createRootTask"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_b5

    .line 733
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 718
    return-object v4

    .line 720
    :cond_76
    :try_start_76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_81
    if-ltz v6, :cond_a5

    .line 722
    invoke-virtual {v5, v6}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    .line 723
    .local v7, "child":Lcom/android/server/wm/Task;
    if-nez v7, :cond_8e

    goto :goto_a2

    .line 724
    :cond_8e
    if-eqz p2, :cond_9b

    .line 725
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v8

    invoke-static {p2, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_9b

    .line 726
    goto :goto_a2

    .line 728
    :cond_9b
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    .end local v7    # "child":Lcom/android/server/wm/Task;
    :goto_a2
    add-int/lit8 v6, v6, -0x1

    goto :goto_81

    .line 730
    .end local v6    # "i":I
    :cond_a5
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_76 .. :try_end_a6} :catchall_b5

    .line 733
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    return-object v4

    .line 703
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_ad
    :try_start_ad
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t get children of null parent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3

    .line 731
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_b5
    move-exception v3

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_ad .. :try_end_b7} :catchall_b5

    :try_start_b7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "parent":Landroid/window/WindowContainerToken;
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_bb
    .catchall {:try_start_b7 .. :try_end_bb} :catchall_bb

    .line 733
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "parent":Landroid/window/WindowContainerToken;
    .restart local p2    # "activityTypes":[I
    :catchall_bb
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    throw v2
.end method

.method public getImeTarget(I)Landroid/window/WindowContainerToken;
    .registers 8
    .param p1, "displayId"    # I

    .line 638
    const-string v0, "getImeTarget()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 641
    .local v0, "origId":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_55

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 642
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 643
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 644
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-eqz v3, :cond_47

    iget-object v5, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_47

    iget-object v5, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    if-nez v5, :cond_25

    goto :goto_47

    .line 650
    :cond_25
    iget-object v5, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodInputTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 652
    .local v5, "task":Lcom/android/server/wm/Task;
    if-nez v5, :cond_35

    .line 653
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_4f

    .line 658
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 653
    return-object v4

    .line 655
    :cond_35
    :try_start_35
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_4f

    .line 658
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    return-object v4

    .line 646
    .end local v5    # "task":Lcom/android/server/wm/Task;
    :cond_47
    :goto_47
    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4f

    .line 658
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    return-object v4

    .line 656
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    throw v3
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 658
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    :catchall_55
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    throw v2
.end method

.method public getRootTaskSnapshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Z
    .registers 19
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "outSnapshotSurface"    # Landroid/view/SurfaceControl;
    .param p3, "sourceCropRect"    # Landroid/graphics/Rect;

    .line 836
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v3, "getTaskSnapshot"

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 839
    .local v2, "origId":J
    :try_start_11
    iget-object v4, v1, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_fb

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 841
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v5, 0x0

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_e1

    .line 842
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    if-nez v6, :cond_38

    move-object/from16 v14, p2

    move-object/from16 v8, p3

    goto/16 :goto_e5

    .line 845
    :cond_38
    iget-object v6, v0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_ed

    .line 846
    const/4 v7, 0x0

    move-object/from16 v8, p3

    :try_start_3d
    invoke-virtual {v6, v0, v8, v7}, Lcom/android/server/wm/SurfaceFreezer;->createTaskSnapshotLocked(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v6

    .line 847
    .local v6, "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v6, :cond_d3

    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v9

    if-nez v9, :cond_4d

    move-object/from16 v14, p2

    goto/16 :goto_d5

    .line 850
    :cond_4d
    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    .line 851
    .local v5, "bufferWidth":I
    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v9

    .line 852
    .local v9, "bufferHeight":I
    const-string v10, "TaskOrganizerController.getRootTaskSnapshot"

    .line 853
    .local v10, "callSite":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    .line 854
    invoke-interface {v11, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl$Builder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " - TaskOrganizer Screenshot"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 855
    invoke-virtual {v7, v5, v9}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    const/4 v11, -0x3

    .line 856
    invoke-virtual {v7, v11}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 857
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    const-string v11, "TaskOrganizerController.getRootTaskSnapshot"

    .line 858
    invoke-virtual {v7, v11}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v7

    .line 859
    invoke-virtual {v7}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v7

    .line 860
    .local v7, "tmpSurfaceControl":Landroid/view/SurfaceControl;
    new-instance v11, Landroid/view/Surface;

    invoke-direct {v11}, Landroid/view/Surface;-><init>()V

    .line 861
    .local v11, "drawSurface":Landroid/view/Surface;
    invoke-virtual {v11, v7}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 862
    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/Surface;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 863
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 864
    invoke-virtual {v6}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_c4

    .line 867
    new-instance v12, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v12}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 868
    .local v12, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v12, v7, v13}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 870
    .end local v12    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_c4
    const-string v12, "TaskOrganizerController.getRootTaskSnapshot"
    :try_end_c6
    .catchall {:try_start_3d .. :try_end_c6} :catchall_dd

    move-object/from16 v14, p2

    :try_start_c8
    invoke-virtual {v14, v7, v12}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 871
    monitor-exit v4
    :try_end_cc
    .catchall {:try_start_c8 .. :try_end_cc} :catchall_f9

    .line 874
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 871
    return v13

    .line 847
    .end local v5    # "bufferWidth":I
    .end local v7    # "tmpSurfaceControl":Landroid/view/SurfaceControl;
    .end local v9    # "bufferHeight":I
    .end local v10    # "callSite":Ljava/lang/String;
    .end local v11    # "drawSurface":Landroid/view/Surface;
    :cond_d3
    move-object/from16 v14, p2

    .line 848
    :goto_d5
    :try_start_d5
    monitor-exit v4
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_f9

    .line 874
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    return v5

    .line 872
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :catchall_dd
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_f2

    .line 841
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_e1
    move-object/from16 v14, p2

    move-object/from16 v8, p3

    .line 843
    :goto_e5
    :try_start_e5
    monitor-exit v4
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_f9

    .line 874
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 843
    return v5

    .line 872
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :catchall_ed
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v8, p3

    :goto_f2
    :try_start_f2
    monitor-exit v4
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f9

    :try_start_f3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    .end local p2    # "outSnapshotSurface":Landroid/view/SurfaceControl;
    .end local p3    # "sourceCropRect":Landroid/graphics/Rect;
    throw v0
    :try_end_f7
    .catchall {:try_start_f3 .. :try_end_f7} :catchall_f7

    .line 874
    .restart local v2    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    .restart local p2    # "outSnapshotSurface":Landroid/view/SurfaceControl;
    .restart local p3    # "sourceCropRect":Landroid/graphics/Rect;
    :catchall_f7
    move-exception v0

    goto :goto_100

    .line 872
    :catchall_f9
    move-exception v0

    goto :goto_f2

    .line 874
    :catchall_fb
    move-exception v0

    move-object/from16 v14, p2

    move-object/from16 v8, p3

    :goto_100
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 875
    throw v0
.end method

.method public getRootTasks(I[I)Ljava/util/List;
    .registers 13
    .param p1, "displayId"    # I
    .param p2, "activityTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 739
    const-string v0, "getRootTasks()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 740
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 742
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_81

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 743
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 744
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 745
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_5f

    .line 748
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "tdaNdx":I
    :goto_24
    if-ltz v5, :cond_57

    .line 750
    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 751
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->getStackCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "sNdx":I
    :goto_30
    if-ltz v7, :cond_54

    .line 752
    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskDisplayArea;->getStackAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 753
    .local v8, "task":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_43

    .line 754
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v9

    invoke-static {p2, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_43

    .line 755
    goto :goto_51

    .line 758
    :cond_43
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 759
    goto :goto_51

    .line 762
    :cond_4a
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .end local v8    # "task":Lcom/android/server/wm/Task;
    :goto_51
    add-int/lit8 v7, v7, -0x1

    goto :goto_30

    .line 749
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v7    # "sNdx":I
    :cond_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    .line 765
    .end local v5    # "tdaNdx":I
    :cond_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_7b

    .line 768
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    return-object v4

    .line 746
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_5f
    :try_start_5f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v4

    .line 766
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_7b
    move-exception v3

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_7b

    :try_start_7d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "activityTypes":[I
    throw v3
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_81

    .line 768
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "activityTypes":[I
    :catchall_81
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 769
    throw v2
.end method

.method public getTaskAnimationLayer(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Z)Z
    .registers 13
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "outAnimationLayer"    # Landroid/view/SurfaceControl;
    .param p3, "outParentSurface"    # Landroid/view/SurfaceControl;
    .param p4, "layerBoosted"    # Z

    .line 808
    const-string/jumbo v0, "getTaskAnimationLayer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 811
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_68

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 812
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 813
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v4, 0x0

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-eqz v5, :cond_5a

    .line 814
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-nez v5, :cond_2c

    goto :goto_5a

    .line 817
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 818
    const/4 v6, 0x1

    if-eqz p4, :cond_35

    move v7, v6

    goto :goto_36

    :cond_35
    move v7, v4

    .line 817
    :goto_36
    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskDisplayArea;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v5

    .line 819
    .local v5, "animationLayer":Landroid/view/SurfaceControl;
    if-eqz v5, :cond_52

    .line 820
    const-string v4, "TaskOrganizerController.getTaskAnimationLayer"

    invoke-virtual {p2, v5, v4}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    const-string v7, "TaskOrganizerController.getTaskAnimationLayer"

    invoke-virtual {p3, v4, v7}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 824
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_d .. :try_end_4b} :catchall_62

    .line 829
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    return v6

    .line 826
    :cond_52
    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_62

    .line 829
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    return v4

    .line 815
    .end local v5    # "animationLayer":Landroid/view/SurfaceControl;
    :cond_5a
    :goto_5a
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_62

    .line 829
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    return v4

    .line 827
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_62
    move-exception v3

    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "token":Landroid/window/WindowContainerToken;
    .end local p2    # "outAnimationLayer":Landroid/view/SurfaceControl;
    .end local p3    # "outParentSurface":Landroid/view/SurfaceControl;
    .end local p4    # "layerBoosted":Z
    throw v3
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    .line 829
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "token":Landroid/window/WindowContainerToken;
    .restart local p2    # "outAnimationLayer":Landroid/view/SurfaceControl;
    .restart local p3    # "outParentSurface":Landroid/view/SurfaceControl;
    .restart local p4    # "layerBoosted":Z
    :catchall_68
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    throw v2
.end method

.method getTaskOrganizer(I)Landroid/window/ITaskOrganizer;
    .registers 5
    .param p1, "windowingMode"    # I

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/server/wm/TaskOrganizerController;->EMPTY_LIST:Ljava/util/LinkedList;

    .line 457
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 458
    .local v0, "organizer":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 459
    return-object v1

    .line 461
    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 462
    .local v2, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-nez v2, :cond_1f

    .line 463
    return-object v1

    .line 465
    :cond_1f
    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    invoke-static {v2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    return-object v1
.end method

.method public handleInterceptBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 790
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_28

    .line 794
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 795
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mInterceptBackPressedOnTaskRoot:Z
    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$600(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 796
    return v0

    .line 799
    :cond_1f
    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onBackPressedOnTaskRoot(Lcom/android/server/wm/Task;)V

    .line 800
    const/4 v0, 0x1

    return v0

    .line 791
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_28
    :goto_28
    return v0
.end method

.method handleTaskRemoteAnimationStarted(Lcom/android/server/wm/Task;Z)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isOpeningTask"    # Z

    .line 935
    if-eqz p1, :cond_1f

    .line 936
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1f

    .line 940
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 941
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    # getter for: Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->mOrganizer:Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;
    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->access$500(Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;)Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerCallbacks;->onTaskRemoteAnimationStarted(Lcom/android/server/wm/Task;Z)V

    .line 942
    return-void

    .line 937
    .end local v0    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_1f
    :goto_1f
    return-void
.end method

.method handleTaskSplitLayoutChanged(FIIZ)V
    .registers 5
    .param p1, "splitRatio"    # F
    .param p2, "dockSide"    # I
    .param p3, "splitMode"    # I
    .param p4, "force"    # Z

    .line 951
    return-void
.end method

.method isDeferredSplitTaskOrganizerLocked()Z
    .registers 2

    .line 881
    iget-boolean v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferredSplitTaskOrganizer:Z

    return v0
.end method

.method public synthetic lambda$dispatchTaskInfoChanged$2$TaskOrganizerController(I)Z
    .registers 3
    .param p1, "i"    # I

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mPendingTaskInfoChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$TaskOrganizerController()V
    .registers 1

    .line 348
    invoke-direct {p0}, Lcom/android/server/wm/TaskOrganizerController;->handleDeferredSplitTaskOrganizerTimeout()V

    return-void
.end method

.method onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 470
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->addTask(Lcom/android/server/wm/Task;)V

    .line 471
    return-void
.end method

.method onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 475
    .local v0, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v0, :cond_11

    .line 476
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->removeTask(Lcom/android/server/wm/Task;)V

    .line 478
    :cond_11
    return-void
.end method

.method public registerTaskOrganizer(Landroid/window/ITaskOrganizer;I)V
    .registers 11
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "windowingMode"    # I

    .line 386
    const/4 v0, 0x2

    if-ne p2, v0, :cond_12

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_a

    goto :goto_30

    .line 388
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picture in picture is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_12
    invoke-static {p2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_1f

    goto :goto_30

    .line 393
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Split-screen is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_27
    const/4 v0, 0x6

    if-ne p2, v0, :cond_be

    .line 397
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v0, :cond_b6

    .line 405
    :goto_30
    const-string/jumbo v0, "registerTaskOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 407
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 409
    .local v1, "origId":J
    :try_start_3e
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_b1

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 410
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer(I)Landroid/window/ITaskOrganizer;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 411
    const-string v4, "TaskOrganizerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task organizer already exists for windowing mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_60
    iget-object v4, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 416
    .local v4, "orgs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/os/IBinder;>;"
    if-nez v4, :cond_75

    .line 417
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v5

    .line 418
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizersForWindowingMode:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    :cond_75
    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    .line 422
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    invoke-direct {v7, p0, p1, v0}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;-><init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;I)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_96
    iget-object v5, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$IROqpJoHJyTkwzoN5zK8QO7wJ2U;

    invoke-direct {v6, p2}, Lcom/android/server/wm/-$$Lambda$TaskOrganizerController$IROqpJoHJyTkwzoN5zK8QO7wJ2U;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 431
    .end local v4    # "orgs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/os/IBinder;>;"
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_41 .. :try_end_a3} :catchall_ab

    :try_start_a3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_b1

    .line 433
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    nop

    .line 435
    return-void

    .line 431
    :catchall_ab
    move-exception v4

    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "uid":I
    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .end local p2    # "windowingMode":I
    throw v4
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    .line 433
    .restart local v0    # "uid":I
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .restart local p2    # "windowingMode":I
    :catchall_b1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 434
    throw v3

    .line 398
    .end local v0    # "uid":I
    .end local v1    # "origId":J
    :cond_b6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multi-window is not supported on this device"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_be
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "As of now only Pinned/Split/Multiwindow windowing modes are supported for registerTaskOrganizer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeferTaskOrgCallbacksConsumer(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController;->mDeferTaskOrgCallbacksConsumer:Ljava/util/function/Consumer;

    .line 377
    return-void
.end method

.method public setInterceptBackPressedOnTaskRoot(Landroid/window/ITaskOrganizer;Z)V
    .registers 8
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;
    .param p2, "interceptBackPressed"    # Z

    .line 775
    const-string/jumbo v0, "setInterceptBackPressedOnTaskRoot()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 778
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_30

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 779
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 780
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v3, :cond_21

    .line 781
    invoke-virtual {v3, p2}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->setInterceptBackPressedOnTaskRoot(Z)V

    .line 783
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2a

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_30

    .line 785
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    nop

    .line 787
    return-void

    .line 783
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .end local p2    # "interceptBackPressed":Z
    throw v3
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_30

    .line 785
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    .restart local p2    # "interceptBackPressed":Z
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    throw v2
.end method

.method public setLaunchRoot(ILandroid/window/WindowContainerToken;)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "token"    # Landroid/window/WindowContainerToken;

    .line 664
    const-string/jumbo v0, "setLaunchRoot()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 667
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_aa

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 668
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 669
    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 670
    .local v3, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v3, :cond_26

    .line 671
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_a4

    .line 691
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    return-void

    .line 673
    :cond_26
    const/4 v4, 0x0

    if-nez p2, :cond_2b

    .line 674
    move-object v5, v4

    goto :goto_37

    :cond_2b
    :try_start_2b
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 675
    .local v5, "task":Lcom/android/server/wm/Task;
    :goto_37
    if-nez v5, :cond_43

    .line 676
    iput-object v4, v3, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 677
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_a4

    .line 691
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 677
    return-void

    .line 679
    :cond_43
    :try_start_43
    iget-boolean v4, v5, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_8d

    .line 683
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 684
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_66

    .line 688
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    iput-object v5, v4, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTask:Lcom/android/server/wm/Task;

    .line 689
    .end local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_43 .. :try_end_5e} :catchall_a4

    :try_start_5e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_aa

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    nop

    .line 693
    return-void

    .line 685
    .restart local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_66
    :try_start_66
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t set launch root for display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to task on display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "token":Landroid/window/WindowContainerToken;
    throw v4

    .line 680
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "token":Landroid/window/WindowContainerToken;
    :cond_8d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to set task not created by organizer as launch root task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "token":Landroid/window/WindowContainerToken;
    throw v4

    .line 689
    .end local v3    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "token":Landroid/window/WindowContainerToken;
    :catchall_a4
    move-exception v3

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_66 .. :try_end_a6} :catchall_a4

    :try_start_a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "displayId":I
    .end local p2    # "token":Landroid/window/WindowContainerToken;
    throw v3
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_aa

    .line 691
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "displayId":I
    .restart local p2    # "token":Landroid/window/WindowContainerToken;
    :catchall_aa
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw v2
.end method

.method skipToApply(Landroid/window/WindowContainerTransaction;)Z
    .registers 3
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController;->mSplitStatusCounter:Lcom/android/server/wm/SplitStatusCounter;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SplitStatusCounter;->isOldTransaction(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    return v0
.end method

.method public unregisterTaskOrganizer(Landroid/window/ITaskOrganizer;)V
    .registers 7
    .param p1, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 439
    const-string/jumbo v0, "unregisterTaskOrganizer()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_3b

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 443
    iget-object v3, p0, Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 444
    .local v3, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-nez v3, :cond_26

    .line 445
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_35

    .line 451
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    return-void

    .line 447
    :cond_26
    :try_start_26
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->unlinkDeath()V

    .line 448
    invoke-virtual {v3}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 449
    .end local v3    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_35

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3b

    .line 451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    nop

    .line 453
    return-void

    .line 449
    :catchall_35
    move-exception v3

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .end local p1    # "organizer":Landroid/window/ITaskOrganizer;
    throw v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .line 451
    .restart local v0    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/TaskOrganizerController;
    .restart local p1    # "organizer":Landroid/window/ITaskOrganizer;
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    throw v2
.end method
