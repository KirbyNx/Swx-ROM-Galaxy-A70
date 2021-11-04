.class Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;,
        Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private mCanceled:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkedToDeathOfRunner:Z

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingWallpaperAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperAnimationAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private mReparentedCellDividerShellRoot:Lcom/android/server/wm/ShellRoot;

.field private mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationAdapter"    # Landroid/view/RemoteAnimationAdapter;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 111
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 113
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    .line 117
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedCellDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 123
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 124
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 125
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/RemoteAnimationController;

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanUpSplitPairedTaskAnimation()V
    .registers 13

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-nez v0, :cond_5

    .line 801
    return-void

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 804
    .local v0, "taskOrganizerController":Lcom/android/server/wm/TaskOrganizerController;
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v1, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 805
    .local v1, "pairedRootTask":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 806
    .local v2, "parentContainer":Lcom/android/server/wm/WindowContainer;
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getTopMostLeafTask(Z)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 807
    .local v3, "topTask":Lcom/android/server/wm/Task;
    const/4 v5, 0x1

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v6

    if-eqz v6, :cond_27

    move v6, v5

    goto :goto_28

    :cond_27
    move v6, v4

    .line 808
    .local v6, "isTopHomeOrRecents":Z
    :goto_28
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    .line 809
    invoke-virtual {v7, p0}, Lcom/android/server/wm/SplitWindowController;->isRunningForOtherRemoteAnimationLocked(Lcom/android/server/wm/RemoteAnimationController;)Z

    move-result v7

    .line 810
    .local v7, "isRunningForOtherRemoteAnimation":Z
    iget-object v8, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 811
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v8

    .line 813
    .local v8, "isSplitScreenActivated":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cleanUpSplitPairedTaskAnimation: [SplitRecents] pairedRootTask="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", parentContainer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", isRunningForOtherRemoteAnimation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSplitScreenActivated="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isTopHomeOrRecents="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 818
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v10, :cond_7d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", topTask="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7f

    :cond_7d
    const-string v10, ""

    :goto_7f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Callers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    .line 819
    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 813
    const-string v10, "WindowManager"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v9, 0x0

    if-eqz v7, :cond_9e

    .line 824
    iput-object v9, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 825
    return-void

    .line 832
    :cond_9e
    invoke-direct {p0, v1}, Lcom/android/server/wm/RemoteAnimationController;->startFreezeAnimationIfNeeded(Lcom/android/server/wm/Task;)V

    .line 834
    if-eqz v2, :cond_a6

    .line 835
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 838
    :cond_a6
    if-eqz v6, :cond_aa

    .line 839
    :try_start_a8
    iput-boolean v5, v3, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 841
    :cond_aa
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->isDeferredSplitTaskOrganizerLocked()Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 842
    const-string/jumbo v10, "remote_animation_finished"

    invoke-virtual {v0, v10}, Lcom/android/server/wm/TaskOrganizerController;->continueSplitTaskOrganizerLocked(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_a8 .. :try_end_b6} :catchall_c5

    .line 846
    :cond_b6
    if-eqz v6, :cond_ba

    .line 847
    iput-boolean v4, v3, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 850
    :cond_ba
    iput-object v9, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 851
    if-nez v6, :cond_c0

    if-nez v8, :cond_c1

    :cond_c0
    move v4, v5

    .line 852
    .local v4, "hideDivider":Z
    :cond_c1
    invoke-direct {p0, v4}, Lcom/android/server/wm/RemoteAnimationController;->reparentDividerShellRootFromLeash(Z)V

    .line 857
    return-void

    .line 846
    .end local v4    # "hideDivider":Z
    :catchall_c5
    move-exception v5

    if-eqz v6, :cond_ca

    .line 847
    iput-boolean v4, v3, Lcom/android/server/wm/Task;->mIsLaunchHomeActivity:Z

    .line 849
    :cond_ca
    throw v5
.end method

.method private createAppAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 12

    .line 261
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, -0x26ee615e

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "createAppAnimations()"

    invoke-static {v0, v2, v1, v4, v3}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1f
    if-ltz v2, :cond_c6

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 266
    .local v4, "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAnimationController;->isAnimatingForSplitPairedTask()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 267
    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isActivityTypeHome()Z

    move-result v5

    if-nez v5, :cond_42

    iget-object v5, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 268
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isActivityTypeRecents()Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_42

    :cond_40
    move v5, v1

    goto :goto_43

    :cond_42
    :goto_42
    move v5, v3

    .line 269
    .local v5, "isHomeOrRecents":Z
    :goto_43
    if-nez v5, :cond_49

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-ne v6, v4, :cond_c2

    .line 277
    .end local v5    # "isHomeOrRecents":Z
    :cond_49
    invoke-virtual {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v5

    .line 278
    .local v5, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v5, :cond_6b

    .line 279
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_67

    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x4a6cd2bb

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const-string v10, "\tAdd container=%s"

    invoke-static {v7, v8, v1, v10, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_67
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 283
    :cond_6b
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_83

    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x260da918

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const-string v10, "\tRemove container=%s"

    invoke-static {v7, v8, v1, v10, v9}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_83
    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_a0

    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 289
    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    if-eqz v6, :cond_a0

    .line 290
    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 291
    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v7

    iget-object v8, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v6, v7, v8}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 294
    :cond_a0
    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v6, :cond_bd

    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 295
    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    if-eqz v6, :cond_bd

    .line 296
    iget-object v6, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 297
    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v7

    iget-object v8, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v6, v7, v8}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 300
    :cond_bd
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 263
    .end local v4    # "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v5    # "target":Landroid/view/RemoteAnimationTarget;
    :cond_c2
    :goto_c2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1f

    .line 304
    .end local v2    # "i":I
    :cond_c6
    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAnimationController;->isAnimatingForSplitPairedTask()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 305
    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAnimationController;->getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_f0

    .line 306
    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAnimationController;->getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 307
    .local v1, "pairTaskLeash":Landroid/view/SurfaceControl;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 308
    .local v2, "controller":Lcom/android/server/wm/TaskOrganizerController;
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 310
    .local v3, "primaryRoot":Lcom/android/server/wm/Task;
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->isOpeningAnimationForSplitPairedTask()Z

    move-result v4

    .line 311
    .local v4, "isOpeningTask":Z
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskOrganizerController;->handleTaskRemoteAnimationStarted(Lcom/android/server/wm/Task;Z)V

    .line 312
    invoke-direct {p0, v1}, Lcom/android/server/wm/RemoteAnimationController;->reparentDividerShellRootToLeash(Landroid/view/SurfaceControl;)V

    .line 319
    .end local v1    # "pairTaskLeash":Landroid/view/SurfaceControl;
    .end local v2    # "controller":Lcom/android/server/wm/TaskOrganizerController;
    .end local v3    # "primaryRoot":Lcom/android/server/wm/Task;
    .end local v4    # "isOpeningTask":Z
    :cond_f0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
.end method

.method private createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 14

    .line 323
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0x236bb261

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "createWallpaperAnimations()"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_12
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 325
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getDuration()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 326
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v8

    new-instance v10, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$dP8qDptNigoqhzVtIudsX5naGu4;

    invoke-direct {v10, p0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$dP8qDptNigoqhzVtIudsX5naGu4;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iget-object v11, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    const/4 v12, 0x0

    .line 324
    invoke-static/range {v5 .. v12}, Lcom/android/server/wm/WallpaperAnimationAdapter;->startWallpaperAnimations(Lcom/android/server/wm/WindowManagerService;JJLjava/util/function/Consumer;Ljava/util/ArrayList;Lcom/android/server/wm/DisplayContent;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    return-object v0
.end method

.method private invokeAnimationCancelled()V
    .registers 4

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 414
    goto :goto_12

    .line 412
    :catch_a
    move-exception v0

    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private isOpeningAnimationForSplitPairedTask()Z
    .registers 2

    .line 709
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    iget v0, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_15

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 443
    :cond_15
    return-void
.end method

.method private onAnimationFinished()V
    .registers 14

    .line 337
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v4, v0

    .local v4, "protoLogParam0":J
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_18
    const-string v0, ""

    :goto_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/server/wm/ProtoLogGroup;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x41b8dfc4

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v0, v8, v2

    const-string/jumbo v9, "onAnimationFinished(): mPendingAnimations=%d, caller=%s"

    invoke-static {v6, v7, v2, v9, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v4    # "protoLogParam0":J
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 347
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    .line 349
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_16d

    .line 351
    :try_start_4d
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_60

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x21369e24

    const-string/jumbo v7, "onAnimationFinished(): Notify animation finished:"

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v3, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 353
    :cond_60
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_67
    if-ltz v4, :cond_ec

    .line 354
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 355
    .local v6, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_86

    .line 356
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 357
    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I
    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 360
    :cond_86
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v7, :cond_9b

    .line 361
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedFinishCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-static {v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v7

    iget-object v8, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 362
    # getter for: Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mAnimationType:I
    invoke-static {v8}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$100(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)I

    move-result v8

    iget-object v9, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-interface {v7, v8, v9}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 365
    :cond_9b
    iget-object v7, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 366
    sget-boolean v7, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v7, :cond_b8

    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v9, 0x39f4f264

    const-string v10, "\tcontainer=%s"

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v7, v11, v3

    invoke-static {v8, v9, v3, v10, v11}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 370
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    :cond_b8
    invoke-static {}, Lcom/android/server/wm/CoreLiveLog;->isPossible()Z

    move-result v7

    if-eqz v7, :cond_e8

    .line 371
    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-eqz v7, :cond_e8

    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 372
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_e8

    iget-object v7, v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 373
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v7

    if-ne v7, v1, :cond_e8

    .line 375
    invoke-virtual {v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getAnimationRealStartTime()J

    move-result-wide v7

    long-to-int v7, v7

    .line 376
    .local v7, "start":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    int-to-long v10, v7

    sub-long/2addr v8, v10

    long-to-int v8, v8

    .line 377
    .local v8, "elapsed":I
    invoke-static {}, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->getInstance()Lcom/android/server/wm/CoreLiveLog$StatisticPool;

    move-result-object v9

    const-string v10, "STAT_HOME_LAUNCH"

    int-to-long v11, v8

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/wm/CoreLiveLog$StatisticPool;->addArithmeticData(Ljava/lang/String;J)V

    .line 353
    .end local v6    # "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v7    # "start":I
    .end local v8    # "elapsed":I
    :cond_e8
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_67

    .line 384
    .end local v4    # "i":I
    :cond_ec
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_f3
    if-ltz v1, :cond_12a

    .line 385
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 386
    .local v4, "adapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLeashFinishedCallback()Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v6

    .line 387
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getLastAnimationType()I

    move-result v7

    .line 386
    invoke-interface {v6, v7, v4}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 388
    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 389
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_127

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperAnimationAdapter;->getToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x32ddec5b

    const-string v9, "\twallpaper=%s"

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v6, v10, v3

    invoke-static {v7, v8, v3, v9, v10}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 384
    .end local v4    # "adapter":Lcom/android/server/wm/WallpaperAnimationAdapter;
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_127
    add-int/lit8 v1, v1, -0x1

    goto :goto_f3

    .line 392
    .end local v1    # "i":I
    :cond_12a
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-eqz v1, :cond_138

    .line 394
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/SplitWindowController;->removeRecentsPairRemoteAnimControllerLocked(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 395
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->cleanUpSplitPairedTaskAnimation()V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_138} :catch_15a
    .catchall {:try_start_4d .. :try_end_138} :catchall_158

    .line 402
    :cond_138
    :try_start_138
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "RemoteAnimationController#finished"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 403
    nop

    .line 404
    monitor-exit v0
    :try_end_141
    .catchall {:try_start_138 .. :try_end_141} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 405
    invoke-direct {p0, v3}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 406
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_157

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, 0xecb62ed

    check-cast v5, [Ljava/lang/Object;

    const-string v2, "Finishing remote animation"

    invoke-static {v0, v1, v3, v2, v5}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_157
    return-void

    .line 402
    :catchall_158
    move-exception v1

    goto :goto_164

    .line 398
    :catch_15a
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    :try_start_15b
    const-string v2, "WindowManager"

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    nop

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1
    :try_end_164
    .catchall {:try_start_15b .. :try_end_164} :catchall_158

    .line 402
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :goto_164
    :try_start_164
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 403
    nop

    .end local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1

    .line 404
    .restart local p0    # "this":Lcom/android/server/wm/RemoteAnimationController;
    :catchall_16d
    move-exception v1

    monitor-exit v0
    :try_end_16f
    .catchall {:try_start_164 .. :try_end_16f} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    if-eqz v0, :cond_a

    .line 419
    invoke-virtual {v0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->release()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 422
    :cond_a
    return-void
.end method

.method private reparentDividerShellRootFromLeash(Z)V
    .registers 3
    .param p1, "hidden"    # Z

    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/RemoteAnimationController;->reparentDividerShellRootFromLeash(ZZ)V

    .line 763
    return-void
.end method

.method private reparentDividerShellRootFromLeash(ZZ)V
    .registers 8
    .param p1, "hidden"    # Z
    .param p2, "isCellDivider"    # Z

    .line 767
    const/4 v0, 0x0

    .line 773
    .local v0, "reparentedDividerShellRoot":Lcom/android/server/wm/ShellRoot;
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    if-eqz v1, :cond_a

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    .line 775
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    .line 778
    :cond_a
    if-eqz v0, :cond_52

    .line 779
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 780
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 781
    .local v1, "dividerSurface":Landroid/view/SurfaceControl;
    nop

    .line 782
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getToken()Lcom/android/server/wm/WindowToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 783
    .local v2, "dividerParentSurface":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_35

    if-nez v2, :cond_24

    goto :goto_35

    .line 788
    :cond_24
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 789
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 790
    if-eqz p1, :cond_31

    .line 791
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 793
    :cond_31
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_52

    .line 784
    .end local v3    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_35
    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparentDividerShellRootFromLeash:[SplitRecents]  failed, no surfaces, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getToken()Lcom/android/server/wm/WindowToken;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 784
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v1    # "dividerSurface":Landroid/view/SurfaceControl;
    .end local v2    # "dividerParentSurface":Landroid/view/SurfaceControl;
    :cond_52
    :goto_52
    return-void
.end method

.method private reparentDividerShellRootToLeash(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "leash"    # Landroid/view/SurfaceControl;

    .line 716
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/RemoteAnimationController;->reparentDividerShellRootToLeash(Landroid/view/SurfaceControl;Z)V

    .line 717
    return-void
.end method

.method private reparentDividerShellRootToLeash(Landroid/view/SurfaceControl;Z)V
    .registers 8
    .param p1, "leash"    # Landroid/view/SurfaceControl;
    .param p2, "isCellDivider"    # Z

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-string v1, "WindowManager"

    if-nez v0, :cond_d

    .line 722
    const-string/jumbo v0, "reparentDividerShellRootToLeash:[SplitRecents]  failed, displayContent is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 736
    :cond_d
    const/16 v2, 0x7f2

    .line 737
    .local v2, "windowType":I
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    if-eqz v3, :cond_1a

    .line 738
    const-string/jumbo v0, "reparentDividerShellRootToLeash:[SplitRecents] failed, already reparented!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void

    .line 744
    :cond_1a
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    .line 745
    .local v0, "dividerShellRoot":Lcom/android/server/wm/ShellRoot;
    if-eqz v0, :cond_4b

    .line 746
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getToken()Lcom/android/server/wm/WindowToken;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 747
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 748
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 749
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 750
    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 751
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 755
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mReparentedDividerShellRoot:Lcom/android/server/wm/ShellRoot;

    .line 758
    .end local v1    # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_4b
    return-void
.end method

.method private setRunningRemoteAnimation(Z)V
    .registers 7
    .param p1, "running"    # Z

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    .line 426
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    move-result v1

    .line 427
    .local v1, "uid":I
    if-eqz v0, :cond_3b

    .line 430
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 431
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v2, :cond_37

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find process with pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .line 435
    :cond_37
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 436
    return-void

    .line 428
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_3b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Calling pid of remote animation was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private startFreezeAnimationIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "pairedRootTask"    # Lcom/android/server/wm/Task;

    .line 860
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_93

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 862
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_93

    .line 866
    :cond_18
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->isOpeningAnimationForSplitPairedTask()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "closingPrimaryChildTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    .line 869
    .local v1, "closingSecondaryChildTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 870
    .local v3, "closingApp":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 871
    .local v4, "closingTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v5

    if-eq v5, p1, :cond_41

    .line 872
    goto :goto_28

    .line 874
    :cond_41
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 875
    move-object v0, v4

    goto :goto_50

    .line 876
    :cond_49
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->inSplitScreenSecondaryWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 877
    move-object v1, v4

    .line 879
    .end local v3    # "closingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "closingTask":Lcom/android/server/wm/Task;
    :cond_50
    :goto_50
    goto :goto_28

    .line 881
    :cond_51
    if-eqz v0, :cond_92

    if-eqz v1, :cond_92

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFreezeAnimationIfNeeded: [SplitRecents] pairTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", closingPrimaryChildTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", closingSecondaryChildTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wm/Task;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v2

    .line 888
    .local v2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 889
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(II)V

    .line 892
    .end local v0    # "closingPrimaryChildTask":Lcom/android/server/wm/Task;
    .end local v1    # "closingSecondaryChildTask":Lcom/android/server/wm/Task;
    .end local v2    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    :cond_92
    return-void

    .line 863
    :cond_93
    :goto_93
    return-void
.end method

.method private unlinkToDeathOfRunner()V
    .registers 3

    .line 446
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_14

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 448
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 450
    :cond_14
    return-void
.end method

.method private writeStartDebugStatement()V
    .registers 9

    .line 250
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0x7518e37a

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    const-string v4, "Starting remote animation"

    invoke-static {v0, v2, v1, v4, v3}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 252
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 253
    .local v2, "pw":Lcom/android/internal/util/FastPrintWriter;
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_24
    if-ltz v3, :cond_38

    .line 254
    iget-object v5, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v5, v5, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 253
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 256
    .end local v3    # "i":I
    :cond_38
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 257
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_55

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0x31d185c0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v7, "%s"

    invoke-static {v5, v6, v1, v7, v4}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 258
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_55
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 454
    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .registers 9
    .param p1, "reason"    # Ljava/lang/String;

    .line 238
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x70be04df

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v6, "cancelAnimation(): reason=%s"

    invoke-static {v2, v3, v5, v6, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 240
    :try_start_1f
    iget-boolean v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v2, :cond_25

    .line 241
    monitor-exit v0

    return-void

    .line 243
    :cond_25
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 244
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2f

    .line 245
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 246
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    .line 247
    return-void

    .line 244
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method createRemoteAnimationRecord(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .registers 16
    .param p1, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "localBounds"    # Landroid/graphics/Rect;
    .param p4, "stackBounds"    # Landroid/graphics/Rect;
    .param p5, "startBounds"    # Landroid/graphics/Rect;

    .line 139
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x788bb79d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v5, "createAnimationAdapter(): container=%s"

    invoke-static {v2, v3, v1, v5, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/RemoteAnimationController;->isAnimatingForSplitPairedTask()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 143
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_30

    .line 144
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_30

    .line 145
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 146
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_91

    .line 147
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 148
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_91

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isInPairTask()Z

    move-result v2

    if-eqz v2, :cond_91

    iget v2, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_51

    iget v2, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    if-eq v2, v3, :cond_91

    .line 150
    :cond_51
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 151
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_75

    .line 152
    iget v3, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p4, Landroid/graphics/Rect;->right:I

    .line 153
    iget v3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p3, Landroid/graphics/Rect;->right:I

    .line 155
    :cond_75
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_91

    .line 156
    iget v3, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    .line 157
    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    .line 162
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    :cond_91
    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Point;->set(II)V

    .line 163
    invoke-virtual {p3, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 166
    :cond_9b
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 168
    .local v0, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    nop

    .line 171
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asSplitPairTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 172
    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSplitWindowController:Lcom/android/server/wm/SplitWindowController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/SplitWindowController;->addRecentsPairRemoteAnimControllerLocked(Lcom/android/server/wm/RemoteAnimationController;)V

    .line 176
    :cond_bc
    return-object v0
.end method

.method getAnimatingSplitPairedTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-eqz v0, :cond_b

    .line 695
    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asSplitPairTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 697
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getSplitPairedTaskAdapterLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 701
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v0, :cond_f

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object v0

    .line 705
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method goodToGo()V
    .registers 10

    .line 183
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v3, 0x3416e054

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    const-string/jumbo v5, "goodToGo()"

    invoke-static {v0, v3, v2, v5, v4}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_22

    goto :goto_6a

    .line 193
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v5, 0x44fa0000    # 2000.0f

    iget-object v6, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 194
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-long v5, v6

    .line 193
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 198
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createAppAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 199
    .local v0, "appTargets":[Landroid/view/RemoteAnimationTarget;
    array-length v4, v0

    if-nez v4, :cond_56

    .line 200
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_52

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x2926d923

    check-cast v1, [Ljava/lang/Object;

    const-string/jumbo v5, "goodToGo(): No apps to animate"

    invoke-static {v3, v4, v2, v5, v1}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 202
    return-void

    .line 206
    :cond_56
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createWallpaperAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    .line 207
    .local v1, "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$74uuXaM2TqjkzYi0b8LqJdbycxA;-><init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 234
    invoke-direct {p0, v3}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 235
    return-void

    .line 185
    .end local v0    # "appTargets":[Landroid/view/RemoteAnimationTarget;
    .end local v1    # "wallpaperTargets":[Landroid/view/RemoteAnimationTarget;
    :cond_6a
    :goto_6a
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_92

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v4, v1

    .local v4, "protoLogParam1":J
    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0xb921a83

    const/4 v7, 0x4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v3

    const-string/jumbo v2, "goodToGo(): Animation finished already, canceled=%s mPendingAnimations=%d"

    invoke-static {v1, v6, v7, v2, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":J
    :cond_92
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 189
    return-void
.end method

.method isAnimatingForSplitPairedTask()Z
    .registers 2

    .line 690
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mSplitPairedTaskRemoteRecord:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$createWallpaperAnimations$2$RemoteAnimationController(Lcom/android/server/wm/WallpaperAnimationAdapter;)V
    .registers 4
    .param p1, "adapter"    # Lcom/android/server/wm/WallpaperAnimationAdapter;

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 330
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingWallpaperAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 332
    return-void

    .line 331
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$goodToGo$1$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 8
    .param p1, "appTargets"    # [Landroid/view/RemoteAnimationTarget;
    .param p2, "wallpaperTargets"    # [Landroid/view/RemoteAnimationTarget;

    .line 211
    const-string v0, "WindowManager"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteAnimationController::onAnimationStart, animations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-interface {v1, p1, p2, v2}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    .line 228
    goto :goto_50

    .line 217
    :catch_25
    move-exception v1

    .line 218
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to start remote animation"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 221
    invoke-static {}, Lcom/android/server/wm/CoreLiveLog;->isPossible()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 223
    .local v2, "startTime":J
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_40
    if-ltz v0, :cond_50

    .line 224
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->setAnimationStartTime(J)V

    .line 223
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 229
    .end local v0    # "i":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "startTime":J
    :cond_50
    :goto_50
    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/server/protolog/ProtoLogImpl;->isEnabled(Lcom/android/server/protolog/common/IProtoLogGroup;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 230
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_REMOTE_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v1, -0x77f5446b

    const/4 v2, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    const-string/jumbo v4, "startAnimation(): Notify animation start:"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->writeStartDebugStatement()V

    .line 233
    :cond_6e
    return-void
.end method

.method public synthetic lambda$new$0$RemoteAnimationController()V
    .registers 2

    .line 83
    const-string/jumbo v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method
