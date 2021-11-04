.class final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionInfo"
.end annotation


# instance fields
.field mBindApplicationDelayMs:I

.field mCurrentTransitionDelayMs:I

.field final mCurrentTransitionDeviceUptime:I

.field mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLaunchTraceName:Ljava/lang/String;

.field final mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

.field mLoggedStartingWindowDrawn:Z

.field mLoggedTransitionStarting:Z

.field final mPendingDrawActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFullyDrawn:Ljava/lang/Runnable;

.field final mProcessRunning:Z

.field final mProcessSwitch:Z

.field mReason:I

.field mStartingWindowDelayMs:I

.field final mTransitionStartTimeNs:J

.field final mTransitionType:I

.field mWindowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZZ)V
    .registers 9
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p3, "transitionType"    # I
    .param p4, "processRunning"    # Z
    .param p5, "processSwitch"    # Z

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    .line 261
    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    .line 265
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    .line 304
    iput-object p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 305
    # getter for: Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mCurrentTransitionStartTimeNs:J
    invoke-static {p2}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$000(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    .line 306
    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    .line 307
    iput-boolean p4, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessRunning:Z

    .line 308
    iput-boolean p5, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    .line 309
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mCurrentTransitionDeviceUptime:I

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 312
    # setter for: Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mAssociatedTransitionInfo:Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    invoke-static {p2, p0}, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->access$102(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    .line 313
    return-void
.end method

.method static create(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;ZZI)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;
    .registers 13
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "launchingState"    # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .param p2, "processRunning"    # Z
    .param p3, "processSwitch"    # Z
    .param p4, "startResult"    # I

    .line 281
    const/4 v0, -0x1

    .line 282
    .local v0, "transitionType":I
    const/4 v1, 0x2

    if-eqz p2, :cond_e

    .line 283
    if-nez p4, :cond_9

    .line 284
    const/16 v0, 0x8

    goto :goto_13

    .line 285
    :cond_9
    if-ne p4, v1, :cond_13

    .line 286
    const/16 v0, 0x9

    goto :goto_13

    .line 288
    :cond_e
    if-eqz p4, :cond_12

    if-ne p4, v1, :cond_13

    .line 291
    :cond_12
    const/4 v0, 0x7

    .line 293
    :cond_13
    :goto_13
    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 295
    const/4 v1, 0x0

    return-object v1

    .line 297
    :cond_18
    new-instance v7, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZZ)V

    return-object v7
.end method


# virtual methods
.method allDrawn()Z
    .registers 2

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method calculateCurrentDelay()I
    .registers 3

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->calculateDelay(J)I

    move-result v0

    return v0
.end method

.method calculateDelay(J)I
    .registers 6
    .param p1, "timestampNs"    # J

    .line 361
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionStartTimeNs:J

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method contains(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 333
    invoke-static {p1}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 334
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method isInterestingToLoggerAndObserver()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mProcessSwitch:Z

    return v0
.end method

.method removePendingDrawActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 339
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove pending draw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 341
    return-void
.end method

.method setLatestLaunchedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_5

    .line 322
    return-void

    .line 324
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 325
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_2a

    .line 326
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add pending draw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_2a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ua="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mPendingDrawActivities:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
