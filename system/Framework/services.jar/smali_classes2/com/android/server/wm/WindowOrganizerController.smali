.class Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# static fields
.field static final CONTROLLABLE_CONFIGS:I = 0x20000c00

.field static final CONTROLLABLE_WINDOW_CONFIGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field private static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field private static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field private final mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field private final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 98
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0}, Lcom/android/server/wm/BLASTSyncEngine;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 100
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 101
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 102
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 103
    return-void
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 4
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "change"    # Landroid/window/WindowContainerTransaction$Change;

    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Z)I

    move-result v0

    return v0
.end method

.method private applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Z)I
    .registers 9
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "change"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "fromDisplayRotation"    # Z

    .line 369
    if-eqz p3, :cond_24

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 370
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 371
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isNonOrganizedHomeOrRecentsTask()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 376
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 383
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_24
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20000c00

    and-int/2addr v0, v1

    .line 384
    .local v0, "configMask":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 385
    .local v1, "windowMask":I
    const/4 v2, 0x0

    .line 386
    .local v2, "effects":I
    if-eqz v0, :cond_4d

    .line 387
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 388
    .local v3, "c":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 389
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->resizePinnedStackIfNeeded(Lcom/android/server/wm/ConfigurationContainer;IILandroid/content/res/Configuration;)V

    .line 393
    or-int/lit8 v2, v2, 0x1

    .line 395
    .end local v3    # "c":Landroid/content/res/Configuration;
    :cond_4d
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_61

    .line 396
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 397
    or-int/lit8 v2, v2, 0x2

    .line 401
    :cond_61
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    .line 402
    .local v3, "windowingMode":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_6b

    .line 403
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->setWindowingMode(I)V

    .line 405
    :cond_6b
    return v2
.end method

.method private applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 9
    .param p1, "tr"    # Lcom/android/server/wm/Task;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "effects":I
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 412
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    .line 413
    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 414
    const/4 v0, 0x2

    .line 418
    :cond_19
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v2

    .line 419
    .local v2, "childWindowingMode":I
    const/4 v3, -0x1

    if-le v2, v3, :cond_23

    .line 420
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    .line 423
    :cond_23
    if-eqz v1, :cond_28

    .line 424
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 427
    :cond_28
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 428
    .local v3, "enterPipBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_36

    .line 429
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v3, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;Z)V

    .line 432
    :cond_36
    return v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Z)I

    move-result v0

    return v0
.end method

.method private applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Z)I
    .registers 6
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "c"    # Landroid/window/WindowContainerTransaction$Change;
    .param p3, "fromDisplayRotation"    # Z

    .line 563
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Z)I

    move-result v0

    .line 567
    .local v0, "effects":I
    instance-of v1, p1, Lcom/android/server/wm/Task;

    if-eqz v1, :cond_14

    .line 568
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/2addr v0, v1

    .line 571
    :cond_14
    return v0
.end method

.method private enforceStackPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"    # Ljava/lang/String;

    .line 673
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method static synthetic lambda$applySyncTransaction$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/Task;)V
    .registers 4
    .param p0, "secondaryCnt"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 244
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    .line 245
    return-void

    .line 247
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 248
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 250
    :cond_11
    return-void
.end method

.method private resizePinnedStackIfNeeded(Lcom/android/server/wm/ConfigurationContainer;IILandroid/content/res/Configuration;)V
    .registers 8
    .param p1, "container"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "configMask"    # I
    .param p3, "windowMask"    # I
    .param p4, "config"    # Landroid/content/res/Configuration;

    .line 576
    instance-of v0, p1, Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_20

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_20

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_20

    .line 579
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 580
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 581
    iget-object v1, p4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;ZZ)V

    .line 585
    .end local v0    # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_20
    return-void
.end method

.method private sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;ZIZ)I
    .registers 18
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "hop"    # Landroid/window/WindowContainerTransaction$HierarchyOp;
    .param p3, "emptySecondary"    # Z
    .param p4, "adjTop"    # I
    .param p5, "enterSplit"    # Z

    .line 443
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 444
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_1a8

    .line 447
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 448
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    const-string v0, "WindowOrganizerController"

    const/4 v1, 0x0

    if-nez v7, :cond_24

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Container is no longer attached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v1

    .line 452
    :cond_24
    move-object v8, v6

    check-cast v8, Lcom/android/server/wm/ActivityStack;

    .line 454
    .local v8, "as":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v2

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    if-eqz v2, :cond_16b

    .line 455
    nop

    .line 456
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3e

    iget-boolean v2, v6, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_4a

    .line 457
    :cond_3e
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_4c

    :cond_4a
    move v2, v5

    goto :goto_4d

    :cond_4c
    move v2, v1

    :goto_4d
    move v9, v2

    .line 458
    .local v9, "isNonOrganizedRootableTask":Z
    if-eqz v9, :cond_163

    .line 459
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_58

    const/4 v2, 0x0

    goto :goto_64

    .line 460
    :cond_58
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_64
    move-object v10, v2

    .line 461
    .local v10, "newParent":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq v2, v10, :cond_138

    .line 462
    if-nez v10, :cond_9e

    .line 464
    nop

    .line 465
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already reparent to DefaultTaskDisplayArea "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v1

    .line 471
    :cond_91
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_160

    .line 472
    :cond_9e
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_cd

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 473
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v1

    .line 479
    :cond_cd
    if-eqz p5, :cond_ee

    .line 482
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 481
    invoke-static {v2}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip reparent split windowing mode task if enter split transaction. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return v1

    .line 487
    :cond_ee
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isSwap()Z

    move-result v11

    .line 488
    .local v11, "swap":Z
    if-nez p3, :cond_10d

    .line 489
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->toUnderTop()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 490
    move-object v1, v10

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 491
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    .line 490
    const-string/jumbo v5, "sanitizeAndApplyHierarchyOp"

    move-object v0, v6

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZZLjava/lang/String;)V

    goto :goto_137

    .line 493
    :cond_10d
    if-lez p4, :cond_122

    .line 494
    move-object v1, v10

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 495
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v0

    sub-int v2, v0, p4

    const/4 v3, 0x0

    .line 494
    const-string/jumbo v5, "sanitizeAndApplyHierarchyOp"

    move-object v0, v6

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZZLjava/lang/String;)V

    goto :goto_137

    .line 498
    :cond_122
    move-object v1, v10

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    .line 499
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_12d

    move v2, v3

    goto :goto_12e

    :cond_12d
    move v2, v4

    :goto_12e
    const/4 v3, 0x0

    .line 498
    const-string/jumbo v5, "sanitizeAndApplyHierarchyOp"

    move-object v0, v6

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/ActivityStack;IZZLjava/lang/String;)V

    .line 507
    .end local v11    # "swap":Z
    :goto_137
    goto :goto_160

    .line 510
    :cond_138
    if-eqz v10, :cond_13c

    move-object v0, v10

    goto :goto_140

    :cond_13c
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_140
    check-cast v0, Lcom/android/server/wm/ActivityStack;

    .line 511
    .local v0, "rootTask":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_159

    .line 514
    move-object v2, v6

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    const-string/jumbo v3, "hop"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_160

    .line 520
    :cond_159
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 523
    .end local v0    # "rootTask":Lcom/android/server/wm/ActivityStack;
    .end local v10    # "newParent":Lcom/android/server/wm/Task;
    :goto_160
    nop

    .line 526
    .end local v9    # "isNonOrganizedRootableTask":Z
    move-object v0, p0

    goto :goto_1a6

    .line 524
    .restart local v9    # "isNonOrganizedRootableTask":Z
    :cond_163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reparenting leaf Tasks is not supported now."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    .end local v9    # "isNonOrganizedRootableTask":Z
    :cond_16b
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_187

    .line 529
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 530
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_196

    .line 532
    :cond_17f
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/TaskDisplayArea;->positionStackAtBottom(Lcom/android/server/wm/ActivityStack;)V

    goto :goto_196

    .line 535
    :cond_187
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 536
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_192

    goto :goto_193

    :cond_192
    move v3, v4

    .line 535
    :goto_193
    invoke-virtual {v0, v3, v6, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 540
    :goto_196
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isFocus()Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 541
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    goto :goto_1a6

    .line 540
    :cond_1a5
    move-object v0, p0

    .line 545
    :goto_1a6
    const/4 v1, 0x2

    return v1

    .line 445
    .end local v7    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "as":Lcom/android/server/wm/ActivityStack;
    :cond_1a8
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid container in hierarchy op"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 549
    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-nez v0, :cond_11

    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 550
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid token in task or displayArea transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_11
    :goto_11
    return-void
.end method

.method private skipToApply(Landroid/window/WindowContainerTransaction;)Z
    .registers 3
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;->skipToApply(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "syncId"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)Z

    .line 614
    return-void
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 4
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;Z)I

    move-result v0

    return v0
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;Z)I
    .registers 28
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;
    .param p2, "callback"    # Landroid/window/IWindowContainerTransactionCallback;
    .param p3, "fromDisplayRotation"    # Z

    .line 120
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    const-string v0, "applySyncTransaction()"

    invoke-direct {v7, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 121
    const/4 v1, -0x1

    .line 122
    .local v1, "syncId":I
    if-eqz v8, :cond_3d1

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 128
    .local v11, "ident":J
    :try_start_14
    iget-object v13, v7, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_3cc

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 129
    const/4 v2, 0x0

    .line 133
    .local v2, "effects":I
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 v14, 0x1

    if-eqz v0, :cond_33

    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_33

    .line 134
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v3, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3, v14}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 149
    :cond_33
    if-eqz v9, :cond_3c

    .line 150
    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v0
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_3c6

    move v1, v0

    move v15, v1

    goto :goto_3d

    .line 149
    :cond_3c
    move v15, v1

    .line 152
    .end local v1    # "syncId":I
    .local v15, "syncId":I
    :goto_3d
    :try_start_3d
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3c3

    .line 156
    :try_start_42
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->skipToApply(Landroid/window/WindowContainerTransaction;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 157
    const-string v0, "WindowOrganizerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip old syncTransaction : #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getSyncTransactionId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_3b6

    .line 158
    nop

    .line 350
    :try_start_64
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 351
    if-ltz v15, :cond_6e

    .line 352
    invoke-virtual {v7, v15}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_6e
    monitor-exit v13
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_3c3

    .line 357
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    return v15

    .line 160
    :cond_76
    :try_start_76
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getReason()I

    move-result v0

    if-ne v0, v14, :cond_81

    .line 161
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->clearWaitingDismissSplit()V

    .line 164
    :cond_81
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 165
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    move-object v6, v0

    .line 166
    .local v6, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    if-nez v10, :cond_b8

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->hasSplitRotation()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 168
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation;->isWaitingForRemoteRotation()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 173
    iput-object v8, v6, Lcom/android/server/wm/DisplayRotation;->mSplitRotationTransaction:Landroid/window/WindowContainerTransaction;

    .line 174
    const-string v0, "WindowOrganizerController"

    const-string v1, "Pending split-rotate transaction, reason: remote_rotation"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_76 .. :try_end_a5} :catchall_3b6

    .line 175
    nop

    .line 350
    :try_start_a6
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 351
    if-ltz v15, :cond_b0

    .line 352
    invoke-virtual {v7, v15}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    :cond_b0
    monitor-exit v13
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_3c3

    .line 357
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    return v15

    .line 185
    :cond_b8
    :try_start_b8
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v0

    .line 186
    .local v5, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    nop

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_cb
    .catchall {:try_start_b8 .. :try_end_cb} :catchall_3b6

    .line 188
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_cb
    :try_start_cb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_3b2

    if-eqz v1, :cond_16e

    .line 189
    nop

    .line 190
    :try_start_d2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 193
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_101

    .line 194
    const-string v4, "WindowOrganizerController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v16, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    const-string v0, "Attempt to operate on detached container: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto :goto_149

    .line 198
    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_101
    move-object/from16 v16, v0

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asSplitPairTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_120

    .line 199
    const-string v0, "WindowOrganizerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attempt to operate on pair task: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    goto :goto_149

    .line 208
    :cond_120
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 209
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_14e

    .line 210
    const-string v0, "WindowOrganizerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attempt to enter pip transaction on split-task: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    nop

    .line 188
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_149
    move-object/from16 v0, v16

    const/4 v14, 0x1

    goto/16 :goto_cb

    .line 217
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_14e
    if-ltz v15, :cond_153

    .line 218
    invoke-virtual {v7, v15, v3}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 221
    :cond_153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v7, v3, v0, v10}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Z)I

    move-result v0

    .line 223
    .local v0, "containerEffect":I
    or-int/2addr v2, v0

    .line 226
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_169

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_169

    .line 228
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_169
    .catchall {:try_start_d2 .. :try_end_169} :catchall_3b6

    .line 230
    .end local v0    # "containerEffect":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_169
    move-object/from16 v0, v16

    const/4 v14, 0x1

    goto/16 :goto_cb

    .line 233
    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_16e
    move-object/from16 v16, v0

    .end local v0    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    const/4 v0, 0x1

    .line 234
    .local v0, "emptySecondary":Z
    const/4 v1, 0x0

    .line 236
    .local v1, "adjTop":I
    :try_start_172
    iget-object v3, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 237
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 238
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenSecondaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v4
    :try_end_183
    .catchall {:try_start_172 .. :try_end_183} :catchall_3b2

    move-object/from16 v17, v4

    .line 240
    .local v17, "rootSecondary":Lcom/android/server/wm/ActivityStack;
    if-eqz v17, :cond_190

    :try_start_187
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v4
    :try_end_18b
    .catchall {:try_start_187 .. :try_end_18b} :catchall_3b6

    if-nez v4, :cond_18e

    goto :goto_190

    :cond_18e
    move v4, v14

    goto :goto_191

    :cond_190
    :goto_190
    const/4 v4, 0x1

    .line 241
    .end local v0    # "emptySecondary":Z
    .local v4, "emptySecondary":Z
    :goto_191
    :try_start_191
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isEnterSplit()Z

    move-result v0

    if-eqz v0, :cond_1b9

    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 243
    .local v0, "secondaryCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v14, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_1a0
    .catchall {:try_start_191 .. :try_end_1a0} :catchall_3b2

    move/from16 v18, v1

    .end local v1    # "adjTop":I
    .local v18, "adjTop":I
    :try_start_1a2
    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowOrganizerController$Dawg8MTLsdl5wnqPHuvnDgun5Z4;

    invoke-direct {v1, v0}, Lcom/android/server/wm/-$$Lambda$WindowOrganizerController$Dawg8MTLsdl5wnqPHuvnDgun5Z4;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_1a7
    .catchall {:try_start_1a2 .. :try_end_1a7} :catchall_1b4

    move/from16 v19, v2

    const/4 v2, 0x1

    .end local v2    # "effects":I
    .local v19, "effects":I
    :try_start_1aa
    invoke-virtual {v14, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 251
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    move/from16 v18, v1

    .end local v18    # "adjTop":I
    .restart local v1    # "adjTop":I
    goto :goto_1bd

    .line 350
    .end local v0    # "secondaryCnt":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "adjTop":I
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "emptySecondary":Z
    .end local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .end local v17    # "rootSecondary":Lcom/android/server/wm/ActivityStack;
    .end local v19    # "effects":I
    .restart local v2    # "effects":I
    :catchall_1b4
    move-exception v0

    move/from16 v19, v2

    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    goto/16 :goto_3af

    .line 241
    .end local v19    # "effects":I
    .restart local v1    # "adjTop":I
    .restart local v2    # "effects":I
    .restart local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "emptySecondary":Z
    .restart local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .restart local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v17    # "rootSecondary":Lcom/android/server/wm/ActivityStack;
    :cond_1b9
    move/from16 v18, v1

    move/from16 v19, v2

    .line 260
    .end local v1    # "adjTop":I
    .end local v2    # "effects":I
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "rootSecondary":Lcom/android/server/wm/ActivityStack;
    .restart local v18    # "adjTop":I
    .restart local v19    # "effects":I
    :goto_1bd
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    .line 261
    .local v14, "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .local v2, "n":I
    :goto_1c8
    if-ge v0, v2, :cond_24a

    .line 262
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 263
    .local v3, "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 264
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v17

    if-nez v17, :cond_1fc

    .line 265
    move/from16 v17, v2

    .end local v2    # "n":I
    .local v17, "n":I
    const-string v2, "WindowOrganizerController"

    move-object/from16 v20, v5

    .end local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v20, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    .end local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .local v21, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    const-string v6, "Attempt to operate on detached container: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto :goto_21f

    .line 269
    .end local v17    # "n":I
    .end local v20    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v21    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .restart local v2    # "n":I
    .restart local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    :cond_1fc
    move/from16 v17, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    .end local v2    # "n":I
    .end local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .restart local v17    # "n":I
    .restart local v20    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v21    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asSplitPairTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_224

    .line 270
    const-string v2, "WindowOrganizerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt to operate on pair task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    nop

    .line 261
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    :goto_21f
    move-object/from16 v23, v20

    move-object/from16 v20, v21

    goto :goto_240

    .line 274
    .restart local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v3    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    :cond_224
    if-ltz v15, :cond_229

    .line 275
    invoke-virtual {v7, v15, v1}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 277
    :cond_229
    nop

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isEnterSplit()Z

    move-result v6

    .line 277
    move-object/from16 v22, v1

    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    .local v22, "wc":Lcom/android/server/wm/WindowContainer;
    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v23, v20

    .end local v20    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v23, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    move/from16 v5, v18

    move-object/from16 v20, v21

    .end local v21    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .local v20, "displayRotation":Lcom/android/server/wm/DisplayRotation;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;ZIZ)I

    move-result v1

    or-int v19, v19, v1

    .line 261
    .end local v3    # "hop":Landroid/window/WindowContainerTransaction$HierarchyOp;
    .end local v22    # "wc":Lcom/android/server/wm/WindowContainer;
    :goto_240
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v17

    move-object/from16 v6, v20

    move-object/from16 v5, v23

    goto/16 :goto_1c8

    .end local v17    # "n":I
    .end local v20    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v2    # "n":I
    .restart local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    :cond_24a
    move/from16 v17, v2

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    .line 286
    .end local v0    # "i":I
    .end local v2    # "n":I
    .end local v5    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v6    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .restart local v20    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    .line 287
    .end local v16    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :goto_25d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31b

    .line 288
    nop

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 291
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 292
    .local v5, "surfaceBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_315

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v6

    if-eqz v6, :cond_315

    if-nez v5, :cond_28d

    .line 293
    goto :goto_25d

    .line 296
    :cond_28d
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isPairTask()Z

    move-result v6

    if-eqz v6, :cond_2ac

    .line 297
    const-string v2, "WindowOrganizerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    const-string v0, "Attempt to operate on pair task: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    goto :goto_25d

    .line 301
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    :cond_2ac
    move-object/from16 v16, v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_2e4

    .line 303
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2c3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2c4

    :cond_2c3
    const/4 v0, 0x0

    .line 306
    .local v0, "parent":Lcom/android/server/wm/Task;
    :goto_2c4
    if-eqz v0, :cond_2cb

    iget-boolean v6, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v6, :cond_2cb

    goto :goto_2e4

    .line 307
    :cond_2cb
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "parent":Lcom/android/server/wm/Task;
    .local v17, "parent":Lcom/android/server/wm/Task;
    const-string v0, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v11    # "ident":J
    .end local v15    # "syncId":I
    .end local v19    # "effects":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p3    # "fromDisplayRotation":Z
    throw v2

    .line 311
    .end local v17    # "parent":Lcom/android/server/wm/Task;
    .restart local v11    # "ident":J
    .restart local v15    # "syncId":I
    .restart local v19    # "effects":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p3    # "fromDisplayRotation":Z
    :cond_2e4
    :goto_2e4
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 312
    .local v0, "sft":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 313
    .local v6, "sc":Landroid/view/SurfaceControl;
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v21, v1

    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v21, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    iget v1, v5, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v6, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 314
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_303

    .line 315
    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_30e

    .line 317
    :cond_303
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 319
    :goto_30e
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 320
    .end local v0    # "sft":Landroid/view/SurfaceControl$Transaction;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "surfaceBounds":Landroid/graphics/Rect;
    .end local v6    # "sc":Landroid/view/SurfaceControl;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    move-object/from16 v1, v21

    goto/16 :goto_25d

    .line 292
    .end local v21    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v5    # "surfaceBounds":Landroid/graphics/Rect;
    :cond_315
    move-object/from16 v16, v0

    move-object/from16 v21, v1

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .restart local v21    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    goto/16 :goto_25d

    .line 321
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v5    # "surfaceBounds":Landroid/graphics/Rect;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;"
    .end local v21    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_31b
    move-object/from16 v21, v1

    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    .restart local v21    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    and-int/lit8 v0, v19, 0x2

    if-eqz v0, :cond_32e

    .line 323
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    move-object/from16 v2, v23

    goto :goto_373

    .line 325
    :cond_32e
    and-int/lit8 v0, v19, 0x1

    if-eqz v0, :cond_371

    .line 326
    sget-object v0, Lcom/android/server/wm/-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1uR2GodW3-TXQGLlsV_nCi1hRIE;

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 328
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 329
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 326
    invoke-static {v0, v1, v2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0
    :try_end_348
    .catchall {:try_start_1aa .. :try_end_348} :catchall_3ae

    move-object v1, v0

    .line 331
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :try_start_349
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArraySet;->size()I

    move-result v0
    :try_end_34d
    .catchall {:try_start_349 .. :try_end_34d} :catchall_369

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_34f
    if-ltz v0, :cond_363

    .line 332
    move-object/from16 v2, v23

    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local v2, "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_353
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_35c
    .catchall {:try_start_353 .. :try_end_35c} :catchall_361

    .line 331
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v23, v2

    goto :goto_34f

    .line 335
    .end local v0    # "i":I
    :catchall_361
    move-exception v0

    goto :goto_36c

    .line 331
    .end local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v0    # "i":I
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_363
    move-object/from16 v2, v23

    .line 335
    .end local v0    # "i":I
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_365
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 336
    goto :goto_373

    .line 335
    .end local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :catchall_369
    move-exception v0

    move-object/from16 v2, v23

    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :goto_36c
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 336
    nop

    .end local v11    # "ident":J
    .end local v15    # "syncId":I
    .end local v19    # "effects":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p3    # "fromDisplayRotation":Z
    throw v0

    .line 325
    .end local v1    # "f":Lcom/android/internal/util/function/pooled/PooledConsumer;
    .end local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v11    # "ident":J
    .restart local v15    # "syncId":I
    .restart local v19    # "effects":I
    .restart local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p3    # "fromDisplayRotation":Z
    :cond_371
    move-object/from16 v2, v23

    .line 339
    .end local v23    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :goto_373
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 340
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 341
    .local v0, "transit":I
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v1

    if-eqz v1, :cond_38e

    .line 342
    iget-object v1, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 346
    :cond_38e
    and-int/lit8 v1, v19, 0x1

    if-nez v1, :cond_398

    .line 347
    iget-object v1, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_398
    .catchall {:try_start_365 .. :try_end_398} :catchall_3ae

    .line 350
    .end local v0    # "transit":I
    .end local v2    # "haveConfigChanges":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v4    # "emptySecondary":Z
    .end local v14    # "hops":Ljava/util/List;, "Ljava/util/List<Landroid/window/WindowContainerTransaction$HierarchyOp;>;"
    .end local v18    # "adjTop":I
    .end local v20    # "displayRotation":Lcom/android/server/wm/DisplayRotation;
    .end local v21    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$Change;>;>;"
    :cond_398
    :try_start_398
    iget-object v0, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 351
    if-ltz v15, :cond_3a2

    .line 352
    invoke-virtual {v7, v15}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 355
    .end local v19    # "effects":I
    :cond_3a2
    monitor-exit v13
    :try_end_3a3
    .catchall {:try_start_398 .. :try_end_3a3} :catchall_3c3

    :try_start_3a3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3a6
    .catchall {:try_start_3a3 .. :try_end_3a6} :catchall_3ab

    .line 357
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    nop

    .line 359
    return v15

    .line 357
    :catchall_3ab
    move-exception v0

    move v1, v15

    goto :goto_3cd

    .line 350
    .restart local v19    # "effects":I
    :catchall_3ae
    move-exception v0

    :goto_3af
    move/from16 v2, v19

    goto :goto_3b7

    .end local v19    # "effects":I
    .local v2, "effects":I
    :catchall_3b2
    move-exception v0

    move/from16 v19, v2

    .end local v2    # "effects":I
    .restart local v19    # "effects":I
    goto :goto_3b7

    .end local v19    # "effects":I
    .restart local v2    # "effects":I
    :catchall_3b6
    move-exception v0

    :goto_3b7
    :try_start_3b7
    iget-object v1, v7, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 351
    if-ltz v15, :cond_3c1

    .line 352
    invoke-virtual {v7, v15}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 354
    :cond_3c1
    nop

    .end local v11    # "ident":J
    .end local v15    # "syncId":I
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p3    # "fromDisplayRotation":Z
    throw v0
    :try_end_3c3
    .catchall {:try_start_3b7 .. :try_end_3c3} :catchall_3c3

    .line 355
    .end local v2    # "effects":I
    .restart local v11    # "ident":J
    .restart local v15    # "syncId":I
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p3    # "fromDisplayRotation":Z
    :catchall_3c3
    move-exception v0

    move v1, v15

    goto :goto_3c7

    .end local v15    # "syncId":I
    .local v1, "syncId":I
    :catchall_3c6
    move-exception v0

    :goto_3c7
    :try_start_3c7
    monitor-exit v13
    :try_end_3c8
    .catchall {:try_start_3c7 .. :try_end_3c8} :catchall_3c6

    :try_start_3c8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1    # "syncId":I
    .end local v11    # "ident":J
    .end local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .end local p1    # "t":Landroid/window/WindowContainerTransaction;
    .end local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .end local p3    # "fromDisplayRotation":Z
    throw v0
    :try_end_3cc
    .catchall {:try_start_3c8 .. :try_end_3cc} :catchall_3cc

    .line 357
    .restart local v1    # "syncId":I
    .restart local v11    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/WindowOrganizerController;
    .restart local p1    # "t":Landroid/window/WindowContainerTransaction;
    .restart local p2    # "callback":Landroid/window/IWindowContainerTransactionCallback;
    .restart local p3    # "fromDisplayRotation":Z
    :catchall_3cc
    move-exception v0

    :goto_3cd
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 358
    throw v0

    .line 123
    .end local v11    # "ident":J
    :cond_3d1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null transaction passed to applySyncTransaction"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 3
    .param p1, "t"    # Landroid/window/WindowContainerTransaction;

    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowOrganizerController;->applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I

    .line 108
    return-void
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .registers 2

    .line 595
    const-string v0, "getDisplayAreaOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object v0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .registers 2

    .line 589
    const-string/jumbo v0, "getTaskOrganizerController()"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceStackPermission(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object v0
.end method

.method public onTransactionReady(ILjava/util/Set;)V
    .registers 7
    .param p1, "mSyncId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p2, "windowContainersReady":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 621
    .local v0, "callback":Landroid/window/IWindowContainerTransactionCallback;
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 622
    .local v1, "mergedTransaction":Landroid/view/SurfaceControl$Transaction;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 623
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->mergeBlastSyncTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 624
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    goto :goto_15

    .line 627
    :cond_25
    :try_start_25
    invoke-interface {v0, p1, v1}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    .line 632
    goto :goto_2d

    .line 628
    :catch_29
    move-exception v2

    .line 631
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 634
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2d
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method setSyncReady(I)V
    .registers 3
    .param p1, "id"    # I

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    .line 609
    return-void
.end method

.method startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 5
    .param p1, "callback"    # Landroid/window/IWindowContainerTransactionCallback;

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mBLASTSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I

    move-result v0

    .line 602
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return v0
.end method

.method public takeScreenshot(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)Z
    .registers 11
    .param p1, "token"    # Landroid/window/WindowContainerToken;
    .param p2, "outSurfaceControl"    # Landroid/view/SurfaceControl;

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "takeScreenshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 641
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_97

    .line 645
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 646
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 647
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 648
    nop

    .line 649
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 648
    invoke-static {v3, v1, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v3

    .line 651
    .local v3, "buffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v3, :cond_96

    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    if-nez v4, :cond_36

    goto :goto_96

    .line 655
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceControlFactory:Ljava/util/function/Function;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - Organizer Screenshot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 657
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v5, -0x3

    .line 658
    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 659
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 660
    const-string v5, "WindowOrganizerController.takeScreenshot"

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 661
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 663
    .local v2, "screenshot":Landroid/view/SurfaceControl;
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 664
    .local v6, "surface":Landroid/view/Surface;
    invoke-virtual {v6, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 665
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 666
    invoke-virtual {v6}, Landroid/view/Surface;->release()V

    .line 668
    invoke-virtual {p2, v2, v5}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    .line 669
    const/4 v4, 0x1

    return v4

    .line 652
    .end local v2    # "screenshot":Landroid/view/SurfaceControl;
    .end local v6    # "surface":Landroid/view/Surface;
    :cond_96
    :goto_96
    return v2

    .line 642
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "buffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_97
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid token in screenshot transaction"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
