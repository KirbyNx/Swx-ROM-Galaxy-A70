.class public Lcom/android/server/wm/AppPairController;
.super Ljava/lang/Object;
.source "AppPairController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppPairController$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppPairController"


# instance fields
.field private final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mDeferEnsureConfig:Z

.field private mDeferredDetachSplitScreenPrimaryStack:Z

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mH:Lcom/android/server/wm/AppPairController$H;

.field private mLaunchingPairActivities:Z

.field private mNeedOnlyLayoutChange:Z

.field private mPrevPairTask:Lcom/android/server/wm/PairTask;

.field private mRequestedAppPairCount:I

.field private mSplitScreenCreateMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mLaunchingPairActivities:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferredDetachSplitScreenPrimaryStack:Z

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/AppPairController;->mSplitScreenCreateMode:I

    .line 86
    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferEnsureConfig:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mNeedOnlyLayoutChange:Z

    .line 90
    iput v0, p0, Lcom/android/server/wm/AppPairController;->mRequestedAppPairCount:I

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 97
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppPairController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppPairController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppPairController;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private detachSplitScreenPrimaryStackIfNeededLocked()V
    .registers 3

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferredDetachSplitScreenPrimaryStack:Z

    if-eqz v0, :cond_1e

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 116
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootSplitScreenPrimaryTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 117
    .local v0, "splitScreenPrimaryStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->hasChild()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 118
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->removeIfPossible()V

    .line 120
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppPairController;->mDeferredDetachSplitScreenPrimaryStack:Z

    .line 122
    .end local v0    # "splitScreenPrimaryStack":Lcom/android/server/wm/ActivityStack;
    :cond_1e
    return-void
.end method

.method private getSpecificTargetDockedBounds(ILandroid/graphics/Rect;)V
    .registers 24
    .param p1, "type"    # I
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 256
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, v0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 257
    .local v3, "res":Landroid/content/res/Resources;
    nop

    .line 258
    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v4

    .line 257
    invoke-static {v3, v4}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v17

    .line 259
    .local v17, "dividerSize":I
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v15, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 260
    .local v15, "displayWidth":I
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v14, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 261
    .local v14, "displayHeight":I
    const/4 v13, 0x1

    if-ge v15, v14, :cond_2e

    const/4 v12, 0x2

    goto :goto_2f

    :cond_2e
    move v12, v13

    .line 263
    .local v12, "dockSide":I
    :goto_2f
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 264
    .local v4, "rotation":I
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v10, v5, Landroid/content/res/Configuration;->orientation:I

    .line 265
    .local v10, "orientation":I
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget-object v9, v5, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 267
    .local v9, "displayCutout":Landroid/view/DisplayCutout;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v5

    move v6, v4

    move v7, v15

    move v8, v14

    move-object/from16 v18, v9

    .end local v9    # "displayCutout":Landroid/view/DisplayCutout;
    .local v18, "displayCutout":Landroid/view/DisplayCutout;
    move v11, v10

    .end local v10    # "orientation":I
    .local v11, "orientation":I
    move-object/from16 v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 268
    new-instance v19, Lcom/android/internal/policy/DividerSnapAlgorithm;

    if-ne v11, v13, :cond_56

    move v9, v13

    goto :goto_58

    :cond_56
    const/4 v5, 0x0

    move v9, v5

    :goto_58
    move/from16 v20, v4

    .end local v4    # "rotation":I
    .local v20, "rotation":I
    move-object/from16 v4, v19

    move-object v5, v3

    move v6, v15

    move v7, v14

    move/from16 v8, v17

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 271
    .local v4, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    const/4 v5, 0x0

    .line 273
    .local v5, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    if-eqz v1, :cond_79

    if-eq v1, v13, :cond_74

    const/4 v6, 0x2

    if-eq v1, v6, :cond_6f

    goto :goto_7e

    .line 281
    :cond_6f
    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    .line 282
    goto :goto_7e

    .line 278
    :cond_74
    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    .line 279
    goto :goto_7e

    .line 275
    :cond_79
    invoke-virtual {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v5

    .line 276
    nop

    .line 288
    :goto_7e
    iget v6, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    move v7, v11

    .end local v11    # "orientation":I
    .local v7, "orientation":I
    move v11, v6

    move-object/from16 v13, p2

    move v6, v14

    .end local v14    # "displayHeight":I
    .local v6, "displayHeight":I
    move v14, v15

    move v8, v15

    .end local v15    # "displayWidth":I
    .local v8, "displayWidth":I
    move v15, v6

    move/from16 v16, v17

    invoke-static/range {v11 .. v16}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 290
    return-void
.end method

.method static synthetic lambda$adjustIntentInStartSplitScreenMode$6(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 6
    .param p0, "e1"    # Lcom/android/server/wm/Task;
    .param p1, "e2"    # Lcom/android/server/wm/Task;

    .line 480
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$adjustStartPairIntentsForSplit$5(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)I
    .registers 6
    .param p0, "e1"    # Lcom/android/server/wm/Task;
    .param p1, "e2"    # Lcom/android/server/wm/Task;

    .line 393
    iget-wide v0, p1, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastGainFocusTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$clearPairActivityModeLocked$3(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 314
    if-eqz p0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1f

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 316
    invoke-virtual {v0}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPairWindowingMode(I)V

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    .line 321
    :cond_1f
    return-void
.end method

.method private static synthetic lambda$postStartPairActivities$0(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$postStartPairActivities$1(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static synthetic lambda$postStartPairActivities$2(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 183
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method adjustIntentInStartSplitScreenMode(ILandroid/content/Intent;I)V
    .registers 11
    .param p1, "taskId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callingUid"    # I

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v4

    .line 468
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 470
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_78

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_78

    .line 471
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "aliasTargetName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 474
    return-void

    .line 476
    :cond_2b
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 477
    .local v2, "resolvedPkg":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v4, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 479
    invoke-virtual {p2}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v5

    .line 478
    invoke-virtual {v4, v2, v5, v3}, Lcom/android/server/wm/MultiTaskingController;->findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 480
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppPairController$BnHog4wqJa53mwSk5Tc23thJWw0;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 481
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_45
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_74

    .line 482
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 483
    .local v5, "reuseCandidate":Lcom/android/server/wm/Task;
    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v6, p1, :cond_56

    .line 484
    goto :goto_71

    .line 486
    :cond_56
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 488
    iget v6, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 489
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    .line 491
    return-void

    .line 481
    .end local v5    # "reuseCandidate":Lcom/android/server/wm/Task;
    :cond_71
    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 494
    .end local v4    # "i":I
    :cond_74
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    .line 496
    .end local v1    # "aliasTargetName":Ljava/lang/String;
    .end local v2    # "resolvedPkg":Ljava/lang/String;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_78
    return-void
.end method

.method adjustStartPairIntentsForSplit([Landroid/content/Intent;ILcom/android/server/wm/SafeActivityOptions;)Z
    .registers 26
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 334
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    array-length v0, v2

    new-array v3, v0, [Lcom/android/server/wm/ActivityStack;

    .line 335
    .local v3, "splitStacks":[Lcom/android/server/wm/ActivityStack;
    array-length v0, v2

    new-array v4, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 336
    .local v4, "splitRootActivities":[Lcom/android/server/wm/ActivityRecord;
    array-length v0, v2

    iput v0, v1, Lcom/android/server/wm/AppPairController;->mRequestedAppPairCount:I

    .line 338
    array-length v0, v2

    new-array v5, v0, [I

    .line 339
    .local v5, "windowingmode":[I
    const/4 v0, 0x3

    const/4 v6, 0x0

    aput v0, v5, v6

    .line 340
    const/4 v7, 0x1

    const/4 v0, 0x4

    aput v0, v5, v7

    .line 341
    array-length v8, v5

    const/4 v9, 0x2

    if-le v8, v9, :cond_20

    .line 342
    const/16 v8, 0xc

    aput v8, v5, v9

    .line 345
    :cond_20
    iget-object v8, v1, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 346
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_27
    array-length v11, v3

    const/4 v12, 0x0

    if-ge v10, v11, :cond_5f

    .line 347
    iget-object v11, v1, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v11}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    aget v13, v5, v10

    .line 348
    invoke-virtual {v11, v13}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    aput-object v11, v3, v10

    .line 350
    aget-object v11, v3, v10

    if-eqz v11, :cond_4d

    aget-object v11, v3, v10

    invoke-virtual {v11, v12}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 351
    aget-object v11, v3, v10

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v12

    :cond_4d
    move-object v11, v12

    .line 352
    .local v11, "task":Lcom/android/server/wm/Task;
    if-eqz v11, :cond_5c

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_5c

    .line 353
    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    aput-object v12, v4, v10

    .line 346
    .end local v11    # "task":Lcom/android/server/wm/Task;
    :cond_5c
    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    .line 356
    .end local v10    # "i":I
    :cond_5f
    monitor-exit v8
    :try_end_60
    .catchall {:try_start_23 .. :try_end_60} :catchall_1f4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 358
    const/4 v8, 0x0

    .line 359
    .local v8, "keepCnt":I
    const/4 v10, 0x0

    .line 360
    .local v10, "aliasCnt":I
    array-length v11, v2

    new-array v11, v11, [Ljava/lang/String;

    .line 361
    .local v11, "resolvedPkg":[Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v13, "reuseTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6e
    array-length v15, v2

    if-ge v14, v15, :cond_d5

    .line 365
    iget-object v15, v1, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    aget-object v17, v2, v14

    const/16 v18, 0x0

    aget-object v16, v2, v14

    .line 366
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v19

    const/16 v20, 0x0

    .line 365
    move-object/from16 v16, v15

    move/from16 v21, p2

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 368
    .local v15, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_cf

    iget-object v6, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_cf

    .line 369
    iget-object v6, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.samsung.android.multiwindow.activity.alias.targetactivity"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "aliasTargetName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 372
    goto :goto_cf

    .line 374
    :cond_a4
    add-int/lit8 v10, v10, 0x1

    .line 375
    iget-object v6, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v6, v11, v14

    .line 376
    aget-object v6, v4, v14

    if-eqz v6, :cond_cf

    aget-object v6, v4, v14

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    aget-object v9, v11, v14

    .line 377
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cf

    .line 378
    aget-object v6, v4, v14

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    aput-object v12, v2, v14

    .line 380
    add-int/lit8 v8, v8, 0x1

    .line 364
    .end local v0    # "aliasTargetName":Ljava/lang/String;
    .end local v15    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_cf
    :goto_cf
    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x4

    const/4 v6, 0x0

    const/4 v9, 0x2

    goto :goto_6e

    .line 386
    .end local v14    # "i":I
    :cond_d5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d6
    array-length v6, v2

    if-ge v0, v6, :cond_1a1

    .line 387
    aget-object v6, v2, v0

    if-eqz v6, :cond_19b

    aget-object v6, v11, v0

    if-nez v6, :cond_e4

    .line 388
    const/4 v15, 0x4

    goto/16 :goto_19c

    .line 390
    :cond_e4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    iget-object v9, v1, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    aget-object v12, v11, v0

    aget-object v14, v2, v0

    .line 392
    invoke-virtual {v14}, Landroid/content/Intent;->getPairActivityUserId()I

    move-result v14

    .line 391
    invoke-virtual {v9, v12, v14, v6}, Lcom/android/server/wm/MultiTaskingController;->findAliasManagedTaskInPackage(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 393
    sget-object v9, Lcom/android/server/wm/-$$Lambda$AppPairController$bjW3gDGcEQRPkpIjq1-EiG-qpyg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppPairController$bjW3gDGcEQRPkpIjq1-EiG-qpyg;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 394
    const/4 v9, 0x0

    .line 395
    .local v9, "reuseCandidate":Lcom/android/server/wm/Task;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v7

    .local v12, "j":I
    :goto_103
    if-ltz v12, :cond_139

    .line 396
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    .line 397
    .local v14, "t":Lcom/android/server/wm/Task;
    iget v15, v14, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11b

    .line 398
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 399
    goto :goto_136

    .line 402
    :cond_11b
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_136

    .line 403
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    invoke-static {v15}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v15

    if-nez v15, :cond_131

    .line 404
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    if-ne v15, v7, :cond_136

    .line 405
    :cond_131
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    move-object v9, v14

    .line 407
    goto :goto_139

    .line 395
    .end local v14    # "t":Lcom/android/server/wm/Task;
    :cond_136
    :goto_136
    add-int/lit8 v12, v12, -0x1

    goto :goto_103

    .line 410
    .end local v12    # "j":I
    :cond_139
    :goto_139
    if-nez v9, :cond_16d

    .line 411
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_13c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v12, v14, :cond_16b

    .line 412
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/Task;

    .line 414
    .restart local v14    # "t":Lcom/android/server/wm/Task;
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    const/4 v7, 0x5

    if-ne v15, v7, :cond_166

    .line 415
    move-object v9, v14

    .line 418
    array-length v7, v5

    const/4 v15, 0x2

    if-le v7, v15, :cond_164

    aget v7, v5, v0

    const/4 v15, 0x4

    if-ne v7, v15, :cond_16e

    .line 420
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result v7

    if-eqz v7, :cond_16e

    .line 421
    const/4 v7, 0x1

    invoke-virtual {v9, v7}, Lcom/android/server/wm/Task;->setForceResumeWhilePause(Z)V

    goto :goto_16e

    .line 418
    :cond_164
    const/4 v15, 0x4

    goto :goto_16e

    .line 414
    :cond_166
    const/4 v15, 0x4

    .line 411
    .end local v14    # "t":Lcom/android/server/wm/Task;
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_13c

    :cond_16b
    const/4 v15, 0x4

    goto :goto_16e

    .line 410
    .end local v12    # "j":I
    :cond_16d
    const/4 v15, 0x4

    .line 427
    :cond_16e
    :goto_16e
    if-nez v9, :cond_177

    .line 429
    aget-object v7, v2, v0

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    goto :goto_19c

    .line 432
    :cond_177
    aget-object v7, v2, v0

    iget v12, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setLaunchTaskIdForAliasManagedTarget(I)V

    .line 433
    aget-object v7, v2, v0

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 434
    aget-object v7, v2, v0

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setStartedAsWindowTypeLauncher(Z)V

    .line 435
    iget v7, v9, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19c

    .line 387
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v9    # "reuseCandidate":Lcom/android/server/wm/Task;
    :cond_19b
    const/4 v15, 0x4

    .line 386
    :goto_19c
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x1

    goto/16 :goto_d6

    .line 439
    .end local v0    # "i":I
    :cond_1a1
    array-length v0, v2

    if-ne v10, v0, :cond_1ec

    const/4 v6, 0x0

    aget-object v0, v11, v6

    const/4 v6, 0x1

    aget-object v7, v11, v6

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 441
    :try_start_1b0
    iget-object v0, v1, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_1b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b0 .. :try_end_1b8} :catch_1e9

    const/4 v7, 0x0

    :try_start_1b9
    aget-object v9, v11, v7
    :try_end_1bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b9 .. :try_end_1bb} :catch_1e7

    const/16 v7, 0x80

    .line 442
    :try_start_1bd
    invoke-virtual {v0, v9, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 443
    .local v0, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1e5

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_1e5

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.multiwindow.support.pair.shortcut"
    :try_end_1cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1bd .. :try_end_1cb} :catch_1e9

    .line 444
    const/4 v12, 0x0

    :try_start_1cc
    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7
    :try_end_1d0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1cc .. :try_end_1d0} :catch_1e2

    if-nez v7, :cond_1e0

    .line 445
    :try_start_1d2
    iget-object v7, v1, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    iget-object v9, v1, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Lcom/android/server/wm/AppPairController$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/AppPairController$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_1de
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d2 .. :try_end_1de} :catch_1e9

    .line 446
    const/4 v7, 0x0

    return v7

    .line 444
    :cond_1e0
    const/4 v7, 0x0

    goto :goto_1e6

    .line 448
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1e2
    move-exception v0

    move v7, v12

    goto :goto_1ee

    .line 443
    .restart local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1e5
    const/4 v7, 0x0

    .line 449
    .end local v0    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1e6
    goto :goto_1ee

    .line 448
    :catch_1e7
    move-exception v0

    goto :goto_1ee

    :catch_1e9
    move-exception v0

    const/4 v7, 0x0

    goto :goto_1ee

    .line 439
    :cond_1ec
    const/4 v6, 0x1

    :cond_1ed
    const/4 v7, 0x0

    .line 464
    :goto_1ee
    array-length v0, v2

    if-eq v8, v0, :cond_1f2

    goto :goto_1f3

    :cond_1f2
    move v6, v7

    :goto_1f3
    return v6

    .line 356
    .end local v8    # "keepCnt":I
    .end local v10    # "aliasCnt":I
    .end local v11    # "resolvedPkg":[Ljava/lang/String;
    .end local v13    # "reuseTaskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1f4
    move-exception v0

    :try_start_1f5
    monitor-exit v8
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method clearAllPairActivityModeLocked()V
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 326
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppPairController$-BpFdj2Rxhu81bykksPxK_sfSfI;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppPairController$-BpFdj2Rxhu81bykksPxK_sfSfI;-><init>(Lcom/android/server/wm/AppPairController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 329
    return-void
.end method

.method clearPairActivityModeLocked(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 313
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppPairController$tqKgwm90ZH85uEenMv1tzsZJQ-0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppPairController$tqKgwm90ZH85uEenMv1tzsZJQ-0;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 322
    return-void
.end method

.method continueEnsureConfig()V
    .registers 2

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferEnsureConfig:Z

    .line 247
    return-void
.end method

.method deferDetachSplitScreenPrimaryStackLocked()V
    .registers 2

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferredDetachSplitScreenPrimaryStack:Z

    .line 107
    return-void
.end method

.method deferEnsureConfig()V
    .registers 2

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferEnsureConfig:Z

    .line 243
    return-void
.end method

.method getLaunchStack(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Landroid/content/Intent;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    .line 294
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Landroid/content/Intent;->getPairWindowingMode()I

    move-result v0

    goto :goto_8

    .line 295
    :cond_7
    const/4 v0, 0x0

    :goto_8
    nop

    .line 296
    .local v0, "pairWindowingMode":I
    if-eqz v0, :cond_50

    .line 297
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 299
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v1, :cond_3d

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch stack for app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", on windowingMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppPairController"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_3d
    if-nez p4, :cond_43

    .line 304
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    .line 306
    :cond_43
    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 307
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p4, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 309
    :cond_50
    const/4 v1, 0x0

    return-object v1
.end method

.method getSplitScreenCreateMode()I
    .registers 2

    .line 502
    iget v0, p0, Lcom/android/server/wm/AppPairController;->mSplitScreenCreateMode:I

    return v0
.end method

.method getTopPairPackageNamesLocked()Ljava/lang/String;
    .registers 7

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 522
    .local v0, "primaryStackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 524
    .local v1, "secondaryStackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 526
    .local v2, "cellStackInfo":Landroid/app/ActivityManager$StackInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v3, "packageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2b

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2b

    .line 528
    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_2b
    if-eqz v1, :cond_3a

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_3a

    .line 531
    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_3a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_43

    .line 538
    const/4 v4, 0x0

    return-object v4

    .line 541
    :cond_43
    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public initialize()V
    .registers 3

    .line 102
    new-instance v0, Lcom/android/server/wm/AppPairController$H;

    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AppPairController$H;-><init>(Lcom/android/server/wm/AppPairController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    .line 103
    return-void
.end method

.method isEnsureConfigDeferred()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mDeferEnsureConfig:Z

    return v0
.end method

.method isLaunchingPairActivitiesLocked()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mLaunchingPairActivities:Z

    return v0
.end method

.method public synthetic lambda$clearAllPairActivityModeLocked$4$AppPairController(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppPairController;->clearPairActivityModeLocked(Lcom/android/server/wm/Task;)V

    .line 328
    return-void
.end method

.method postStartPairActivities([Landroid/content/Intent;)V
    .registers 7
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 222
    invoke-direct {p0}, Lcom/android/server/wm/AppPairController;->detachSplitScreenPrimaryStackIfNeededLocked()V

    .line 223
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 229
    iput-boolean v4, p0, Lcom/android/server/wm/AppPairController;->mLaunchingPairActivities:Z

    .line 230
    iput v4, p0, Lcom/android/server/wm/AppPairController;->mRequestedAppPairCount:I

    .line 232
    iput-boolean v4, p0, Lcom/android/server/wm/AppPairController;->mNeedOnlyLayoutChange:Z

    .line 234
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppPairController$H;->removeMessages(I)V

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    iget-object v2, p0, Lcom/android/server/wm/AppPairController;->mH:Lcom/android/server/wm/AppPairController$H;

    invoke-virtual {v2, v3, p1}, Lcom/android/server/wm/AppPairController$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/AppPairController$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 237
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 238
    return-void

    .line 237
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method preStartPairActivities(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "aOptions"    # Landroid/app/ActivityOptions;

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppPairController;->preStartPairActivities(Landroid/app/ActivityOptions;Z)V

    .line 126
    return-void
.end method

.method preStartPairActivities(Landroid/app/ActivityOptions;Z)V
    .registers 5
    .param p1, "aOptions"    # Landroid/app/ActivityOptions;
    .param p2, "useFreezeDisplay"    # Z

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AppPairController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 130
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppPairController;->mLaunchingPairActivities:Z

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/AppPairController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 170
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 171
    return-void

    .line 170
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method sendPairLoggingLocked()V
    .registers 3

    .line 544
    invoke-virtual {p0}, Lcom/android/server/wm/AppPairController;->getTopPairPackageNamesLocked()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "packageNameList":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 546
    const-string v1, "1004"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_b
    return-void
.end method

.method sendPairWithDirectionLoggingLocked(Z)V
    .registers 4
    .param p1, "isHorizontal"    # Z

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/AppPairController;->getTopPairPackageNamesLocked()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "packageNameList":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 554
    if-eqz p1, :cond_e

    .line 555
    const-string v1, "1034"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 559
    :cond_e
    const-string v1, "1035"

    invoke-static {v1, v0}, Lcom/samsung/android/core/CoreSALogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_13
    :goto_13
    return-void
.end method

.method setSplitScreenCreateMode(I)V
    .registers 2
    .param p1, "splitScreenCreateMode"    # I

    .line 506
    iput p1, p0, Lcom/android/server/wm/AppPairController;->mSplitScreenCreateMode:I

    .line 507
    return-void
.end method

.method shouldChangeOnlyLayout()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lcom/android/server/wm/AppPairController;->mNeedOnlyLayoutChange:Z

    return v0
.end method

.method unsetSplitScreenCreateMode()V
    .registers 2

    .line 510
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppPairController;->mSplitScreenCreateMode:I

    .line 511
    return-void
.end method
