.class public Lcom/android/server/wm/MultiWindowFoldController;
.super Ljava/lang/Object;
.source "MultiWindowFoldController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# static fields
.field private static final DEBUG:Z

.field private static final SAMSUNG_INCALL_UI_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.incallui"

.field private static final TAG:Ljava/lang/String; = "MultiWindowFoldController"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBeforeFoldingMultiSplitPrimaryTopTaskId:I

.field private final mCoverDisplayBounds:[Landroid/graphics/Rect;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mIsLidOpened:Z

.field private final mMainDisplayBounds:[Landroid/graphics/Rect;

.field private mNeedToResumeAfterLidChanged:Z

.field private mSupportMultiSplitInCoverDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/MultiWindowFoldController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 7
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    .line 47
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mBeforeFoldingMultiSplitPrimaryTopTaskId:I

    .line 50
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    .line 51
    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    .line 54
    iput-boolean v4, p0, Lcom/android/server/wm/MultiWindowFoldController;->mSupportMultiSplitInCoverDisplay:Z

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 63
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 64
    return-void
.end method

.method private findDialerTaskLocked(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "defaultDialerPackage"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 195
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$nnvHKIOYP2dgue2md8V4OgAI5Ms;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$nnvHKIOYP2dgue2md8V4OgAI5Ms;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$findDialerTaskLocked$1(Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 5
    .param p0, "defaultDialerPackage"    # Ljava/lang/String;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 196
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 197
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 198
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v2, "com.samsung.android.incallui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    if-eqz p0, :cond_22

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 201
    :cond_20
    const/4 v1, 0x1

    return v1

    .line 204
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$moveDialerTaskToFullscreenIfNeededLocked$0(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 179
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 180
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->onSplitScreenModeDismissed()V

    .line 182
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 183
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_23

    .line 184
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 185
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 187
    :cond_1d
    const-string/jumbo v2, "moveInCallTask"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 189
    :cond_23
    return-void
.end method

.method private moveDialerTaskToFullscreenIfNeededLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "defaultDialerPackage"    # Ljava/lang/String;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->findDialerTaskLocked(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 173
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 174
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_21

    .line 177
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$SpRNIwHNRBCNoDzr18oFNZ1Wz-w;

    invoke-direct {v3, v0}, Lcom/android/server/wm/-$$Lambda$MultiWindowFoldController$SpRNIwHNRBCNoDzr18oFNZ1Wz-w;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 190
    return v2

    .line 175
    :cond_21
    :goto_21
    const/4 v1, 0x0

    return v1
.end method

.method private setNeedToRestoreMultiSplit()V
    .registers 5

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mBeforeFoldingMultiSplitPrimaryTopTaskId:I

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 118
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    nop

    .line 119
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 120
    .local v1, "topMultiSplitPrimaryStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1d

    .line 121
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 122
    .local v2, "topTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_1d

    .line 123
    iget v3, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iput v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mBeforeFoldingMultiSplitPrimaryTopTaskId:I

    .line 126
    .end local v2    # "topTask":Lcom/android/server/wm/Task;
    :cond_1d
    return-void
.end method


# virtual methods
.method getBeforeFoldingMultiSplitPrimaryTopTaskId()I
    .registers 2

    .line 133
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mBeforeFoldingMultiSplitPrimaryTopTaskId:I

    return v0
.end method

.method getCoverDisplayBounds(Z)Landroid/graphics/Rect;
    .registers 4
    .param p1, "isPortait"    # Z

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b

    :cond_8
    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_b
    return-object v0
.end method

.method getMainDisplayBounds(Z)Landroid/graphics/Rect;
    .registers 4
    .param p1, "isPortait"    # Z

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b

    :cond_8
    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_b
    return-object v0
.end method

.method handleDialerTaskInFoldingActionFlagsLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "defaultDialerPackage"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->moveDialerTaskToFullscreenIfNeededLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mNeedToResumeAfterLidChanged:Z

    .line 169
    :cond_9
    return-void
.end method

.method public initialize()V
    .registers 1

    .line 68
    return-void
.end method

.method isLidOpened()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    return v0
.end method

.method isNeedToRestoreMultiSplit()Z
    .registers 3

    .line 129
    iget v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mBeforeFoldingMultiSplitPrimaryTopTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method notifyLidStateChanged(Z)V
    .registers 3
    .param p1, "opened"    # Z

    .line 75
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    if-eq v0, p1, :cond_6

    .line 76
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mIsLidOpened:Z

    .line 78
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowFoldController;->postLidStateChanged(Z)V

    .line 79
    return-void
.end method

.method onDisplayDeviceTypeChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 96
    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 97
    .local v0, "opened":Z
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayDeviceTypeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiWindowFoldController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz v0, :cond_2a

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->isNeedToRestoreMultiSplit()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 100
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowFoldController;->resetNeedToRestoreMultiSplit()V

    goto :goto_41

    .line 103
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 104
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_41

    .line 105
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 106
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowFoldController;->setNeedToRestoreMultiSplit()V

    .line 109
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_41
    :goto_41
    return-void
.end method

.method postLidStateChanged(Z)V
    .registers 4
    .param p1, "opened"    # Z

    .line 85
    if-nez p1, :cond_a

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    .line 93
    :cond_a
    return-void
.end method

.method resetNeedToRestoreMultiSplit()V
    .registers 2

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowFoldController;->mBeforeFoldingMultiSplitPrimaryTopTaskId:I

    .line 113
    return-void
.end method

.method updateCoverDisplayBounds(II)V
    .registers 9
    .param p1, "coverDisplayWidth"    # I
    .param p2, "coverDisplayHeight"    # I

    .line 147
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 148
    .local v2, "isPortrait":Z
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    .line 149
    if-eqz v2, :cond_f

    move v4, p1

    goto :goto_10

    :cond_f
    move v4, p2

    .line 150
    :goto_10
    if-eqz v2, :cond_14

    move v5, p2

    goto :goto_15

    :cond_14
    move v5, p1

    .line 148
    :goto_15
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mCoverDisplayBounds:[Landroid/graphics/Rect;

    aget-object v0, v3, v0

    .line 152
    if-eqz v2, :cond_20

    move v3, p2

    goto :goto_21

    :cond_20
    move v3, p1

    .line 153
    :goto_21
    if-eqz v2, :cond_25

    move v4, p1

    goto :goto_26

    :cond_25
    move v4, p2

    .line 151
    :goto_26
    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    return-void
.end method

.method updateMainDisplayBounds(II)V
    .registers 9
    .param p1, "mainDisplayWidth"    # I
    .param p2, "mainDisplayHeight"    # I

    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p1, p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 138
    .local v2, "isPortrait":Z
    :goto_7
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    .line 139
    if-eqz v2, :cond_f

    move v4, p1

    goto :goto_10

    :cond_f
    move v4, p2

    .line 140
    :goto_10
    if-eqz v2, :cond_14

    move v5, p2

    goto :goto_15

    :cond_14
    move v5, p1

    .line 138
    :goto_15
    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowFoldController;->mMainDisplayBounds:[Landroid/graphics/Rect;

    aget-object v0, v3, v0

    .line 142
    if-eqz v2, :cond_20

    move v3, p2

    goto :goto_21

    :cond_20
    move v3, p1

    .line 143
    :goto_21
    if-eqz v2, :cond_25

    move v4, p1

    goto :goto_26

    :cond_25
    move v4, p2

    .line 141
    :goto_26
    invoke-virtual {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    return-void
.end method
