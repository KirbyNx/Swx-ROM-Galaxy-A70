.class public Lcom/android/server/wm/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final DEFER_RESUME:Z = true

.field private static final IDLE_NOW_MSG:I = 0xc9

.field private static final IDLE_TIMEOUT:I = 0x2710

.field private static final IDLE_TIMEOUT_MSG:I = 0xc8

.field private static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field private static final LAUNCH_TIMEOUT:I = 0x2710

.field private static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field private static final PROCESS_STOPPING_AND_FINISHING_MSG:I = 0xcd

.field static final REMOVE_FROM_RECENTS:Z = true

.field private static final REPORT_HOME_CHANGED_MSG:I = 0xd8

.field private static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field private static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field private static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field private static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field private static final SLEEP_TIMEOUT:I = 0x1388

.field private static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field private static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field private static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field private static final VALIDATE_WAKE_LOCK_CALLER:Z


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field private mDeferResumeCount:I

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mInitialized:Z

.field private mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field private final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemChooserActivity:Landroid/content/ComponentName;

.field mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field mUserLeaving:Z

.field private mVisibilityTransactionDepth:I

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 278
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 282
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 329
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 490
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 491
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 492
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 493
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/wm/ActivityRecord;

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    return-object v0
.end method

.method private addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2822
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2823
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2825
    :cond_b
    return-void
.end method

.method private addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2852
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2854
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2858
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2859
    return-void
.end method

.method private checkFinishBootingLocked()Z
    .registers 5

    .line 1579
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1580
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 1581
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1582
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1583
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    .line 1584
    const/4 v1, 0x1

    .line 1586
    :cond_1c
    if-nez v0, :cond_20

    if-eqz v1, :cond_25

    .line 1587
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    .line 1589
    :cond_25
    return v0
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .registers 29
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header"    # Ljava/lang/Runnable;
    .param p11, "lastTask"    # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/wm/Task;",
            ")Z"
        }
    .end annotation

    .line 2440
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v0, 0x0

    .line 2441
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2442
    .local v4, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2443
    .local v5, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object v8, v4

    move v9, v5

    move v10, v6

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object v6, v0

    move/from16 v0, p9

    .end local p9    # "needNL":Z
    .end local p10    # "header":Ljava/lang/Runnable;
    .end local p11    # "lastTask":Lcom/android/server/wm/Task;
    .local v0, "needNL":Z
    .local v4, "header":Ljava/lang/Runnable;
    .local v5, "lastTask":Lcom/android/server/wm/Task;
    .local v6, "innerPrefix":Ljava/lang/String;
    .local v8, "args":[Ljava/lang/String;
    .local v9, "printed":Z
    .local v10, "i":I
    :goto_19
    if-ltz v10, :cond_17e

    .line 2444
    move-object/from16 v11, p2

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 2445
    .local v12, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_33

    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    .line 2446
    move-object/from16 v7, p0

    move-object/from16 v15, p4

    goto/16 :goto_175

    .line 2448
    :cond_33
    const/4 v13, 0x0

    if-nez v6, :cond_49

    .line 2449
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2450
    new-array v8, v13, [Ljava/lang/String;

    .line 2452
    :cond_49
    const/4 v9, 0x1

    .line 2453
    if-nez p6, :cond_55

    if-nez p5, :cond_54

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v14

    if-nez v14, :cond_55

    :cond_54
    move v13, v7

    .line 2454
    .local v13, "full":Z
    :cond_55
    if-eqz v0, :cond_5f

    .line 2455
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2456
    const/4 v0, 0x0

    move v14, v0

    goto :goto_60

    .line 2454
    :cond_5f
    move v14, v0

    .line 2458
    .end local v0    # "needNL":Z
    .local v14, "needNL":Z
    :goto_60
    if-eqz v4, :cond_66

    .line 2459
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 2460
    const/4 v4, 0x0

    .line 2462
    :cond_66
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v5, v0, :cond_ab

    .line 2463
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2464
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2465
    const-string v0, "  "

    if-eqz v13, :cond_7a

    const-string v15, "* "

    goto :goto_7b

    :cond_7a
    move-object v15, v0

    :goto_7b
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2467
    if-eqz v13, :cond_96

    .line 2468
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ab

    .line 2469
    :cond_96
    if-eqz p5, :cond_ab

    .line 2471
    iget-object v15, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_ab

    .line 2472
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    iget-object v0, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2477
    :cond_ab
    :goto_ab
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v13, :cond_b3

    const-string v0, "  * "

    goto :goto_b5

    :cond_b3
    const-string v0, "    "

    :goto_b5
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2480
    if-eqz v13, :cond_d3

    .line 2481
    invoke-virtual {v12, v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_ed

    .line 2482
    :cond_d3
    if-eqz p5, :cond_ed

    .line 2484
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2485
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_ed

    .line 2486
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2489
    :cond_ed
    :goto_ed
    if-eqz p7, :cond_16e

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_16e

    .line 2492
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 2494
    :try_start_f8
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fd} :catch_14d
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_fd} :catch_133

    move-object/from16 p9, v0

    .line 2496
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_ff
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2497
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 2496
    invoke-interface {v0, v7, v2, v6, v8}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_ff .. :try_end_10e} :catchall_121

    .line 2499
    const-wide/16 v2, 0x7d0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "header":Ljava/lang/Runnable;
    :try_start_118
    invoke-virtual {v4, v7, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11f

    .line 2501
    :try_start_11b
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2502
    goto :goto_169

    .line 2501
    :catchall_11f
    move-exception v0

    goto :goto_12a

    .local v4, "header":Ljava/lang/Runnable;
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_121
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "header":Ljava/lang/Runnable;
    :goto_12a
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2502
    nop

    .end local v5    # "lastTask":Lcom/android/server/wm/Task;
    .end local v6    # "innerPrefix":Ljava/lang/String;
    .end local v8    # "args":[Ljava/lang/String;
    .end local v9    # "printed":Z
    .end local v10    # "i":I
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "full":Z
    .end local v14    # "needNL":Z
    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "label":Ljava/lang/String;
    .end local p5    # "complete":Z
    .end local p6    # "brief":Z
    .end local p7    # "client":Z
    .end local p8    # "dumpPackage":Ljava/lang/String;
    .end local p9    # "header":Ljava/lang/Runnable;
    throw v0
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_12f} :catch_131
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_12f} :catch_12f

    .line 2505
    .end local v4    # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v5    # "lastTask":Lcom/android/server/wm/Task;
    .restart local v6    # "innerPrefix":Ljava/lang/String;
    .restart local v8    # "args":[Ljava/lang/String;
    .restart local v9    # "printed":Z
    .restart local v10    # "i":I
    .restart local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13    # "full":Z
    .restart local v14    # "needNL":Z
    .restart local p0    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "label":Ljava/lang/String;
    .restart local p5    # "complete":Z
    .restart local p6    # "brief":Z
    .restart local p7    # "client":Z
    .restart local p8    # "dumpPackage":Ljava/lang/String;
    .restart local p9    # "header":Ljava/lang/Runnable;
    :catch_12f
    move-exception v0

    goto :goto_138

    .line 2503
    :catch_131
    move-exception v0

    goto :goto_152

    .line 2505
    .end local p9    # "header":Ljava/lang/Runnable;
    .local v4, "header":Ljava/lang/Runnable;
    :catch_133
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2506
    .end local v4    # "header":Ljava/lang/Runnable;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p9    # "header":Ljava/lang/Runnable;
    :goto_138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16a

    .line 2503
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p9    # "header":Ljava/lang/Runnable;
    .restart local v4    # "header":Ljava/lang/Runnable;
    :catch_14d
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2504
    .end local v4    # "header":Ljava/lang/Runnable;
    .local v0, "e":Ljava/io/IOException;
    .restart local p9    # "header":Ljava/lang/Runnable;
    :goto_152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2507
    .end local v0    # "e":Ljava/io/IOException;
    :goto_169
    nop

    .line 2508
    :goto_16a
    const/4 v0, 0x1

    move-object/from16 v4, p9

    .end local v14    # "needNL":Z
    .local v0, "needNL":Z
    goto :goto_175

    .line 2489
    .end local v0    # "needNL":Z
    .end local p9    # "header":Ljava/lang/Runnable;
    .restart local v4    # "header":Ljava/lang/Runnable;
    .restart local v14    # "needNL":Z
    :cond_16e
    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2443
    .end local v4    # "header":Ljava/lang/Runnable;
    .end local v12    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "full":Z
    .restart local p9    # "header":Ljava/lang/Runnable;
    move-object/from16 v4, p9

    move v0, v14

    .end local v14    # "needNL":Z
    .end local p9    # "header":Ljava/lang/Runnable;
    .restart local v0    # "needNL":Z
    .restart local v4    # "header":Ljava/lang/Runnable;
    :goto_175
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v7, 0x1

    goto/16 :goto_19

    :cond_17e
    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p4

    .line 2511
    .end local v10    # "i":I
    return v9
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I

    .line 1518
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1519
    return v0

    .line 1522
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1523
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1524
    return v0

    .line 1529
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 1531
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1530
    invoke-virtual {v2, p2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_21} :catch_4e

    .line 1535
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1537
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1538
    return v0

    .line 1541
    :cond_2b
    invoke-static {v1, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_34

    .line 1542
    const/4 v0, 0x1

    return v0

    .line 1545
    :cond_34
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    .line 1546
    .local v9, "opCode":I
    if-ne v9, v4, :cond_3b

    .line 1547
    return v0

    .line 1550
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const-string v8, ""

    move v4, v9

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4d

    .line 1552
    const/4 v0, 0x2

    return v0

    .line 1555
    :cond_4d
    return v0

    .line 1532
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "opCode":I
    :catch_4e
    move-exception v2

    .line 1533
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1482
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_12

    .line 1483
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1485
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .registers 16
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "callingPid"    # I
    .param p5, "callingUid"    # I
    .param p6, "ignoreTargetSecurity"    # Z

    .line 1491
    const/4 v0, -0x1

    if-nez p6, :cond_13

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p4, p5, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_13

    .line 1494
    const/4 v0, 0x1

    return v0

    .line 1497
    :cond_13
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 1498
    return v2

    .line 1501
    :cond_19
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1502
    .local v1, "opCode":I
    if-ne v1, v0, :cond_22

    .line 1503
    return v2

    .line 1506
    :cond_22
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const-string v8, ""

    move v4, v1

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    .line 1508
    if-nez p6, :cond_36

    .line 1509
    const/4 v0, 0x2

    return v0

    .line 1513
    :cond_36
    return v2
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # I

    .line 2772
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2773
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_27

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_27

    .line 2774
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable(I)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_27

    .line 2783
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 2785
    return-void

    .line 2775
    :cond_27
    :goto_27
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2283
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2285
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2286
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2287
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2291
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2292
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_28

    .line 2293
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 2295
    :cond_28
    return-void
.end method

.method public static synthetic lambda$BFgD0ahFSDg4CqQNytqWrPRgFII(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic lambda$GTQdt2-hJbSgeh3nbBxR-rvVTqw(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->processRemoveTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic lambda$mLKHIIzkTAK9QSlSxia8-84y15M(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "extrasSize":I
    if-eqz p1, :cond_d

    .line 1209
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1210
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_d

    .line 1211
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1214
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_d
    if-nez p2, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1215
    .local v1, "icicleSize":I
    :goto_15
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_42

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction too large, intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extras size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", icicle size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_42
    return-void
.end method

.method private moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "reason"    # Ljava/lang/String;

    .line 1765
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1767
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_17

    :cond_f
    if-eqz v0, :cond_1a

    .line 1769
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1772
    :cond_17
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1774
    :cond_1a
    return-void
.end method

.method private static nextTaskIdForUser(II)I
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "userId"    # I

    .line 590
    add-int/lit8 v0, p0, 0x1

    .line 591
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    .line 593
    sub-int/2addr v0, v2

    .line 595
    :cond_b
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "header"    # Ljava/lang/Runnable;

    .line 2421
    if-eqz p1, :cond_1e

    .line 2422
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2423
    :cond_c
    if-eqz p3, :cond_11

    .line 2424
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2426
    :cond_11
    if-eqz p5, :cond_16

    .line 2427
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 2429
    :cond_16
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2430
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2431
    const/4 v0, 0x1

    return v0

    .line 2434
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private processRemoveTask(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1850
    const/4 v0, 0x1

    const-string/jumbo v1, "remove-stack"

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1851
    return-void
.end method

.method private processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .registers 13
    .param p1, "launchedActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "processPausingActivities"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 2315
    const/4 v0, 0x0

    .line 2316
    .local v0, "readyToStopActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_95

    .line 2317
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2318
    .local v3, "s":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x3

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v4

    .line 2320
    .local v4, "animating":Z
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": nowVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " animating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " finishing="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :cond_50
    if-eqz v4, :cond_58

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v5, :cond_91

    .line 2323
    :cond_58
    if-nez p2, :cond_69

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 2326
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2328
    goto :goto_91

    .line 2331
    :cond_69
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_81

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ready to stop: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_81
    if-nez v0, :cond_89

    .line 2333
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 2335
    :cond_89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2316
    .end local v3    # "s":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "animating":Z
    :cond_91
    :goto_91
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    .line 2341
    .end local v1    # "i":I
    :cond_95
    if-nez v0, :cond_99

    const/4 v1, 0x0

    goto :goto_9d

    :cond_99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2342
    .local v1, "numReadyStops":I
    :goto_9d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9e
    if-ge v3, v1, :cond_ba

    .line 2343
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2344
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 2345
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_b4

    .line 2347
    invoke-virtual {v4, p3}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_b7

    .line 2349
    :cond_b4
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    .line 2342
    .end local v4    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_b7
    :goto_b7
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 2354
    .end local v3    # "i":I
    :cond_ba
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2355
    .local v3, "numFinishingActivities":I
    if-nez v3, :cond_c3

    .line 2356
    return-void

    .line 2361
    :cond_c3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2362
    .local v4, "finishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2363
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d0
    if-ge v5, v3, :cond_f5

    .line 2364
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 2365
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v7

    if-eqz v7, :cond_f2

    .line 2366
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finish-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(ZLjava/lang/String;)Z

    .line 2363
    .end local v6    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_f2
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 2369
    .end local v5    # "i":I
    :cond_f5
    return-void
.end method

.method private removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 9
    .param p2, "app"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2378
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2379
    .local v0, "i":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from list "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_33
    :goto_33
    if-lez v0, :cond_71

    .line 2382
    add-int/lit8 v0, v0, -0x1

    .line 2383
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2384
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_5d
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, p2, :cond_70

    .line 2386
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_6a

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_6a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2388
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 2390
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_70
    goto :goto_33

    .line 2391
    :cond_71
    return-void
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1839
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1840
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removePinnedStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_1e

    .line 1842
    :cond_b
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$GTQdt2-hJbSgeh3nbBxR-rvVTqw;

    const-class v1, Lcom/android/server/wm/Task;

    .line 1843
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1842
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 1844
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1845
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1847
    .end local v0    # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :goto_1e
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .registers 3

    .line 2570
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_c

    .line 2571
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 2573
    :cond_c
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2579
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2580
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2582
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2583
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for top state to be released by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    :cond_31
    return-void
.end method

.method private scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;

    .line 2838
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$mLKHIIzkTAK9QSlSxia8-84y15M;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$mLKHIIzkTAK9QSlSxia8-84y15M;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2840
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2838
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2841
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2842
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2844
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 2846
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 2847
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2849
    :cond_23
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2198
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_31

    .line 2200
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

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

    .line 2202
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2201
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_31
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    .line 1566
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1567
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1569
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1571
    :cond_16
    return-void
.end method

.method activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "fromTimeout"    # Z
    .param p3, "processPausingActivities"    # Z
    .param p4, "config"    # Landroid/content/res/Configuration;

    .line 1596
    const/4 v0, 0x0

    .line 1598
    .local v0, "booting":Z
    const/4 v1, 0x0

    if-eqz p1, :cond_58

    .line 1599
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activityIdleInternal: Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 1600
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1599
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1602
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1603
    if-eqz p2, :cond_38

    .line 1604
    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 1613
    :cond_38
    if-eqz p4, :cond_3d

    .line 1628
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1633
    :cond_3d
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1639
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v2

    if-nez v2, :cond_52

    :cond_50
    if-eqz p2, :cond_56

    .line 1641
    :cond_52
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v0

    .line 1646
    :cond_56
    iput v1, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 1649
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1650
    if-eqz p1, :cond_67

    .line 1651
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1654
    :cond_67
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1655
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0xcc

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1660
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1662
    :cond_7b
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1666
    :cond_81
    const-string/jumbo v1, "idle"

    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 1668
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b2

    .line 1669
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1670
    .local v1, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1672
    if-nez v0, :cond_b2

    .line 1674
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b2

    .line 1675
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 1680
    .end local v1    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .end local v2    # "i":I
    :cond_b2
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$LMA-NaZZEhjYw57n2F4mmoLAGTA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$LMA-NaZZEhjYw57n2F4mmoLAGTA;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1681
    return-void
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2788
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2789
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_23

    .line 2792
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMtWindowController:Lcom/android/server/wm/MultiTaskingWindowController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/MultiTaskingWindowController;->onActivityRelaunchFinishedLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2795
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->finishRelaunching()V

    .line 2796
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2799
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2803
    :cond_23
    return-void
.end method

.method beginActivityVisibilityUpdate()V
    .registers 2

    .line 2878
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    .line 2879
    return-void
.end method

.method beginDeferResume()V
    .registers 2

    .line 2898
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2899
    return-void
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 414
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 416
    return v0

    .line 418
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 420
    return v2

    .line 422
    :cond_c
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 426
    return v2

    .line 428
    :cond_13
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 5
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 1779
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1f

    .line 1782
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 1783
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    .line 1782
    :cond_1e
    return v0

    .line 1780
    :cond_1f
    :goto_1f
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 5
    .param p1, "allowDelay"    # Z

    .line 2222
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_32

    .line 2226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSleepingOrShuttingDownLocked false, isSleepingLocked()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2227
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShuttingDown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2226
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    return-void

    .line 2234
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->putStacksToSleep(ZZ)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2236
    return-void

    .line 2240
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2242
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2244
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGoingToSleepWakeLock.release() is called in checkReadyForSleepLocked() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    .line 2248
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2253
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_79

    .line 2254
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2256
    :cond_79
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z
    .registers 39
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "callingPid"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPackage"    # Ljava/lang/String;
    .param p8, "callingFeatureId"    # Ljava/lang/String;
    .param p9, "ignoreTargetSecurity"    # Z
    .param p10, "launchingInTask"    # Z
    .param p11, "callerApp"    # Lcom/android/server/wm/WindowProcessController;
    .param p12, "resultRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p13, "resultStack"    # Lcom/android/server/wm/ActivityStack;

    .line 1292
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p11

    iget-object v0, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v13, 0x1

    if-eqz v0, :cond_21

    iget-object v0, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1293
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v13

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move v14, v0

    .line 1294
    .local v14, "isCallerRecents":Z
    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v0, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v15

    .line 1297
    .local v15, "startAnyPerm":I
    const/16 v16, 0x0

    .line 1300
    .local v16, "isPendingStartRecent":Z
    if-eqz v15, :cond_1db

    if-eqz v14, :cond_31

    if-nez p10, :cond_1db

    :cond_31
    if-eqz v16, :cond_35

    goto/16 :goto_1db

    .line 1307
    :cond_35
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v6

    .line 1309
    .local v6, "componentRestriction":I
    nop

    .line 1310
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1309
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    .line 1311
    .local v0, "actionRestriction":I
    const-string v1, ") requires "

    const-string v2, "ActivityTaskManager"

    const-string v3, ", uid="

    const-string v4, " (pid="

    const-string v5, " from "

    if-eq v6, v13, :cond_e2

    if-ne v0, v13, :cond_61

    const/4 v12, 0x0

    goto/16 :goto_e3

    .line 1347
    :cond_61
    const-string v13, "Appop Denial: starting "

    const/4 v12, 0x2

    if-ne v0, v12, :cond_a6

    .line 1348
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1351
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "message":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v2, 0x0

    return v2

    .line 1355
    .end local v1    # "message":Ljava/lang/String;
    :cond_a6
    if-ne v6, v12, :cond_e0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires appop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1359
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1360
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    const/4 v12, 0x0

    return v12

    .line 1364
    .end local v1    # "message":Ljava/lang/String;
    :cond_e0
    const/4 v1, 0x1

    return v1

    .line 1311
    :cond_e2
    const/4 v12, 0x0

    .line 1313
    :goto_e3
    if-eqz p12, :cond_f6

    .line 1314
    const/16 v19, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, p12

    move-object/from16 v20, p3

    move/from16 v21, p4

    invoke-virtual/range {v18 .. v24}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1318
    :cond_f6
    const-string v13, "Permission Denial: starting "

    const/4 v12, 0x1

    if-ne v0, v12, :cond_135

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") with revoked permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    goto :goto_198

    .line 1323
    .end local v1    # "msg":Ljava/lang/String;
    :cond_135
    iget-boolean v12, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v12, :cond_16b

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") not exported from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_198

    .line 1329
    .end local v1    # "msg":Ljava/lang/String;
    :cond_16b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1334
    .restart local v1    # "msg":Ljava/lang/String;
    :goto_198
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    if-eqz v8, :cond_1a8

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move/from16 v24, v12

    goto :goto_1aa

    :cond_1a8
    const/16 v24, 0x0

    .line 1338
    .local v24, "userId":I
    :goto_1aa
    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x0

    .line 1339
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1338
    const-string v21, "ActivityStackSupervisor"

    const-string v23, ""

    invoke-static/range {v17 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1344
    .end local v24    # "userId":I
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1305
    .end local v0    # "actionRestriction":I
    .end local v1    # "msg":Ljava/lang/String;
    .end local v6    # "componentRestriction":I
    :cond_1db
    :goto_1db
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z

    .line 1936
    if-eqz p3, :cond_7

    .line 1937
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1940
    :cond_7
    nop

    .line 1941
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_25

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No base intent for task: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    return-void

    .line 1946
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1947
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_44

    .line 1948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No component for base intent of task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    return-void

    .line 1953
    :cond_44
    sget-object v1, Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 1954
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1953
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1955
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1957
    if-nez p2, :cond_67

    .line 1958
    return-void

    .line 1962
    :cond_67
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1963
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1964
    .local v3, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 1965
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1966
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_79
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_d0

    .line 1968
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 1969
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_86
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_cd

    .line 1970
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowProcessController;

    .line 1971
    .local v8, "proc":Lcom/android/server/wm/WindowProcessController;
    iget v9, v8, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v10, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v9, v10, :cond_99

    .line 1973
    goto :goto_ca

    .line 1975
    :cond_99
    iget-object v9, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v8, v9, :cond_a0

    .line 1977
    goto :goto_ca

    .line 1979
    :cond_a0
    iget-object v9, v8, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a9

    .line 1981
    goto :goto_ca

    .line 1984
    :cond_a9
    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_b0

    .line 1987
    return-void

    .line 1990
    :cond_b0
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 1995
    iget-object v9, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v10, v8, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v8, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    invoke-virtual {v9, v10, v11}, Landroid/app/ActivityManagerInternal;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_c7

    .line 1996
    return-void

    .line 2002
    :cond_c7
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    .end local v8    # "proc":Lcom/android/server/wm/WindowProcessController;
    :goto_ca
    add-int/lit8 v7, v7, 0x1

    goto :goto_86

    .line 1966
    .end local v6    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v7    # "j":I
    :cond_cd
    add-int/lit8 v5, v5, 0x1

    goto :goto_79

    .line 2008
    .end local v5    # "i":I
    :cond_d0
    sget-object v5, Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v5, v6, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 2011
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2012
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 633
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V

    .line 636
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 3

    .line 2209
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoingToSleepWakeLock.release() is called in comeOutOfSleepIfNeededLocked() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    .line 2214
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2213
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2219
    :cond_2d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2394
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2395
    const-string v0, "ActivityStackSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2396
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2397
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2398
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b4

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mWaitingForActivityVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b4

    .line 2406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2405
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 2409
    .end local v0    # "i":I
    :cond_b4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2411
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2413
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_LAUNCH_PARAM_PERSISTER_DUMP:Z

    if-eqz v0, :cond_d6

    .line 2414
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->dump(Ljava/io/PrintWriter;)V

    .line 2417
    :cond_d6
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    .line 2883
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    .line 2884
    if-nez v0, :cond_f

    .line 2885
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->visibilitiesUpdated()V

    .line 2887
    :cond_f
    return-void
.end method

.method endDeferResume()V
    .registers 2

    .line 2905
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2906
    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 24
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "forceNonResizeable"    # Z

    .line 1686
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1688
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->QC_IOP_V3:Z

    if-eqz v1, :cond_2b

    .line 1689
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1690
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    .line 1693
    .local v3, "top_activity":Lcom/android/server/wm/ActivityRecord;
    :goto_1e
    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_2b

    .line 1694
    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1699
    .end local v1    # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v3    # "top_activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_49

    .line 1700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    return-void

    .line 1705
    :cond_49
    and-int/lit8 v1, v5, 0x2

    const/4 v14, 0x1

    if-nez v1, :cond_50

    .line 1706
    iput-boolean v14, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1709
    :cond_50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " findTaskToMoveToFront"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1710
    .end local p4    # "reason":Ljava/lang/String;
    .local v1, "reason":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1711
    .local v16, "reparented":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v7

    if-eqz v7, :cond_ca

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 1716
    new-instance v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    move-object v13, v7

    .line 1717
    .local v13, "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v17, 0x2

    move-object/from16 v8, p1

    move-object/from16 v12, p3

    move-object/from16 p4, v13

    .end local v13    # "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .local p4, "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    move/from16 v13, v17

    move v2, v14

    move-object/from16 v14, p4

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 1719
    move-object/from16 v7, p4

    .end local p4    # "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .local v7, "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    iget-object v14, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 1724
    .end local v7    # "outParams":Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .local v14, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v15, v14}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1726
    iget-object v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1727
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v4, v15, v2}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1729
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v2, v0, :cond_b9

    .line 1730
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    invoke-direct {v6, v5, v7, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    .line 1731
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v7, p1

    move-object v8, v2

    move-object/from16 v17, v13

    move-object v13, v1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1733
    move-object v0, v2

    .line 1734
    const/16 v16, 0x1

    goto :goto_bb

    .line 1729
    :cond_b9
    move-object/from16 v17, v13

    .line 1738
    :goto_bb
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->shouldResizeStackWithLaunchBounds()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_c6

    .line 1739
    invoke-virtual {v2, v14, v8, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    goto :goto_cc

    .line 1744
    :cond_c6
    invoke-virtual {v15, v8, v8}, Lcom/android/server/wm/Task;->resize(ZZ)V

    goto :goto_cc

    .line 1711
    .end local v2    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14    # "bounds":Landroid/graphics/Rect;
    :cond_ca
    const/16 v17, 0x0

    .line 1748
    :goto_cc
    move-object v7, v0

    .end local v0    # "currentStack":Lcom/android/server/wm/ActivityStack;
    .local v7, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-nez v16, :cond_d6

    .line 1749
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-direct {v6, v5, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V

    .line 1752
    :cond_d6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1753
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    .line 1754
    if-nez v8, :cond_de

    goto :goto_e2

    :cond_de
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object/from16 v17, v0

    .line 1753
    :goto_e2
    move-object v0, v7

    move-object v9, v1

    .end local v1    # "reason":Ljava/lang/String;
    .local v9, "reason":Ljava/lang/String;
    move-object/from16 v1, p1

    move-object v10, v3

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1756
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_107

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskToMoveToFront: moved to front of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_107
    const/4 v2, 0x0

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1760
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 1759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V

    .line 1761
    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .registers 2

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .registers 2

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .registers 2

    .line 1788
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUser()I
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    return v0
.end method

.method getNextTaskIdForUser(I)I
    .registers 6
    .param p1, "userId"    # I

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 607
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 608
    .local v1, "candidateTaskId":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    .line 609
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_26

    .line 620
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    return v1

    .line 611
    :cond_26
    :goto_26
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 612
    if-eq v1, v0, :cond_2d

    goto :goto_e

    .line 615
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getReparentTargetStack(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "stack"    # Lcom/android/server/wm/ActivityStack;
    .param p3, "toTop"    # Z

    .line 2089
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2090
    .local v0, "prevStack":Lcom/android/server/wm/ActivityStack;
    iget v1, p2, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    .line 2091
    .local v1, "rootTaskId":I
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 2094
    .local v2, "inMultiWindowMode":Z
    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_2f

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mTaskId:I

    if-ne v4, v1, :cond_2f

    .line 2095
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-object v0

    .line 2102
    :cond_2f
    if-eqz v2, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_38

    goto :goto_57

    .line 2103
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2109
    :cond_57
    :goto_57
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_83

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_64

    goto :goto_83

    .line 2110
    :cond_64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2115
    :cond_83
    :goto_83
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a8

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_91

    goto :goto_a8

    .line 2117
    :cond_91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2123
    :cond_a8
    :goto_a8
    if-eqz v2, :cond_e1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_e1

    .line 2130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    if-eqz v0, :cond_d4

    .line 2133
    return-object v0

    .line 2135
    :cond_d4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 2136
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    .line 2135
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/wm/TaskDisplayArea;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2138
    :cond_e1
    return-object p2
.end method

.method getRunningTasks()Lcom/android/server/wm/RunningTasks;
    .registers 2

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    return-object v0
.end method

.method getSystemChooserActivity()Landroid/content/ComponentName;
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_19

    .line 534
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 535
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    .line 537
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 1473
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1475
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    return-object v2

    .line 1477
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    throw v2
.end method

.method goingToSleepLocked()V
    .registers 3

    .line 2142
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 2143
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_41

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGoingToSleepWakeLock.acquire() is called in goingToSleepLocked() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    .line 2147
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2146
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2151
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2155
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2156
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2160
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 2162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2163
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "actualStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2643
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V

    .line 2645
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityStack;Z)V
    .registers 14
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "preferredWindowingMode"    # I
    .param p3, "preferredTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "actualStack"    # Lcom/android/server/wm/ActivityStack;
    .param p5, "forceNonResizable"    # Z

    .line 2651
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_10

    if-eqz p4, :cond_e

    .line 2653
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    if-ne v3, v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    move v0, v2

    .line 2656
    .local v0, "inFreeformMode":Z
    :goto_11
    if-eqz p3, :cond_1b

    .line 2657
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 2658
    .local v3, "isSecondaryDisplayPreferred":Z
    :goto_1c
    if-eqz p4, :cond_2a

    .line 2659
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v4

    if-eqz v4, :cond_2a

    move v4, v2

    goto :goto_2b

    :cond_2a
    move v4, v1

    .line 2660
    .local v4, "inSplitScreenMode":Z
    :goto_2b
    const/4 v5, 0x3

    if-nez v4, :cond_32

    if-eq p2, v5, :cond_32

    if-eqz v3, :cond_38

    .line 2661
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 2663
    :cond_38
    if-eqz v0, :cond_3b

    goto :goto_3c

    .line 2667
    :cond_3b
    return-void

    .line 2702
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_ac

    .line 2703
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 2707
    iget-object v5, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2709
    .local v5, "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    if-eqz v5, :cond_54

    .line 2710
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isSingleTaskInstance()Z

    move-result v6

    if-eqz v6, :cond_54

    move v1, v2

    goto :goto_55

    :cond_54
    nop

    .line 2712
    .local v1, "singleTaskInstance":Z
    :goto_55
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eq v5, v2, :cond_9d

    .line 2716
    if-eqz v1, :cond_6d

    .line 2717
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 2718
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v7, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V

    .line 2720
    return-void

    .line 2723
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to put "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on display "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 2726
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v7, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_a3

    .line 2728
    :cond_9d
    if-nez p5, :cond_a3

    .line 2729
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2734
    :cond_a3
    :goto_a3
    return-void

    .line 2704
    .end local v1    # "singleTaskInstance":Z
    .end local v5    # "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_a4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Task resolved to incompatible display"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2740
    :cond_ac
    if-eqz v0, :cond_b1

    if-nez p5, :cond_b1

    goto :goto_ba

    .line 2743
    :cond_b1
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_c4

    if-eqz p5, :cond_ba

    goto :goto_c4

    .line 2762
    :cond_ba
    :goto_ba
    if-eqz v0, :cond_c0

    .line 2763
    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2764
    return-void

    .line 2767
    :cond_c0
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2768
    return-void

    .line 2746
    :cond_c4
    :goto_c4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 2747
    .local v5, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 2749
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v6

    if-nez v6, :cond_e9

    .line 2753
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v6

    .line 2754
    invoke-virtual {v6}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2755
    move-object v6, p1

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V

    .line 2756
    iget-object v6, v5, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1, v2, v2}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2759
    :cond_e9
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .registers 4
    .param p1, "timeout"    # Z

    .line 2591
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_21

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top resumed state released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    if-eqz p1, :cond_13

    const-string v1, " (due to timeout)"

    goto :goto_15

    :cond_13
    const-string v1, " (transition complete)"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2592
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2596
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2d

    .line 2598
    return-void

    .line 2600
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2601
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2602
    return-void
.end method

.method inActivityVisibilityUpdate()Z
    .registers 2

    .line 2891
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mVisibilityTransactionDepth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method initPowerManagement()V
    .registers 4

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 563
    nop

    .line 564
    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 567
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 496
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 497
    return-void

    .line 500
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    .line 501
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->setRunningTasks(Lcom/android/server/wm/RunningTasks;)V

    .line 503
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 504
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 506
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 507
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 508
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 509
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 510
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 16
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "launchDisplayId"    # I
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1382
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch on display check: displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_2a
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3a

    if-ne p2, v0, :cond_3a

    .line 1386
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_39

    const-string v0, "Launch on display check: no caller info, skip check"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_39
    return v2

    .line 1390
    :cond_3a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1391
    invoke-virtual {v3, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1392
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    if-eqz v3, :cond_e4

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4b

    goto/16 :goto_e4

    .line 1399
    :cond_4b
    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v5, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 1401
    .local v5, "startAnyPerm":I
    if-nez v5, :cond_5d

    .line 1402
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_5c

    const-string v0, "Launch on display check: allow launch any on display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_5c
    return v2

    .line 1408
    :cond_5d
    invoke-virtual {v3, p2}, Lcom/android/server/wm/DisplayContent;->isUidPresent(I)Z

    move-result v6

    .line 1410
    .local v6, "uidPresentOnDisplay":Z
    iget-object v7, v3, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    move-result v7

    .line 1411
    .local v7, "displayOwnerUid":I
    iget-object v8, v3, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_b6

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_b6

    .line 1424
    iget-object v8, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1425
    .local v8, "pm":Landroid/content/pm/PackageManager;
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v9, :cond_91

    if-eqz v8, :cond_91

    invoke-virtual {v8, p2}, Landroid/content/pm/PackageManager;->isSpeg(I)Z

    move-result v9

    if-nez v9, :cond_89

    goto :goto_91

    .line 1443
    :cond_89
    const-string v0, "SPEG"

    const-string v9, "Ignore activity launch permission checking"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 1429
    :cond_91
    :goto_91
    iget v9, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v10, -0x80000000

    and-int/2addr v9, v10

    if-nez v9, :cond_a2

    .line 1430
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_a1

    const-string v0, "Launch on display check: disallow launch on virtual display for not-embedded activity."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_a1
    return v4

    .line 1435
    :cond_a2
    const-string v9, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {v9, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v0, :cond_b6

    if-nez v6, :cond_b6

    .line 1437
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_b5

    const-string v0, "Launch on display check: disallow activity embedding without permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_b5
    return v4

    .line 1448
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_b6
    :goto_b6
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 1450
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_c5

    const-string v0, "Launch on display check: allow launch on public display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_c5
    return v2

    .line 1456
    :cond_c6
    if-ne v7, p2, :cond_d2

    .line 1457
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_d1

    const-string v0, "Launch on display check: allow launch for owner of the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_d1
    return v2

    .line 1462
    :cond_d2
    if-eqz v6, :cond_de

    .line 1463
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_dd

    const-string v0, "Launch on display check: allow launch for caller present on the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_dd
    return v2

    .line 1468
    :cond_de
    const-string v0, "Launch on display check: denied"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return v4

    .line 1393
    .end local v5    # "startAnyPerm":I
    .end local v6    # "uidPresentOnDisplay":Z
    .end local v7    # "displayOwnerUid":I
    :cond_e4
    :goto_e4
    const-string v0, "Launch on display check: display not found"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return v4
.end method

.method isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z
    .registers 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1370
    nop

    .line 1371
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1370
    :goto_9
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2303
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 2304
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method public isTopResumedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3432
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$activityIdleInternal$1$ActivityStackSupervisor()V
    .registers 2

    .line 1680
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public synthetic lambda$removeRecentPairTask$3$ActivityStackSupervisor(ZZLjava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "killProcess"    # Z
    .param p2, "removeFromRecents"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "task"    # Lcom/android/server/wm/Task;

    .line 3393
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$removeStack$2$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V
    .registers 2
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1859
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method public synthetic lambda$startSpecificActivity$0$ActivityStackSupervisor(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "finalWpc"    # Lcom/android/server/wm/WindowProcessController;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1278
    if-eqz p1, :cond_f

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1281
    :cond_f
    return-void
.end method

.method logStackState()V
    .registers 2

    .line 2806
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 2807
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 576
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 577
    .local v0, "recentsStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_11

    .line 578
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 580
    :cond_11
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2069
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 2070
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "wasTrimmed"    # Z
    .param p3, "killProcess"    # Z

    .line 2074
    if-eqz p2, :cond_b

    .line 2077
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "recent-task-trimmed"

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 2080
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->removedFromRecents()V

    .line 2081
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    .line 514
    return-void
.end method

.method onUserUnlocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    .line 522
    return-void
.end method

.method readyToResume()Z
    .registers 2

    .line 2910
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .registers 46
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "proc"    # Lcom/android/server/wm/WindowProcessController;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "2nd-crash"

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const-string v5, "ActivityTaskManager"

    const/4 v6, 0x0

    if-nez v0, :cond_3a

    .line 839
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_39

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "realStartActivityLocked: Skipping start of r="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " some activities pausing..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_39
    return v6

    .line 846
    :cond_3a
    const/4 v7, 0x1

    if-eqz v3, :cond_3f

    move v0, v7

    goto :goto_40

    :cond_3f
    move v0, v6

    .line 847
    .local v0, "processRunning":Z
    :goto_40
    if-eqz v0, :cond_4b

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-nez v8, :cond_49

    goto :goto_4b

    :cond_49
    move v8, v6

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v8, v7

    .line 848
    .local v8, "processSwitch":Z
    :goto_4c
    if-eqz v8, :cond_82

    .line 849
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v9, :cond_58

    .line 850
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v9

    iput-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 852
    :cond_58
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v9, :cond_82

    .line 853
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v9, :cond_79

    .line 854
    if-nez v2, :cond_64

    move v9, v6

    goto :goto_6c

    .line 855
    :cond_64
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const-string v10, "com.samsung.speg"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_6c
    nop

    .line 856
    .local v9, "isSpeg":Z
    if-nez v9, :cond_78

    iget-object v10, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 857
    .end local v9    # "isSpeg":Z
    :cond_78
    goto :goto_82

    .line 858
    :cond_79
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 867
    .end local v0    # "processRunning":Z
    .end local v8    # "processSwitch":Z
    :cond_82
    :goto_82
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getSeedbed()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgPredictorService  seedbed2.0 relaunch from preload state seedbed= "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getSeedbed()Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IApplicationThread;->makeApplication()V

    .line 870
    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowProcessController;->setSeedbed(Z)V

    .line 874
    :cond_ab
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 875
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 877
    .local v9, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 882
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->pauseConfigurationDispatch()V

    .line 885
    :try_start_b9
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 888
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 890
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_48b

    .line 918
    if-eqz p3, :cond_d5

    :try_start_c4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0
    :try_end_c8
    .catchall {:try_start_c4 .. :try_end_c8} :catchall_cd

    if-nez v0, :cond_d5

    .line 919
    const/4 v0, 0x0

    move v10, v0

    .end local p3    # "andResume":Z
    .local v0, "andResume":Z
    goto :goto_d7

    .line 1140
    .end local v0    # "andResume":Z
    .restart local p3    # "andResume":Z
    :catchall_cd
    move-exception v0

    move/from16 v10, p3

    move-object/from16 v39, v8

    move-object v4, v9

    goto/16 :goto_491

    .line 922
    :cond_d5
    move/from16 v10, p3

    .end local p3    # "andResume":Z
    .local v10, "andResume":Z
    :goto_d7
    :try_start_d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_486

    .line 928
    if-eqz p4, :cond_ec

    .line 932
    :try_start_dc
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v0, v2, v11, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    :try_end_e5
    .catchall {:try_start_dc .. :try_end_e5} :catchall_e6

    goto :goto_ec

    .line 1140
    :catchall_e6
    move-exception v0

    move-object/from16 v39, v8

    move-object v4, v9

    goto/16 :goto_491

    .line 936
    :cond_ec
    :goto_ec
    :try_start_ec
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v7}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_486

    if-eqz v0, :cond_ff

    .line 937
    :try_start_f6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->allowMoveToFront()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 942
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_ff
    .catchall {:try_start_f6 .. :try_end_ff} :catchall_e6

    .line 946
    :cond_ff
    :try_start_ff
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_103
    .catchall {:try_start_ff .. :try_end_103} :catchall_486

    if-eqz v0, :cond_10c

    :try_start_105
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_10b
    .catchall {:try_start_105 .. :try_end_10b} :catchall_e6

    goto :goto_10d

    :cond_10c
    const/4 v0, -0x1

    :goto_10d
    move v11, v0

    .line 947
    .local v11, "applicationInfoUid":I
    :try_start_10e
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_112
    .catchall {:try_start_10e .. :try_end_112} :catchall_486

    if-ne v0, v12, :cond_11c

    :try_start_114
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_11a
    .catchall {:try_start_114 .. :try_end_11a} :catchall_e6

    if-eq v0, v11, :cond_158

    .line 948
    :cond_11c
    :try_start_11c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User ID for activity changing for "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " appInfo.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " info.ai.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " old="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " new="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_158
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 956
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 957
    iget-wide v12, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v3, v12, v13}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 961
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    move-object v12, v0

    .line 962
    .local v12, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v0, v8, Lcom/android/server/wm/Task;->mLockTaskAuth:I
    :try_end_171
    .catchall {:try_start_11c .. :try_end_171} :catchall_486

    const/4 v13, 0x2

    if-eq v0, v13, :cond_184

    :try_start_174
    iget v0, v8, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x4

    if-eq v0, v14, :cond_184

    iget v0, v8, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x3

    if-ne v0, v14, :cond_187

    .line 965
    invoke-virtual {v12}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_182
    .catchall {:try_start_174 .. :try_end_182} :catchall_e6

    if-ne v0, v7, :cond_187

    .line 967
    :cond_184
    :try_start_184
    invoke-virtual {v12, v8, v6, v6}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_187
    .catchall {:try_start_184 .. :try_end_187} :catchall_486

    .line 971
    :cond_187
    :try_start_187
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0
    :try_end_18b
    .catch Landroid/os/RemoteException; {:try_start_187 .. :try_end_18b} :catch_436
    .catchall {:try_start_187 .. :try_end_18b} :catchall_486

    if-eqz v0, :cond_424

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v14, 0x0

    .line 976
    .local v14, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v10, :cond_1a5

    .line 979
    :try_start_191
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v15

    .line 980
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_196
    .catch Landroid/os/RemoteException; {:try_start_191 .. :try_end_196} :catch_198
    .catchall {:try_start_191 .. :try_end_196} :catchall_e6

    move-object v14, v15

    goto :goto_1a5

    .line 1120
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_198
    move-exception v0

    move-object/from16 v36, v4

    move-object v7, v5

    move-object/from16 v39, v8

    move-object v4, v9

    move/from16 v32, v11

    move-object/from16 v33, v12

    goto/16 :goto_441

    .line 982
    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_1a5
    :goto_1a5
    :try_start_1a5
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_1a7
    .catch Landroid/os/RemoteException; {:try_start_1a5 .. :try_end_1a7} :catch_436
    .catchall {:try_start_1a5 .. :try_end_1a7} :catchall_486

    if-eqz v15, :cond_1e1

    :try_start_1a9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launching: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " savedState="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " with results="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " newIntents="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " andResume="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 982
    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Landroid/os/RemoteException; {:try_start_1a9 .. :try_end_1e1} :catch_198
    .catchall {:try_start_1a9 .. :try_end_1e1} :catchall_e6

    .line 986
    :cond_1e1
    :try_start_1e1
    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    iget v13, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v7, v15, v13, v6}, Lcom/android/server/wm/EventLogTags;->writeWmRestartActivity(IIILjava/lang/String;)V

    .line 988
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6
    :try_end_1f2
    .catch Landroid/os/RemoteException; {:try_start_1e1 .. :try_end_1f2} :catch_436
    .catchall {:try_start_1e1 .. :try_end_1f2} :catchall_486

    if-eqz v6, :cond_1fd

    .line 990
    :try_start_1f4
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_1fd
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_1fd} :catch_198
    .catchall {:try_start_1f4 .. :try_end_1fd} :catchall_e6

    .line 995
    :cond_1fd
    :try_start_1fd
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->boostPriority(Lcom/android/server/wm/ActivityRecord;)V

    .line 999
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1000
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 999
    const/4 v13, 0x0

    invoke-virtual {v6, v7, v13}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 1001
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1002
    iput-boolean v13, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 1003
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1004
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1009
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1012
    .local v6, "procConfig":Landroid/content/res/Configuration;
    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1013
    .local v7, "globalConfig":Landroid/content/res/Configuration;
    new-instance v13, Landroid/content/res/Configuration;

    .line 1014
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1017
    .local v13, "overrideConfig":Landroid/content/res/Configuration;
    new-instance v15, Landroid/util/MergedConfiguration;

    invoke-direct {v15, v7, v13}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1022
    .local v15, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V
    :try_end_24e
    .catch Landroid/os/RemoteException; {:try_start_1fd .. :try_end_24e} :catch_436
    .catchall {:try_start_1fd .. :try_end_24e} :catchall_486

    .line 1024
    move/from16 v32, v11

    .end local v11    # "applicationInfoUid":I
    .local v32, "applicationInfoUid":I
    :try_start_250
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;
    :try_end_252
    .catch Landroid/os/RemoteException; {:try_start_250 .. :try_end_252} :catch_41a
    .catchall {:try_start_250 .. :try_end_252} :catchall_486

    move-object/from16 v33, v12

    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v33, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :try_start_254
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v12

    invoke-direct {v1, v11, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1032
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v11

    .line 1033
    .local v11, "dssController":Lcom/android/server/DssController;
    iget-object v12, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v12}, Lcom/android/server/DssController;->scaleExistingConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v15, v7, v13}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1042
    .end local v11    # "dssController":Lcom/android/server/DssController;
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/game/PkgDataHelper;->notifyAppCreate(Ljava/lang/String;)V

    .line 1047
    nop

    .line 1048
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Lcom/android/server/wm/ActivityRecord$Token;

    .line 1047
    invoke-static {v11, v12}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v11

    .line 1050
    .local v11, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1051
    .local v12, "dc":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v34, v7

    .end local v7    # "globalConfig":Landroid/content/res/Configuration;
    .local v34, "globalConfig":Landroid/content/res/Configuration;
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v35, v13

    .end local v13    # "overrideConfig":Landroid/content/res/Configuration;
    .local v35, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1052
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1055
    invoke-virtual {v15}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    .line 1056
    invoke-virtual {v15}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v19
    :try_end_29e
    .catch Landroid/os/RemoteException; {:try_start_254 .. :try_end_29e} :catch_412
    .catchall {:try_start_254 .. :try_end_29e} :catchall_486

    move-object/from16 v36, v4

    :try_start_2a0
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_2a2
    .catch Landroid/os/RemoteException; {:try_start_2a0 .. :try_end_2a2} :catch_410
    .catchall {:try_start_2a0 .. :try_end_2a2} :catchall_486

    move-object/from16 v37, v9

    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v37, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_2a4
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;
    :try_end_2a6
    .catch Landroid/os/RemoteException; {:try_start_2a4 .. :try_end_2a6} :catch_409
    .catchall {:try_start_2a4 .. :try_end_2a6} :catchall_402

    move-object/from16 v38, v5

    :try_start_2a8
    iget-object v5, v8, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1057
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v23

    .line 1058
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPersistentSavedState()Landroid/os/PersistableBundle;

    move-result-object v25

    .line 1059
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v28

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v29
    :try_end_2be
    .catch Landroid/os/RemoteException; {:try_start_2a8 .. :try_end_2be} :catch_3fa
    .catchall {:try_start_2a8 .. :try_end_2be} :catchall_402

    move-object/from16 v39, v8

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .local v39, "task":Lcom/android/server/wm/Task;
    :try_start_2c0
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    move-object/from16 v17, v15

    .end local v15    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v17, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1060
    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityRecord;->createFixedRotationAdjustmentsIfNeeded(Ljava/lang/String;)Landroid/view/DisplayAdjustments$FixedRotationAdjustments;

    move-result-object v31

    .line 1051
    move-object/from16 v40, v17

    .end local v17    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v40, "mergedConfiguration":Landroid/util/MergedConfiguration;
    move-object v15, v7

    move-object/from16 v17, v13

    move-object/from16 v20, v4

    move-object/from16 v21, v9

    move-object/from16 v22, v5

    move-object/from16 v26, v0

    move-object/from16 v27, v14

    move-object/from16 v30, v8

    invoke-static/range {v15 .. v31}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/view/DisplayAdjustments$FixedRotationAdjustments;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1068
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mBoundsCompatController:Lcom/android/server/wm/BoundsCompatController;

    invoke-virtual {v4, v11}, Lcom/android/server/wm/BoundsCompatController;->addCallbackIfNeeded(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_2e7
    .catch Landroid/os/RemoteException; {:try_start_2c0 .. :try_end_2e7} :catch_3f4
    .catchall {:try_start_2c0 .. :try_end_2e7} :catchall_3ef

    .line 1089
    if-eqz v10, :cond_2fe

    .line 1090
    :try_start_2e9
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v4

    invoke-static {v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4
    :try_end_2f1
    .catch Landroid/os/RemoteException; {:try_start_2e9 .. :try_end_2f1} :catch_2f7
    .catchall {:try_start_2e9 .. :try_end_2f1} :catchall_2f2

    .local v4, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_302

    .line 1140
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v6    # "procConfig":Landroid/content/res/Configuration;
    .end local v11    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v12    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v34    # "globalConfig":Landroid/content/res/Configuration;
    .end local v35    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v40    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catchall_2f2
    move-exception v0

    move-object/from16 v4, v37

    goto/16 :goto_491

    .line 1120
    .restart local v32    # "applicationInfoUid":I
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_2f7
    move-exception v0

    move-object/from16 v4, v37

    move-object/from16 v7, v38

    goto/16 :goto_441

    .line 1092
    .restart local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v6    # "procConfig":Landroid/content/res/Configuration;
    .restart local v11    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v12    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v34    # "globalConfig":Landroid/content/res/Configuration;
    .restart local v35    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local v40    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_2fe
    :try_start_2fe
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 1094
    .restart local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_302
    invoke-virtual {v11, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1097
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1099
    iget v5, v6, Landroid/content/res/Configuration;->seq:I

    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->seq:I
    :try_end_318
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_318} :catch_3f4
    .catchall {:try_start_2fe .. :try_end_318} :catchall_3ef

    if-le v5, v7, :cond_31d

    .line 1102
    :try_start_31a
    invoke-virtual {v3, v6}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    :try_end_31d
    .catch Landroid/os/RemoteException; {:try_start_31a .. :try_end_31d} :catch_2f7
    .catchall {:try_start_31a .. :try_end_31d} :catchall_2f2

    .line 1104
    :cond_31d
    :try_start_31d
    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_321
    .catch Landroid/os/RemoteException; {:try_start_31d .. :try_end_321} :catch_3f4
    .catchall {:try_start_31d .. :try_end_321} :catchall_3ef

    const/4 v7, 0x2

    and-int/2addr v5, v7

    if-eqz v5, :cond_377

    :try_start_325
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v5, :cond_377

    .line 1109
    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_377

    .line 1110
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v5, :cond_366

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v5, v3, :cond_366

    .line 1112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting new heavy weight process "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " when already running "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_360
    .catch Landroid/os/RemoteException; {:try_start_325 .. :try_end_360} :catch_370
    .catchall {:try_start_325 .. :try_end_360} :catchall_2f2

    move-object/from16 v7, v38

    :try_start_362
    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_368

    .line 1110
    :cond_366
    move-object/from16 v7, v38

    .line 1116
    :goto_368
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_36d
    .catch Landroid/os/RemoteException; {:try_start_362 .. :try_end_36d} :catch_36e
    .catchall {:try_start_362 .. :try_end_36d} :catchall_2f2

    goto :goto_377

    .line 1120
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4    # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v6    # "procConfig":Landroid/content/res/Configuration;
    .end local v11    # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v12    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v14    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v34    # "globalConfig":Landroid/content/res/Configuration;
    .end local v35    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v40    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catch_36e
    move-exception v0

    goto :goto_373

    :catch_370
    move-exception v0

    move-object/from16 v7, v38

    :goto_373
    move-object/from16 v4, v37

    goto/16 :goto_441

    .line 1138
    :cond_377
    :goto_377
    nop

    .line 1140
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()V

    .line 1142
    nop

    .line 1144
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1146
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed2nd:Z

    .line 1151
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V

    .line 1157
    if-eqz v10, :cond_395

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_395

    .line 1160
    move-object/from16 v4, v37

    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_3c3

    .line 1157
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_395
    move-object/from16 v4, v37

    .line 1165
    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to PAUSED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (starting in paused state)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WindowManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_3b6
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string/jumbo v5, "realStartActivityLocked"

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1168
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 1172
    :goto_3c3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 1175
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-eqz v0, :cond_3d3

    .line 1176
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->setLongLiveProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;)V

    .line 1184
    :cond_3d3
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_3e4

    .line 1185
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 1190
    :cond_3e4
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_3ed

    .line 1191
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    .line 1194
    :cond_3ed
    const/4 v5, 0x1

    return v5

    .line 1140
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_3ef
    move-exception v0

    move-object/from16 v4, v37

    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    goto/16 :goto_491

    .line 1120
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "applicationInfoUid":I
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_3f4
    move-exception v0

    move-object/from16 v4, v37

    move-object/from16 v7, v38

    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_441

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_3fa
    move-exception v0

    move-object/from16 v39, v8

    move-object/from16 v4, v37

    move-object/from16 v7, v38

    goto :goto_40f

    .line 1140
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catchall_402
    move-exception v0

    move-object/from16 v39, v8

    move-object/from16 v4, v37

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    goto/16 :goto_491

    .line 1120
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v32    # "applicationInfoUid":I
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_409
    move-exception v0

    move-object v7, v5

    move-object/from16 v39, v8

    move-object/from16 v4, v37

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v37    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    :goto_40f
    goto :goto_441

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_410
    move-exception v0

    goto :goto_415

    :catch_412
    move-exception v0

    move-object/from16 v36, v4

    :goto_415
    move-object v7, v5

    move-object/from16 v39, v8

    move-object v4, v9

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    goto :goto_441

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v12, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_41a
    move-exception v0

    move-object/from16 v36, v4

    move-object v7, v5

    move-object/from16 v39, v8

    move-object v4, v9

    move-object/from16 v33, v12

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    goto :goto_441

    .line 972
    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .local v11, "applicationInfoUid":I
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :cond_424
    move-object/from16 v36, v4

    move-object v7, v5

    move-object/from16 v39, v8

    move-object v4, v9

    move/from16 v32, v11

    move-object/from16 v33, v12

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v11    # "applicationInfoUid":I
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "applicationInfoUid":I
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    :try_start_42e
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v10    # "andResume":Z
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4    # "checkConfig":Z
    throw v0
    :try_end_434
    .catch Landroid/os/RemoteException; {:try_start_42e .. :try_end_434} :catch_434
    .catchall {:try_start_42e .. :try_end_434} :catchall_484

    .line 1120
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v10    # "andResume":Z
    .restart local v32    # "applicationInfoUid":I
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4    # "checkConfig":Z
    :catch_434
    move-exception v0

    goto :goto_441

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v11    # "applicationInfoUid":I
    .restart local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_436
    move-exception v0

    move-object/from16 v36, v4

    move-object v7, v5

    move-object/from16 v39, v8

    move-object v4, v9

    move/from16 v32, v11

    move-object/from16 v33, v12

    .line 1121
    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v11    # "applicationInfoUid":I
    .end local v12    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v32    # "applicationInfoUid":I
    .restart local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    :goto_441
    :try_start_441
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_47c

    .line 1123
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed2nd:Z

    .line 1126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1127
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1126
    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1128
    move-object/from16 v5, v36

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->appDied(Ljava/lang/String;)V

    .line 1129
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_474
    .catchall {:try_start_441 .. :try_end_474} :catchall_484

    .line 1130
    nop

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()V

    .line 1130
    return v6

    .line 1135
    :cond_47c
    const/4 v5, 0x1

    :try_start_47d
    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1136
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1137
    nop

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v10    # "andResume":Z
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4    # "checkConfig":Z
    throw v0
    :try_end_484
    .catchall {:try_start_47d .. :try_end_484} :catchall_484

    .line 1140
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v32    # "applicationInfoUid":I
    .end local v33    # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v10    # "andResume":Z
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4    # "checkConfig":Z
    :catchall_484
    move-exception v0

    goto :goto_491

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_486
    move-exception v0

    move-object/from16 v39, v8

    move-object v4, v9

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    goto :goto_491

    .end local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v10    # "andResume":Z
    .end local v39    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local p3    # "andResume":Z
    :catchall_48b
    move-exception v0

    move-object/from16 v39, v8

    move-object v4, v9

    move/from16 v10, p3

    .end local v8    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "stack":Lcom/android/server/wm/ActivityStack;
    .end local p3    # "andResume":Z
    .restart local v4    # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v10    # "andResume":Z
    .restart local v39    # "task":Lcom/android/server/wm/Task;
    :goto_491
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()V

    .line 1142
    throw v0
.end method

.method removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 2372
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v1, "mStoppingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2373
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v1, "mFinishingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2374
    return-void
.end method

.method removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2605
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2606
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2605
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2608
    return-void
.end method

.method removePinnedStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1812
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->cancelAnimation()V

    .line 1813
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/ActivityStack;->setForceHidden(IZ)Z

    .line 1814
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1815
    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 1819
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1820
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1822
    .local v3, "toDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1824
    :try_start_1a
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1825
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 1826
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/ActivityStack;)V

    .line 1830
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityStack;->setForceHidden(IZ)Z

    .line 1831
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_3b

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1835
    nop

    .line 1836
    return-void

    .line 1834
    :catchall_3b
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1835
    throw v0
.end method

.method removeRecentPairTask(IZZLjava/lang/String;)Z
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 3388
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTaskItemController;->getPairTask(I)Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 3389
    .local v0, "pairTask":Lcom/android/server/wm/PairTask;
    if-nez v0, :cond_c

    .line 3390
    const/4 v1, 0x0

    return v1

    .line 3392
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getPairChildren()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$UvzIZKHOlAl4b7f1eYA4N58qSME;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;ZZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3394
    const/4 v1, 0x1

    return v1
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2632
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2633
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2624
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"    # Lcom/android/server/wm/ActivityStack;

    .line 1859
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1860
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 1884
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;Z)V

    .line 1885
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;Z)V
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "skipMdmCheck"    # Z

    .line 1890
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-eqz v0, :cond_5

    .line 1892
    return-void

    .line 1894
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1898
    const/4 v1, 0x0

    if-eqz p2, :cond_16

    .line 1899
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabled(Lcom/android/server/wm/Task;Z)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_7c

    if-eqz v2, :cond_21

    .line 1931
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1900
    return-void

    .line 1903
    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->isForceStopDisabledWithoutToast(Lcom/android/server/wm/Task;Z)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_7c

    if-eqz v2, :cond_21

    .line 1931
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1904
    return-void

    .line 1911
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v2

    if-nez v2, :cond_56

    .line 1912
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1913
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_56

    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, v4, :cond_56

    if-nez p3, :cond_56

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v3

    if-nez v3, :cond_56

    .line 1914
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.systemui.keyguard.WorkLockActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1915
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1916
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveTaskToBack(Lcom/android/server/wm/Task;)Z
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_7c

    .line 1931
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1917
    return-void

    .line 1923
    .end local v2    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_56
    :try_start_56
    invoke-virtual {p1, p4}, Lcom/android/server/wm/Task;->performClearTask(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V

    .line 1925
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 1926
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1927
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_78

    .line 1928
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    :try_end_78
    .catchall {:try_start_56 .. :try_end_78} :catchall_7c

    .line 1931
    :cond_78
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1932
    nop

    .line 1933
    return-void

    .line 1931
    :catchall_7c
    move-exception v0

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1932
    throw v0
.end method

.method removeTaskById(IZZLjava/lang/String;)Z
    .registers 8
    .param p1, "taskId"    # I
    .param p2, "killProcess"    # Z
    .param p3, "removeFromRecents"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .line 1872
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1873
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1874
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d

    .line 1875
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1876
    return v1

    .line 1878
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to remove task ignored for non-existent task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const/4 v1, 0x0

    return v1
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V
    .registers 12
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "totalTime"    # J
    .param p5, "launchState"    # I

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_32

    .line 694
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 695
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    .line 696
    const/4 v0, 0x1

    .line 697
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 698
    if-eqz p2, :cond_2b

    .line 699
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 701
    :cond_2b
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    .line 702
    iput p5, v2, Landroid/app/WaitResult;->launchState:I

    .line 693
    .end local v2    # "w":Landroid/app/WaitResult;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 706
    .end local v1    # "i":I
    :cond_32
    if-eqz v0, :cond_3b

    .line 707
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 711
    :cond_3b
    if-nez p1, :cond_64

    .line 712
    const-string v1, "PkgPredictorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/ipm/IPkgPredictor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ipm/IPkgPredictor;

    move-result-object v1

    .line 713
    .local v1, "pkgPredictorService":Lcom/samsung/android/ipm/IPkgPredictor;
    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_5e

    .line 715
    :try_start_4b
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p3, p4}, Lcom/samsung/android/ipm/IPkgPredictor;->reportToNAP(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_57

    goto :goto_5d

    .line 716
    :catch_57
    move-exception v3

    .line 717
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "Error while calling remote testMethod"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_5d
    goto :goto_64

    .line 720
    :cond_5e
    const-string/jumbo v3, "pkgPredictorService is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v1    # "pkgPredictorService":Lcom/samsung/android/ipm/IPkgPredictor;
    :cond_64
    :goto_64
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2260
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2262
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2266
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v6

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v8, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual/range {v2 .. v8}, Landroid/app/ActivityManagerInternal;->onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V

    .line 2270
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    .line 2271
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2274
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 2275
    const/4 v1, 0x1

    return v1

    .line 2277
    :cond_3a
    return v2
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"    # I

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 662
    return-void

    .line 665
    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 666
    return-void

    .line 669
    :cond_10
    const/4 v1, 0x0

    .line 671
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_33

    .line 672
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 673
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_30

    .line 674
    const/4 v1, 0x1

    .line 675
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 679
    if-ne p2, v0, :cond_30

    .line 680
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 671
    .end local v3    # "w":Landroid/app/WaitResult;
    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 685
    .end local v2    # "i":I
    :cond_33
    if-eqz v1, :cond_3c

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 688
    :cond_3c
    return-void
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;

    .line 728
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 729
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_6
    if-eqz v0, :cond_6a

    .line 734
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 738
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 739
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_27

    if-eqz p4, :cond_5e

    .line 746
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 748
    sget-object v1, Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 750
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 748
    move-object v3, v0

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 752
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_58

    .line 754
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_51} :catch_52
    .catchall {:try_start_4a .. :try_end_51} :catchall_58

    .line 757
    goto :goto_53

    .line 755
    :catch_52
    move-exception v2

    .line 758
    .end local v1    # "msg":Landroid/os/Message;
    :goto_53
    :try_start_53
    monitor-exit v7
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5e

    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 761
    :cond_5e
    :goto_5e
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_6a

    if-eqz v1, :cond_6a

    .line 763
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 766
    .end local v1    # "intentLaunchToken":Ljava/lang/String;
    :cond_6a
    return-object v0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I
    .param p6, "filterCallingUid"    # I

    .line 814
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 815
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .param p5, "filterCallingUid"    # I

    .line 772
    const-wide/16 v1, 0x20

    :try_start_2
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 773
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 775
    .local v0, "modifiedFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1f

    .line 777
    :cond_1c
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    .line 779
    :cond_1f
    const/4 v3, 0x0

    .line 780
    .local v3, "privateResolveFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 781
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_30

    .line 782
    or-int/lit8 v3, v3, 0x1

    .line 784
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3a

    .line 785
    or-int/lit8 v3, v3, 0x2

    .line 790
    :cond_3a
    or-int/lit16 v12, v0, 0x80

    .line 799
    .end local v0    # "modifiedFlags":I
    .local v12, "modifiedFlags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_67

    move-wide v13, v4

    .line 801
    .local v13, "token":J
    move-object/from16 v15, p0

    :try_start_43
    iget-object v0, v15, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move v7, v12

    move v8, v3

    move/from16 v9, p3

    move/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_58
    .catchall {:try_start_43 .. :try_end_58} :catchall_5f

    .line 805
    :try_start_58
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_65

    .line 808
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 801
    return-object v0

    .line 805
    :catchall_5f
    move-exception v0

    :try_start_60
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 806
    nop

    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "resolvedType":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "flags":I
    .end local p5    # "filterCallingUid":I
    throw v0
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_65

    .line 808
    .end local v3    # "privateResolveFlags":I
    .end local v12    # "modifiedFlags":I
    .end local v13    # "token":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "flags":I
    .restart local p5    # "filterCallingUid":I
    :catchall_65
    move-exception v0

    goto :goto_6a

    :catchall_67
    move-exception v0

    move-object/from16 v15, p0

    :goto_6a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 809
    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "aOptions"    # Landroid/app/ActivityOptions;
    .param p3, "onTop"    # Z

    .line 2023
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2024
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2025
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2027
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v2, 0x1

    if-eq v1, v0, :cond_58

    if-ne p1, v0, :cond_11

    goto :goto_58

    .line 2032
    :cond_11
    if-eqz v1, :cond_1d

    .line 2034
    const v3, 0x7fffffff

    const-string/jumbo v4, "restoreRecentTaskLocked"

    invoke-virtual {p1, v0, v3, v2, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    .line 2035
    return v2

    .line 2050
    :cond_1d
    invoke-virtual {v0, p1, p3, v2}, Lcom/android/server/wm/ActivityStack;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 2051
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added restored task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 2056
    .local v3, "toStackWindowingMode":I
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v4

    if-eq v4, v3, :cond_57

    const/4 v4, 0x3

    if-eq v3, v4, :cond_53

    const/4 v4, 0x4

    if-eq v3, v4, :cond_53

    goto :goto_57

    .line 2061
    :cond_53
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2064
    :cond_57
    :goto_57
    return v2

    .line 2029
    .end local v3    # "toStackWindowingMode":I
    :cond_58
    :goto_58
    return v2
.end method

.method final scheduleIdle()V
    .registers 3

    .line 2528
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2529
    return-void
.end method

.method scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 2515
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleIdleTimeout: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2518
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_40

    .line 2520
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_47

    .line 2523
    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2525
    :goto_47
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 2298
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2299
    return-void
.end method

.method scheduleProcessStoppingAndFinishingActivities()V
    .registers 3

    .line 2617
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2618
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2620
    :cond_f
    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 2636
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2637
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2639
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .line 2611
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2612
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2614
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .line 2627
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2628
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2629
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 2810
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$BFgD0ahFSDg4CqQNytqWrPRgFII;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$BFgD0ahFSDg4CqQNytqWrPRgFII;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2812
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2810
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2813
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2814
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2816
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2817
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2819
    :cond_21
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityStack;)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prevStack"    # Lcom/android/server/wm/ActivityStack;

    .line 2828
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2829
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1d

    if-eq p2, v0, :cond_15

    .line 2830
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 2834
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 2835
    return-void

    .line 2831
    :cond_1d
    :goto_1d
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 1559
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1560
    return-void
.end method

.method setLongLiveProcessIfNeeded(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5
    .param p1, "wpc"    # Lcom/android/server/wm/WindowProcessController;

    .line 820
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    if-nez v0, :cond_5

    .line 821
    return-void

    .line 823
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentTasks;->isDedicatedProcess(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 824
    sget-object v0, Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;->INSTANCE:Lcom/android/server/wm/-$$Lambda$K85mcVFKeNmpBhkSrA_weVCBP3Q;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 826
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 824
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 827
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 829
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2a
    return-void
.end method

.method setNextTaskIdForUser(II)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 584
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_e

    .line 585
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"    # Lcom/android/server/wm/RecentTasks;

    .line 541
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    if-eqz v0, :cond_7

    .line 542
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 544
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 545
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 546
    return-void
.end method

.method setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .registers 2
    .param p1, "runningTasks"    # Lcom/android/server/wm/RunningTasks;

    .line 550
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 551
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .registers 3
    .param p1, "resizing"    # Z

    .line 1792
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_5

    .line 1793
    return-void

    .line 1796
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 1797
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 1798
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 570
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 571
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 572
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 9
    .param p1, "timeout"    # I

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2168
    const/4 v0, 0x0

    .line 2169
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 2171
    .local v1, "endTime":J
    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->putStacksToSleep(ZZ)Z

    move-result v3

    if-nez v3, :cond_32

    .line 2173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 2174
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2a

    .line 2176
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_28

    .line 2177
    :catch_27
    move-exception v5

    .line 2178
    :goto_28
    nop

    .line 2184
    .end local v3    # "timeRemaining":J
    goto :goto_a

    .line 2180
    .restart local v3    # "timeRemaining":J
    :cond_2a
    const-string v5, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    const/4 v0, 0x1

    .line 2190
    .end local v3    # "timeRemaining":J
    :cond_32
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2192
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .registers 39
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3036
    move-object/from16 v1, p0

    move/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p4

    const-string v11, "Recents"

    const-string v10, "2004"

    const/4 v0, 0x0

    .line 3041
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    .line 3042
    .local v2, "activityType":I
    const/4 v3, 0x0

    .line 3043
    .local v3, "windowingMode":I
    if-eqz v12, :cond_16

    .line 3044
    invoke-virtual {v12, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_17

    .line 3045
    :cond_16
    const/4 v4, 0x0

    :goto_17
    move-object v9, v4

    .line 3046
    .local v9, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v9, :cond_38

    .line 3047
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v2

    .line 3048
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    .line 3049
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 3050
    invoke-virtual {v4, v14}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3051
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 3054
    :cond_35
    move v8, v2

    move v15, v3

    goto :goto_3a

    .line 3046
    :cond_38
    move v8, v2

    move v15, v3

    .line 3054
    .end local v2    # "activityType":I
    .end local v3    # "windowingMode":I
    .local v8, "activityType":I
    .local v15, "windowingMode":I
    :goto_3a
    const-string/jumbo v2, "startActivityFromRecents: Task "

    const/4 v7, 0x2

    if-eq v8, v7, :cond_363

    const/4 v3, 0x3

    if-eq v8, v3, :cond_363

    .line 3061
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v6, 0x1

    invoke-virtual {v4, v13, v6}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3107
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_5e

    .line 3108
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    move/from16 v5, p1

    invoke-virtual {v0, v4, v9, v5, v14}, Lcom/android/server/wm/MultiTaskingController;->interceptStartActivityFromRecentsLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;II)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3110
    invoke-static {v9}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3111
    const/16 v0, 0x64

    return v0

    .line 3107
    :cond_5e
    move/from16 v5, p1

    .line 3115
    :cond_60
    const/4 v0, -0x1

    const/16 v21, 0x0

    if-eqz v4, :cond_89

    if-eqz v9, :cond_89

    .line 3116
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v3

    .line 3117
    .local v3, "launchDisplayId":I
    if-eq v3, v0, :cond_77

    .line 3118
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    if-ne v0, v3, :cond_74

    goto :goto_77

    :cond_74
    move/from16 v0, v21

    goto :goto_78

    :cond_77
    :goto_77
    move v0, v6

    .line 3119
    .local v0, "isInSameDisplay":Z
    :goto_78
    if-nez v15, :cond_89

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v18

    if-eqz v18, :cond_89

    if-eqz v0, :cond_89

    .line 3121
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3130
    .end local v0    # "isInSameDisplay":Z
    .end local v3    # "launchDisplayId":I
    :cond_89
    invoke-static {v15}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 3131
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 3132
    .local v0, "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3133
    .local v3, "primary":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_9d

    .line 3134
    iput v15, v3, Lcom/android/server/wm/ActivityStack;->mLaunchSplitWindowingMode:I

    .line 3160
    .end local v0    # "defaultTaskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "primary":Lcom/android/server/wm/ActivityStack;
    :cond_9d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3162
    :try_start_a2
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_322

    const/4 v3, 0x1

    :try_start_a5
    invoke-virtual {v0, v13, v7, v9, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_315

    move-object v6, v0

    .line 3164
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_2e0

    .line 3174
    const/4 v0, 0x3

    if-eq v15, v0, :cond_dd

    if-eqz v9, :cond_b7

    .line 3178
    :try_start_b1
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getAvoidMoveHomeToFrontFromRecent()Z

    move-result v0

    if-nez v0, :cond_dd

    .line 3181
    :cond_b7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3182
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v2

    .line 3181
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3191
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const-string/jumbo v3, "startActivityFromRecents"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_b1 .. :try_end_cd} :catchall_ce

    goto :goto_dd

    .line 3252
    .end local v0    # "dc":Lcom/android/server/wm/DisplayContent;
    :catchall_ce
    move-exception v0

    move-object v4, v6

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move v6, v13

    move/from16 v22, v15

    const/16 v23, 0x1

    goto/16 :goto_32e

    .line 3197
    :cond_dd
    :goto_dd
    :try_start_dd
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 3198
    invoke-virtual {v0, v14}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0
    :try_end_e3
    .catchall {:try_start_dd .. :try_end_e3} :catchall_2ce

    if-eqz v0, :cond_123

    if-eqz v9, :cond_123

    :try_start_e7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3199
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 3200
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    .line 3201
    .local v0, "launchWindowingMode":I
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v2

    .line 3202
    .local v2, "launchDisplayId":I
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v3

    .line 3203
    .local v3, "taskDisplayId":I
    if-eqz v2, :cond_10a

    const/4 v4, -0x1

    if-ne v2, v4, :cond_107

    if-nez v3, :cond_107

    goto :goto_10a

    :cond_107
    move/from16 v4, v21

    goto :goto_10b

    :cond_10a
    :goto_10a
    const/4 v4, 0x1

    .line 3206
    .local v4, "launchOnDefaultDisplay":Z
    :goto_10b
    if-eqz v4, :cond_121

    const/4 v7, 0x1

    if-eq v0, v7, :cond_112

    if-nez v0, :cond_123

    .line 3209
    :cond_112
    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v7

    move/from16 v17, v0

    .end local v0    # "launchWindowingMode":I
    .local v17, "launchWindowingMode":I
    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed(Lcom/android/server/wm/ActivityStack;)V
    :try_end_120
    .catchall {:try_start_e7 .. :try_end_120} :catchall_ce

    goto :goto_123

    .line 3206
    .end local v17    # "launchWindowingMode":I
    .restart local v0    # "launchWindowingMode":I
    :cond_121
    move/from16 v17, v0

    .line 3217
    .end local v0    # "launchWindowingMode":I
    .end local v2    # "launchDisplayId":I
    .end local v3    # "taskDisplayId":I
    .end local v4    # "launchOnDefaultDisplay":Z
    :cond_123
    :goto_123
    :try_start_123
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v6, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_12d
    .catchall {:try_start_123 .. :try_end_12d} :catchall_2ce

    if-nez v0, :cond_21b

    .line 3218
    :try_start_12f
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_205

    .line 3219
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v7, v0

    .line 3221
    .local v7, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_20b

    const/4 v4, 0x1

    :try_start_13d
    invoke-virtual {v0, v4, v7}, Lcom/android/server/wm/RootWindowContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 3223
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v6, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 3224
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v0
    :try_end_148
    .catchall {:try_start_13d .. :try_end_148} :catchall_200

    move-object v3, v0

    .line 3226
    .local v3, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :try_start_149
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_14b
    .catchall {:try_start_149 .. :try_end_14b} :catchall_1e4

    const/4 v0, 0x0

    const/16 v17, 0x0

    :try_start_14e
    iget v4, v6, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_150
    .catchall {:try_start_14e .. :try_end_150} :catchall_1db

    const/16 v19, 0x0

    move-object/from16 v22, v3

    .end local v3    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .local v22, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    move-object v3, v0

    move v0, v4

    const/16 v18, 0x1

    move-object/from16 v4, v17

    move v5, v0

    move-object/from16 v24, v6

    move/from16 v23, v18

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .local v24, "task":Lcom/android/server/wm/Task;
    move/from16 v6, v19

    move-object/from16 v17, v7

    move/from16 v16, v8

    const/4 v8, 0x2

    .end local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "activityType":I
    .local v16, "activityType":I
    .local v17, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v7, p4

    :try_start_168
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 3230
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V
    :try_end_16e
    .catchall {:try_start_168 .. :try_end_16e} :catchall_1d3

    .line 3232
    :try_start_16e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    .end local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .local v2, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    invoke-virtual {v0, v3, v8, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 3234
    nop

    .line 3236
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 3237
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3238
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3236
    invoke-virtual {v0, v4, v8, v5}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    :try_end_189
    .catchall {:try_start_16e .. :try_end_189} :catchall_1c4

    .line 3239
    nop

    .line 3252
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3254
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_1c1

    .line 3255
    if-eqz v9, :cond_1a8

    .line 3256
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1a8

    .line 3257
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a8

    move/from16 v6, v23

    goto :goto_1aa

    :cond_1a8
    move/from16 v6, v21

    :goto_1aa
    move v0, v6

    .line 3258
    .local v0, "hasLaunchBounds":Z
    move-object/from16 v5, v24

    .end local v24    # "task":Lcom/android/server/wm/Task;
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_1bb

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v4

    if-nez v4, :cond_1bb

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1bd

    :cond_1bb
    if-eqz v0, :cond_1c3

    .line 3260
    :cond_1bd
    invoke-static {v10, v11}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c3

    .line 3254
    .end local v0    # "hasLaunchBounds":Z
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v24    # "task":Lcom/android/server/wm/Task;
    :cond_1c1
    move-object/from16 v5, v24

    .line 3239
    .end local v24    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    :cond_1c3
    :goto_1c3
    return v8

    .line 3252
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v24    # "task":Lcom/android/server/wm/Task;
    :catchall_1c4
    move-exception v0

    move-object/from16 v5, v24

    move-object v4, v5

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move v6, v13

    move/from16 v22, v15

    move/from16 v30, v16

    .end local v24    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    goto/16 :goto_32e

    .line 3232
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v24    # "task":Lcom/android/server/wm/Task;
    :catchall_1d3
    move-exception v0

    move-object/from16 v2, v17

    move-object/from16 v3, v22

    move-object/from16 v5, v24

    .end local v17    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v24    # "task":Lcom/android/server/wm/Task;
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    goto :goto_1ec

    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "activityType":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v8    # "activityType":I
    :catchall_1db
    move-exception v0

    move-object v5, v6

    move-object v2, v7

    move/from16 v16, v8

    const/4 v8, 0x2

    const/16 v23, 0x1

    goto :goto_1ec

    :catchall_1e4
    move-exception v0

    move/from16 v23, v4

    move-object v5, v6

    move-object v2, v7

    move/from16 v16, v8

    const/4 v8, 0x2

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v8    # "activityType":I
    .restart local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v16    # "activityType":I
    :goto_1ec
    :try_start_1ec
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v4, v3, v8, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ILcom/android/server/wm/ActivityRecord;)V

    .line 3234
    nop

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15    # "windowingMode":I
    .end local v16    # "activityType":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_1f3
    .catchall {:try_start_1ec .. :try_end_1f3} :catchall_1f3

    .line 3252
    .end local v2    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v15    # "windowingMode":I
    .restart local v16    # "activityType":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_1f3
    move-exception v0

    move-object v4, v5

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move v6, v13

    move/from16 v22, v15

    move/from16 v30, v16

    goto/16 :goto_32e

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "activityType":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    :catchall_200
    move-exception v0

    move/from16 v23, v4

    move-object v5, v6

    goto :goto_20f

    .line 3218
    :cond_205
    move-object v5, v6

    move/from16 v16, v8

    const/16 v23, 0x1

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "activityType":I
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v16    # "activityType":I
    goto :goto_220

    .line 3252
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "activityType":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    :catchall_20b
    move-exception v0

    move-object v5, v6

    const/16 v23, 0x1

    :goto_20f
    move-object v4, v5

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move v6, v13

    move/from16 v22, v15

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "activityType":I
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v16    # "activityType":I
    goto/16 :goto_32e

    .line 3217
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v16    # "activityType":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    :cond_21b
    move-object v5, v6

    move/from16 v16, v8

    const/16 v23, 0x1

    .line 3241
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "activityType":I
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v16    # "activityType":I
    :goto_220
    :try_start_220
    iget-object v6, v5, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 3242
    .local v6, "callingPackage":Ljava/lang/String;
    iget-object v7, v5, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 3243
    .local v7, "callingFeatureId":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 3244
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x100000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3245
    iget v2, v5, Lcom/android/server/wm/Task;->mUserId:I
    :try_end_22d
    .catchall {:try_start_220 .. :try_end_22d} :catchall_2bd

    move/from16 v22, v15

    .end local v15    # "windowingMode":I
    .local v22, "windowingMode":I
    move v15, v2

    .line 3246
    .local v15, "userId":I
    :try_start_230
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    iget v3, v5, Lcom/android/server/wm/Task;->mCallingUid:I

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-string/jumbo v28, "startActivityFromRecents"
    :try_end_245
    .catchall {:try_start_230 .. :try_end_245} :catchall_2ae

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v4, p1

    move-object/from16 v29, v5

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .local v29, "task":Lcom/android/server/wm/Task;
    move/from16 v5, p2

    move/from16 v30, v16

    .end local v16    # "activityType":I
    .local v30, "activityType":I
    move-object v8, v0

    move-object/from16 v31, v9

    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .local v31, "activityOptions":Landroid/app/ActivityOptions;
    move-object/from16 v9, v17

    move-object/from16 v32, v10

    move-object/from16 v10, v24

    move-object/from16 v33, v11

    move-object/from16 v11, v25

    move/from16 v12, v26

    move/from16 v13, v27

    move-object/from16 v14, p4

    move-object/from16 v16, v29

    move-object/from16 v17, v28

    :try_start_26a
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v2
    :try_end_26e
    .catchall {:try_start_26a .. :try_end_26e} :catchall_2a7

    .line 3252
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3254
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v3, :cond_2a6

    .line 3255
    if-eqz v31, :cond_28c

    .line 3256
    invoke-virtual/range {v31 .. v31}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_28c

    .line 3257
    invoke-virtual/range {v31 .. v31}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28c

    move/from16 v21, v23

    goto :goto_28d

    :cond_28c
    nop

    :goto_28d
    move/from16 v3, v21

    .line 3258
    .local v3, "hasLaunchBounds":Z
    if-eqz v29, :cond_29d

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v4

    if-nez v4, :cond_29d

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-nez v4, :cond_29f

    :cond_29d
    if-eqz v3, :cond_2a6

    .line 3260
    :cond_29f
    move-object/from16 v5, v32

    move-object/from16 v8, v33

    invoke-static {v5, v8}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    .end local v3    # "hasLaunchBounds":Z
    :cond_2a6
    return v2

    .line 3252
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v7    # "callingFeatureId":Ljava/lang/String;
    .end local v15    # "userId":I
    :catchall_2a7
    move-exception v0

    move-object/from16 v5, v32

    move-object/from16 v8, v33

    goto/16 :goto_310

    .end local v29    # "task":Lcom/android/server/wm/Task;
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v16    # "activityType":I
    :catchall_2ae
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move/from16 v30, v16

    move/from16 v6, p3

    move-object/from16 v4, v29

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v16    # "activityType":I
    .restart local v29    # "task":Lcom/android/server/wm/Task;
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    goto/16 :goto_32e

    .end local v22    # "windowingMode":I
    .end local v29    # "task":Lcom/android/server/wm/Task;
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v5    # "task":Lcom/android/server/wm/Task;
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "windowingMode":I
    .restart local v16    # "activityType":I
    :catchall_2bd
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move/from16 v22, v15

    move/from16 v30, v16

    move/from16 v6, p3

    move-object/from16 v4, v29

    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15    # "windowingMode":I
    .end local v16    # "activityType":I
    .restart local v22    # "windowingMode":I
    .restart local v29    # "task":Lcom/android/server/wm/Task;
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    goto/16 :goto_32e

    .end local v22    # "windowingMode":I
    .end local v29    # "task":Lcom/android/server/wm/Task;
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .local v6, "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v15    # "windowingMode":I
    :catchall_2ce
    move-exception v0

    move-object/from16 v29, v6

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move/from16 v22, v15

    const/16 v23, 0x1

    move/from16 v6, p3

    move-object/from16 v4, v29

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "activityType":I
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15    # "windowingMode":I
    .restart local v22    # "windowingMode":I
    .restart local v29    # "task":Lcom/android/server/wm/Task;
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    goto :goto_32e

    .line 3165
    .end local v22    # "windowingMode":I
    .end local v29    # "task":Lcom/android/server/wm/Task;
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v15    # "windowingMode":I
    :cond_2e0
    move-object/from16 v29, v6

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move/from16 v22, v15

    const/16 v23, 0x1

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v8    # "activityType":I
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15    # "windowingMode":I
    .restart local v22    # "windowingMode":I
    .restart local v29    # "task":Lcom/android/server/wm/Task;
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    :try_start_2ec
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 3166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2fb
    .catchall {:try_start_2ec .. :try_end_2fb} :catchall_30f

    move/from16 v6, p3

    :try_start_2fd
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v22    # "windowingMode":I
    .end local v29    # "task":Lcom/android/server/wm/Task;
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_30d
    .catchall {:try_start_2fd .. :try_end_30d} :catchall_30d

    .line 3252
    .restart local v22    # "windowingMode":I
    .restart local v29    # "task":Lcom/android/server/wm/Task;
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_30d
    move-exception v0

    goto :goto_312

    :catchall_30f
    move-exception v0

    :goto_310
    move/from16 v6, p3

    :goto_312
    move-object/from16 v4, v29

    goto :goto_32e

    .end local v22    # "windowingMode":I
    .end local v29    # "task":Lcom/android/server/wm/Task;
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .local v4, "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v15    # "windowingMode":I
    :catchall_315
    move-exception v0

    move/from16 v23, v3

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move v6, v13

    move/from16 v22, v15

    goto :goto_32e

    :catchall_322
    move-exception v0

    move/from16 v30, v8

    move-object/from16 v31, v9

    move-object v5, v10

    move-object v8, v11

    move v6, v13

    move/from16 v22, v15

    const/16 v23, 0x1

    .end local v8    # "activityType":I
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15    # "windowingMode":I
    .restart local v22    # "windowingMode":I
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    :goto_32e
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3254
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v2, :cond_362

    .line 3255
    if-eqz v31, :cond_34c

    .line 3256
    invoke-virtual/range {v31 .. v31}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_34c

    .line 3257
    invoke-virtual/range {v31 .. v31}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34c

    move/from16 v21, v23

    goto :goto_34d

    :cond_34c
    nop

    :goto_34d
    move/from16 v2, v21

    .line 3258
    .local v2, "hasLaunchBounds":Z
    if-eqz v4, :cond_35d

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isDexMode()Z

    move-result v3

    if-nez v3, :cond_35d

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_35f

    :cond_35d
    if-eqz v2, :cond_362

    .line 3260
    :cond_35f
    invoke-static {v5, v8}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    .end local v2    # "hasLaunchBounds":Z
    :cond_362
    throw v0

    .line 3054
    .end local v4    # "task":Lcom/android/server/wm/Task;
    .end local v22    # "windowingMode":I
    .end local v30    # "activityType":I
    .end local v31    # "activityOptions":Landroid/app/ActivityOptions;
    .local v0, "task":Lcom/android/server/wm/Task;
    .restart local v8    # "activityType":I
    .restart local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v15    # "windowingMode":I
    :cond_363
    move/from16 v30, v8

    move-object/from16 v31, v9

    move v6, v13

    move/from16 v22, v15

    .line 3055
    .end local v8    # "activityType":I
    .end local v9    # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15    # "windowingMode":I
    .restart local v22    # "windowingMode":I
    .restart local v30    # "activityType":I
    .restart local v31    # "activityOptions":Landroid/app/ActivityOptions;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be launch in the home/recents stack."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method startRecentPairTask(IIILcom/android/server/wm/SafeActivityOptions;)I
    .registers 15
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "taskId"    # I
    .param p4, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 3271
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3273
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/RecentTaskItemController;->getPairTask(I)Lcom/android/server/wm/PairTask;

    move-result-object v0

    .line 3274
    .local v0, "pairTask":Lcom/android/server/wm/PairTask;
    if-eqz v0, :cond_c0

    .line 3280
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController;->clearWaitingDismissSplit()V

    .line 3283
    const/4 v1, 0x2

    .line 3284
    .local v1, "splitCount":I
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/android/server/wm/Task;

    .line 3285
    .local v3, "splitTasks":[Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3286
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitPrimaryPairChildId()I

    move-result v5

    .line 3285
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3288
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3289
    invoke-virtual {v0}, Lcom/android/server/wm/PairTask;->getSplitSecondaryPairChildId()I

    move-result v8

    .line 3288
    invoke-virtual {v4, v8, v2, v6, v7}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    aput-object v4, v3, v7

    .line 3296
    aget-object v4, v3, v5

    if-eqz v4, :cond_a3

    aget-object v4, v3, v7

    if-eqz v4, :cond_a3

    .line 3325
    if-eqz p4, :cond_44

    .line 3326
    invoke-virtual {p4, p0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_45

    .line 3327
    :cond_44
    nop

    :goto_45
    move-object v4, v6

    .line 3328
    .local v4, "activityOptions":Landroid/app/ActivityOptions;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/RecentTaskItemController;->setSplitStartRecentPairTask(Z)V

    .line 3345
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4e
    if-gt v6, v7, :cond_6d

    .line 3346
    if-eqz v4, :cond_5e

    .line 3347
    aget-object v8, v3, v6

    .line 3348
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getRecentPairWindowingMode()I

    move-result v8

    .line 3347
    invoke-virtual {v4, v8}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 3349
    invoke-virtual {v4, v5}, Landroid/app/ActivityOptions;->setForceLaunchWindowingMode(I)V

    .line 3351
    :cond_5e
    aget-object v8, v3, v6

    iget v8, v8, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v9, v4}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    invoke-virtual {p0, p1, p2, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    .line 3345
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 3355
    .end local v6    # "i":I
    :cond_6d
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTaskItemController:Lcom/android/server/wm/RecentTaskItemController;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTaskItemController;->setSplitStartRecentPairTask(Z)V

    .line 3356
    .end local v4    # "activityOptions":Landroid/app/ActivityOptions;
    nop

    .line 3360
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v4, :cond_91

    .line 3361
    const-string v4, "1000"

    const-string v6, "From recent_task"

    invoke-static {v4, v6}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    aget-object v2, v3, v2
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_dd

    const-string v4, "Recents icon LP"

    if-nez v2, :cond_8c

    .line 3364
    :try_start_86
    const-string v2, "1020"

    invoke-static {v2, v4}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    .line 3368
    :cond_8c
    const-string v2, "1021"

    invoke-static {v2, v4}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_86 .. :try_end_91} :catchall_dd

    .line 3373
    :cond_91
    :goto_91
    nop

    .line 3375
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3380
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v2, :cond_a2

    .line 3381
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppPairController;->sendPairLoggingLocked()V

    .line 3373
    :cond_a2
    return v5

    .line 3357
    :cond_a3
    :try_start_a3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecentTaskItem: Pair Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " can\'t be launch into split"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v2

    .line 3275
    .end local v1    # "splitCount":I
    .end local v3    # "splitTasks":[Lcom/android/server/wm/Task;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :cond_c0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecentTaskItem: PairTask #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be launch into split due to wrong taskId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1    # "callingPid":I
    .end local p2    # "callingUid":I
    .end local p3    # "taskId":I
    .end local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v1
    :try_end_dd
    .catchall {:try_start_a3 .. :try_end_dd} :catchall_dd

    .line 3375
    .end local v0    # "pairTask":Lcom/android/server/wm/PairTask;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1    # "callingPid":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "taskId":I
    .restart local p4    # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_dd
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3380
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_USAGE_LOGGING:Z

    if-eqz v1, :cond_ee

    .line 3381
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppPairController;->sendPairLoggingLocked()V

    .line 3383
    :cond_ee
    throw v0
.end method

.method startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 15
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .line 1226
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1227
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 1230
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    const/4 v8, -0x1

    .line 1244
    .local v8, "killPid":I
    const/4 v1, 0x0

    .line 1245
    .local v1, "knownToBeDead":Z
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1247
    :try_start_18
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 1248
    return-void

    .line 1249
    :catch_1c
    move-exception v2

    .line 1250
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when starting activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1251
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1250
    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1256
    .end local v2    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    move v9, v1

    goto :goto_4d

    .line 1258
    :cond_40
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1262
    const-string/jumbo v2, "turnScreenOnFlag-startSpecificActivity"

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 1266
    :cond_4c
    move v9, v1

    .end local v1    # "knownToBeDead":Z
    .local v9, "knownToBeDead":Z
    :goto_4d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 1268
    if-eqz p2, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_5a

    const/4 v1, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v1, 0x0

    :goto_5b
    move v10, v1

    .line 1269
    .local v10, "isTop":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v10, :cond_64

    const-string/jumbo v2, "top-activity"

    goto :goto_66

    :cond_64
    const-string v2, "activity"

    :goto_66
    move-object v5, v2

    .line 1270
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v7

    .line 1269
    move-object v2, p1

    move v3, v9

    move v4, v10

    move v6, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;II)V

    .line 1272
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v1, :cond_8b

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 1275
    move-object v1, v0

    .line 1276
    .local v1, "finalWpc":Lcom/android/server/wm/WindowProcessController;
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8b

    .line 1277
    sget-object v2, Lcom/android/server/am/AppStateBroadcaster;->mObjHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$dE_kGaBzKYJTuUMOLzb6fPuX-hE;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1285
    .end local v1    # "finalWpc":Lcom/android/server/wm/WindowProcessController;
    :cond_8b
    return-void
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 639
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityMetricsLogger;->getLastDrawnDelayMs(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V

    .line 640
    return-void
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;J)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "totalTime"    # J

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_33

    .line 645
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    .line 646
    .local v2, "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 647
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 648
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 649
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 650
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 651
    iput-wide p2, v3, Landroid/app/WaitResult;->totalTime:J

    .line 652
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 644
    .end local v2    # "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    .end local v3    # "result":Landroid/app/WaitResult;
    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 655
    .end local v1    # "i":I
    :cond_33
    if-eqz v0, :cond_3c

    .line 656
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 658
    :cond_3c
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/wm/WindowProcessController;

    .line 1198
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_1b

    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1200
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 1202
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1204
    :cond_1b
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "targetStackBounds"    # Landroid/graphics/Rect;
    .param p3, "forceUpdate"    # Z

    .line 2862
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2863
    sget-object v0, Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;->INSTANCE:Lcom/android/server/wm/-$$Lambda$oZvG727evJMxIwK1im7QJjcltfo;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2865
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 2863
    invoke-static {v0, v1, p2, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2866
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 2867
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2868
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2869
    return-void
.end method

.method updateTopResumedActivityIfNeeded()V
    .registers 6

    .line 2539
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2540
    .local v0, "prevTopActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2541
    .local v1, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_36

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v0, :cond_f

    goto :goto_36

    .line 2547
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiStarController:Lcom/android/server/wm/MultiStarController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/MultiStarController;->updatePolicyIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2552
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_20

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v3

    .line 2557
    .local v4, "prevActivityReceivedTopState":Z
    :goto_21
    if-eqz v4, :cond_2e

    .line 2558
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2559
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2560
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2564
    :cond_2e
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2565
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2566
    return-void

    .line 2542
    .end local v4    # "prevActivityReceivedTopState":Z
    :cond_36
    :goto_36
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/app/WaitResult;

    .line 625
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    .line 626
    .local v0, "waitInfo":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 2872
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2874
    return-void
.end method
