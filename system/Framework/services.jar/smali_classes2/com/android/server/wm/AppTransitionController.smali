.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 96
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 100
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 101
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 102
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 16
    .param p3, "transit"    # I
    .param p4, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;I",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 581
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_6a

    .line 582
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_6a

    .line 586
    :cond_11
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v0

    .line 588
    .local v0, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v9

    .line 591
    .local v9, "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 592
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 593
    move-object v1, p0

    move-object v2, v0

    move-object v3, v9

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->createSplitPairedTaskAnimationAdapterIfPossible(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 596
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 597
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 598
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    move-object v2, v0

    move-object v3, v9

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/RecentsAnimationController;->addPairTaskToTargetsIfPossible(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 603
    :cond_44
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v9

    move-object v4, p2

    move v5, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 605
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 615
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 617
    .local v1, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    if-eqz v1, :cond_69

    .line 618
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 619
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 618
    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(II)V

    .line 621
    :cond_69
    return-void

    .line 583
    .end local v0    # "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .end local v1    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v9    # "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    :cond_6a
    :goto_6a
    return-void
.end method

.method private applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V
    .registers 20
    .param p3, "transit"    # I
    .param p4, "visible"    # Z
    .param p5, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;IZ",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 436
    .local p1, "wcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move-object v0, p0

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 437
    .local v1, "wcsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_59

    .line 438
    move-object v3, p1

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 443
    .local v4, "wc":Lcom/android/server/wm/WindowContainer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    .line 444
    .local v11, "transitioningDescendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_16
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_2f

    .line 445
    move-object v12, p2

    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 446
    .local v6, "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 447
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v6    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_2f
    move-object v12, p2

    .line 450
    .end local v5    # "j":I
    move-object v5, v4

    move-object/from16 v6, p5

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 452
    iget-object v5, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object v5, v4, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 453
    invoke-virtual {v5}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v5

    if-nez v5, :cond_56

    .line 456
    iget-object v5, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 437
    .end local v4    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "transitioningDescendants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_59
    move-object v3, p1

    move-object v12, p2

    .line 460
    .end local v2    # "i":I
    return-void
.end method

.method private canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1012
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_18

    .line 1013
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1014
    return v1

    .line 1012
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1017
    .end local v0    # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private static collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 375
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 376
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_21

    .line 377
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 376
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 379
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_27
    if-ltz v1, :cond_3d

    .line 380
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 382
    .end local v1    # "i":I
    :cond_3d
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_43
    if-ltz v1, :cond_59

    .line 383
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v1, v1, -0x1

    goto :goto_43

    .line 385
    .end local v1    # "i":I
    :cond_59
    return-object v0
.end method

.method private containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 413
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_16

    .line 414
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v2, :cond_13

    .line 415
    return v1

    .line 413
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 418
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private createSplitPairedTaskAnimationAdapterIfPossible(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 18
    .param p3, "transit"    # I
    .param p4, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p5, "voiceInteraction"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;I",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    .line 1082
    .local p1, "openingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "closingWcs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    move-object v0, p0

    const/4 v1, 0x0

    .line 1083
    .local v1, "isClosingSplitPrimaryTask":Z
    const/4 v2, 0x0

    .line 1085
    .local v2, "isOpeningSplitPrimaryTask":Z
    const/4 v3, 0x0

    .line 1086
    .local v3, "splitPairedTask":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1087
    .local v5, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_1b

    .line 1088
    goto :goto_8

    .line 1090
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_2d

    if-nez v3, :cond_2d

    .line 1091
    const/4 v2, 0x1

    .line 1092
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v3

    .line 1093
    goto :goto_2e

    .line 1095
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_2d
    goto :goto_8

    .line 1097
    :cond_2e
    :goto_2e
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1098
    .restart local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_45

    .line 1099
    goto :goto_32

    .line 1101
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->inSplitScreenPrimaryWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_57

    if-nez v3, :cond_57

    .line 1102
    const/4 v1, 0x1

    .line 1103
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getPairTask()Lcom/android/server/wm/PairTask;

    move-result-object v3

    .line 1104
    goto :goto_58

    .line 1106
    .end local v5    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_57
    goto :goto_32

    .line 1108
    :cond_58
    :goto_58
    if-eqz v3, :cond_a3

    if-nez v2, :cond_5e

    if-eqz v1, :cond_a3

    .line 1110
    :cond_5e
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-nez v4, :cond_73

    .line 1112
    iget-object v4, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    const v6, 0x7fffffff

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 1115
    :cond_73
    const/4 v11, 0x0

    move-object v6, v3

    move-object/from16 v7, p4

    move v8, p3

    move v9, v2

    move/from16 v10, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Task;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 1117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAnimations:[SplitRecents] failed, remove paired task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WindowManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v4, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 1123
    :cond_a3
    return-void
.end method

.method private findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p1, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 349
    .local p2, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 350
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 351
    .local v1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 354
    .local v2, "changingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v3, Lcom/android/server/wm/-$$Lambda$AppTransitionController$U1CJpdBYVC6LV6hQsmRN5cY5wug;

    invoke-direct {v3, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$U1CJpdBYVC6LV6hQsmRN5cY5wug;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 357
    .local v3, "result":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_1c

    .line 358
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    return-object v4

    .line 360
    :cond_1c
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$ZU-2ppbyGJ7-UsXREbcW1x9TJH0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$ZU-2ppbyGJ7-UsXREbcW1x9TJH0;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 362
    if-eqz v3, :cond_25

    .line 363
    return-object v3

    .line 365
    :cond_25
    sget-object v4, Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppTransitionController$MLGcpsl7wG4wujLw_9OublmY0XE;

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    return-object v4
.end method

.method private static getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;
    .registers 3
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 298
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 299
    .local v1, "mainWindow":Lcom/android/server/wm/WindowState;
    :goto_9
    if-eqz v1, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_d
    return-object v0
.end method

.method static getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .registers 20
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 476
    .local p0, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v0, p2

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 477
    .local v1, "candidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    if-eqz v0, :cond_c

    move-object/from16 v2, p0

    goto :goto_e

    :cond_c
    move-object/from16 v2, p1

    .line 478
    .local v2, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v3, v4, :cond_53

    .line 479
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 480
    .local v4, "app":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 481
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-boolean v9, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v9, :cond_50

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v10

    .local v10, "protoLogParam1":Z
    const/4 v11, 0x0

    .local v11, "protoLogParam2":Z
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v13, 0x754ced9f

    const/16 v14, 0x3c

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v9, v15, v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v15, v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v15, v5

    invoke-static {v12, v13, v14, v6, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    .end local v4    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":Z
    .end local v11    # "protoLogParam2":Z
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 488
    .end local v3    # "i":I
    :cond_53
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sHierarchicalAnimations:Z

    if-nez v3, :cond_5d

    .line 489
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v3

    .line 492
    :cond_5d
    if-eqz v0, :cond_62

    move-object/from16 v3, p1

    goto :goto_64

    :cond_62
    move-object/from16 v3, p0

    .line 495
    .local v3, "otherApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_64
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 496
    .local v4, "otherAncestors":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6a
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v9, v10, :cond_83

    .line 497
    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    :goto_76
    if-eqz v10, :cond_80

    .line 498
    invoke-virtual {v4, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    goto :goto_76

    .line 496
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_80
    add-int/lit8 v9, v9, 0x1

    goto :goto_6a

    .line 503
    .end local v9    # "i":I
    :cond_83
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 504
    .local v9, "targets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v10, "siblings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    :goto_8d
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e0

    .line 506
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowContainer;

    .line 507
    .local v11, "current":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    .line 508
    .local v12, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 509
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const/4 v13, 0x1

    .line 512
    .local v13, "canPromote":Z
    if-eqz v12, :cond_d5

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v14

    if-nez v14, :cond_ad

    goto :goto_d5

    .line 527
    :cond_ad
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b4

    .line 528
    const/4 v13, 0x0

    .line 547
    :cond_b4
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_b5
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_d6

    .line 548
    invoke-virtual {v12, v14}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v15

    .line 549
    .local v15, "sibling":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c9

    .line 550
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    .line 551
    :cond_c9
    if-eq v15, v11, :cond_d2

    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_d2

    .line 552
    const/4 v13, 0x0

    .line 547
    .end local v15    # "sibling":Lcom/android/server/wm/WindowContainer;
    :cond_d2
    :goto_d2
    add-int/lit8 v14, v14, 0x1

    goto :goto_b5

    .line 513
    .end local v14    # "j":I
    :cond_d5
    :goto_d5
    const/4 v13, 0x0

    .line 557
    :cond_d6
    if-eqz v13, :cond_dc

    .line 558
    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 560
    :cond_dc
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 562
    .end local v11    # "current":Lcom/android/server/wm/WindowContainer;
    .end local v12    # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v13    # "canPromote":Z
    :goto_df
    goto :goto_8d

    .line 563
    :cond_e0
    sget-boolean v11, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz v11, :cond_fa

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/server/wm/ProtoLogGroup;

    const v14, 0x57116af2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v7

    aput-object v12, v5, v8

    invoke-static {v13, v14, v7, v6, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 565
    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Ljava/lang/String;
    :cond_fa
    return-object v9
.end method

.method static getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2
    .param p0, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 339
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_13

    .line 340
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 339
    :goto_13
    return-object v0
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p2, "ignoreInvisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1031
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/wm/WindowContainer;>;"
    const/high16 v0, -0x80000000

    .line 1032
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 1033
    .local v1, "topApp":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_2b

    .line 1034
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1035
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_28

    if-eqz p2, :cond_20

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_20

    .line 1036
    goto :goto_28

    .line 1038
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getPrefixOrderIndex()I

    move-result v4

    .line 1039
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_28

    .line 1040
    move v0, v4

    .line 1041
    move-object v1, v3

    .line 1033
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "prefixOrderIndex":I
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1044
    .end local v2    # "i":I
    :cond_2b
    return-object v1
.end method

.method private handleChangingApps(I)V
    .registers 12
    .param p1, "transit"    # I

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 694
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 695
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_4f

    .line 696
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 697
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v6, 0xb2054f0

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 698
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_28
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 701
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 702
    .local v4, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_4c

    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 703
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 705
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v3    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 710
    .end local v2    # "i":I
    :cond_4f
    return-void
.end method

.method private handleClosingApps()V
    .registers 12

    .line 667
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 668
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 670
    .local v1, "appsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_4d

    .line 671
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 672
    .local v3, "app":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x2f5c2e52

    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v7, v8, v6, v9, v10}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 674
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    :cond_28
    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 675
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 679
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 682
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_3d

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_3d

    .line 683
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 686
    :cond_3d
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 687
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    .line 670
    .end local v3    # "app":Lcom/android/server/wm/ActivityRecord;
    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 690
    .end local v2    # "i":I
    :cond_4d
    return-void
.end method

.method private handleNonAppWindowsInTransition(II)V
    .registers 9
    .param p1, "transit"    # I
    .param p2, "flags"    # I

    .line 713
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_33

    .line 714
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_33

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_33

    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_33

    .line 717
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 719
    .local v3, "anim":Landroid/view/animation/Animation;
    if-eqz v3, :cond_33

    .line 720
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 721
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    .line 725
    .end local v3    # "anim":Landroid/view/animation/Animation;
    :cond_33
    const/16 v3, 0x15

    if-eq p1, v0, :cond_39

    if-ne p1, v3, :cond_4f

    .line 727
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_3f

    move v3, v2

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_46

    move v4, v2

    goto :goto_47

    :cond_46
    move v4, v1

    :goto_47
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_4c

    move v1, v2

    :cond_4c
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    .line 732
    :cond_4f
    return-void
.end method

.method private handleOpeningApps()V
    .registers 14

    .line 624
    const-string v0, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string/jumbo v1, "handleAppTransitionReady"

    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 625
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 627
    .local v3, "appsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v3, :cond_9a

    .line 628
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 629
    .local v5, "app":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v6, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2d

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v10, 0x610e94b5

    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v6, v12, v7

    invoke-static {v9, v10, v7, v11, v12}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 631
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v5, v8, v7}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 637
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v8}, Lcom/android/server/wm/ActivityRecord;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    .line 639
    .local v6, "wc":Lcom/android/server/wm/WindowContainer;
    if-eqz v6, :cond_41

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getAnimationSources()Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4a

    .line 643
    :cond_41
    iget-object v8, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_4a
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 646
    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->waitingToShow:Z

    .line 647
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v8, "WindowManager"

    if-eqz v7, :cond_5a

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_5a
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 651
    :try_start_5f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_8c

    .line 653
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 654
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v7, :cond_6e

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_6e
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 659
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_89

    .line 660
    :cond_7c
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 661
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachCrossProfileAppsThumbnailAnimation()V

    .line 627
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_89
    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 653
    .restart local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :catchall_8c
    move-exception v7

    iget-object v9, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 654
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_99

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_99
    throw v7

    .line 664
    .end local v4    # "i":I
    .end local v5    # "app":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_9a
    return-void
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$2(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "transit"    # I
    .param p1, "activityTypes"    # Landroid/util/ArraySet;
    .param p2, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 355
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 356
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 355
    :goto_13
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 361
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$findAnimLayoutParamsToken$4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/ActivityRecord;

    .line 366
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$handleAppTransitionReady$0(Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "openingApps"    # Landroid/util/ArraySet;
    .param p1, "additionalApps"    # Landroid/util/ArraySet;
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 217
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 218
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 219
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 220
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_15
    return-void
.end method

.method private static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 391
    .local p0, "array1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p1, "array2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "array3":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowContainer;>;"
    .local p3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 392
    .local v0, "array2base":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 393
    .local v1, "array3base":I
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 394
    .local v2, "count":I
    const/high16 v3, -0x80000000

    .line 395
    .local v3, "bestPrefixOrderIndex":I
    const/4 v4, 0x0

    .line 396
    .local v4, "bestToken":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_12
    if-ge v5, v2, :cond_48

    .line 397
    if-ge v5, v0, :cond_1d

    .line 398
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    .line 399
    :cond_1d
    if-ge v5, v1, :cond_28

    .line 400
    sub-int v6, v5, v0

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    .line 401
    :cond_28
    sub-int v6, v5, v1

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    :goto_30
    nop

    .line 402
    .local v6, "wtoken":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v7

    .line 403
    .local v7, "prefixOrderIndex":I
    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 404
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_45

    invoke-interface {p3, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    if-le v7, v3, :cond_45

    .line 405
    move v3, v7

    .line 406
    move-object v4, v8

    .line 396
    .end local v6    # "wtoken":Lcom/android/server/wm/WindowContainer;
    .end local v7    # "prefixOrderIndex":I
    .end local v8    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 409
    .end local v5    # "i":I
    :cond_48
    return-object v4
.end method

.method private maybeUpdateTransitToWallpaper(IZZ)I
    .registers 24
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z

    .line 834
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v1, :cond_173

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_173

    const/16 v2, 0x13

    if-eq v1, v2, :cond_173

    .line 836
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto/16 :goto_173

    .line 840
    :cond_16
    iget-object v2, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 841
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3b

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-nez v5, :cond_39

    const/16 v5, 0x8

    if-eq v1, v5, :cond_31

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3b

    :cond_31
    iget-object v5, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 846
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_39
    move v5, v3

    goto :goto_3c

    :cond_3b
    move v5, v4

    .line 850
    .local v5, "showWallpaper":Z
    :goto_3c
    iget-object v6, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v6

    if-nez v6, :cond_49

    if-nez v5, :cond_47

    goto :goto_49

    .line 852
    :cond_47
    move-object v6, v2

    goto :goto_4a

    .line 851
    :cond_49
    :goto_49
    const/4 v6, 0x0

    .line 852
    :goto_4a
    nop

    .line 853
    .local v6, "oldWallpaper":Lcom/android/server/wm/WindowState;
    iget-object v8, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 854
    .local v8, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 855
    .local v9, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v10, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v0, v10, v4}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 857
    .local v10, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v11, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v0, v11, v3}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 860
    .local v11, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {v0, v8}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v12

    .line 861
    .local v12, "openingCanBeWallpaperTarget":Z
    sget-boolean v13, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v13, :cond_9a

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam0":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam1":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "protoLogParam2":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "protoLogParam3":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v13, v3, v4

    const/16 v17, 0x1

    aput-object v14, v3, v17

    const/16 v19, 0x2

    aput-object v15, v3, v19

    const/16 v19, 0x3

    aput-object v16, v3, v19

    move/from16 v19, v5

    move-object/from16 v18, v13

    const v5, -0x1626a379

    const/4 v13, 0x0

    .end local v5    # "showWallpaper":Z
    .end local v13    # "protoLogParam0":Ljava/lang/String;
    .local v18, "protoLogParam0":Ljava/lang/String;
    .local v19, "showWallpaper":Z
    invoke-static {v7, v5, v4, v13, v3}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9c

    .end local v14    # "protoLogParam1":Ljava/lang/String;
    .end local v15    # "protoLogParam2":Ljava/lang/String;
    .end local v16    # "protoLogParam3":Ljava/lang/String;
    .end local v18    # "protoLogParam0":Ljava/lang/String;
    .end local v19    # "showWallpaper":Z
    .restart local v5    # "showWallpaper":Z
    :cond_9a
    move/from16 v19, v5

    .line 865
    .end local v5    # "showWallpaper":Z
    .restart local v19    # "showWallpaper":Z
    :goto_9c
    const v3, -0x7bb6801

    if-eqz v12, :cond_c0

    const/16 v5, 0x14

    if-ne v1, v5, :cond_c0

    .line 866
    const/16 v1, 0x15

    .line 867
    .end local p1    # "transit":I
    .local v1, "transit":I
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_172

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v4

    const/4 v14, 0x0

    invoke-static {v7, v3, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 868
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    goto/16 :goto_172

    .line 872
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :cond_c0
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v5

    if-nez v5, :cond_172

    .line 873
    if-eqz p3, :cond_fd

    if-eqz p2, :cond_fd

    .line 874
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_da

    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0x6042b19

    const/4 v13, 0x0

    move-object v14, v13

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v5, v7, v4, v13, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 875
    :cond_da
    packed-switch v1, :pswitch_data_174

    goto :goto_e4

    .line 884
    :pswitch_de
    const/16 v1, 0xf

    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    goto :goto_e4

    .line 879
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :pswitch_e1
    const/16 v1, 0xe

    .line 880
    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    nop

    .line 887
    :goto_e4
    sget-boolean v5, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v5, :cond_172

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v4

    const/4 v14, 0x0

    invoke-static {v7, v3, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 888
    .end local v5    # "protoLogParam0":Ljava/lang/String;
    goto/16 :goto_172

    .line 889
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :cond_fd
    if-eqz v6, :cond_13a

    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13a

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 890
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13a

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 891
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v11, v3, :cond_13a

    .line 894
    const/16 v1, 0xc

    .line 895
    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_172

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x3e41e81f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v4

    const/4 v14, 0x0

    invoke-static {v5, v7, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 897
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    goto :goto_172

    .line 898
    .end local v1    # "transit":I
    .restart local p1    # "transit":I
    :cond_13a
    if-eqz v2, :cond_172

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_172

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 899
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_172

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v10, v3, :cond_172

    const/16 v3, 0x19

    if-eq v1, v3, :cond_172

    const/16 v3, 0x18

    if-eq v1, v3, :cond_172

    .line 907
    const/16 v1, 0xd

    .line 908
    .end local p1    # "transit":I
    .restart local v1    # "transit":I
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_172

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v7, -0x2f49806f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v4

    const/4 v14, 0x0

    invoke-static {v5, v7, v4, v14, v13}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 912
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_172
    :goto_172
    return v1

    .line 837
    .end local v1    # "transit":I
    .end local v2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .end local v6    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v9    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v10    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v11    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "openingCanBeWallpaperTarget":Z
    .end local v19    # "showWallpaper":Z
    .restart local p1    # "transit":I
    :cond_173
    :goto_173
    return v1

    :pswitch_data_174
    .packed-switch 0x6
        :pswitch_e1
        :pswitch_de
        :pswitch_e1
        :pswitch_de
        :pswitch_e1
        :pswitch_de
    .end packed-switch
.end method

.method private overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V
    .registers 6
    .param p1, "animLpActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/16 v0, 0x1a

    if-ne p2, v0, :cond_5

    .line 325
    return-void

    .line 327
    :cond_5
    if-nez p1, :cond_8

    .line 328
    return-void

    .line 330
    :cond_8
    nop

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    .line 332
    .local v0, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v0, :cond_18

    .line 333
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 336
    :cond_18
    return-void
.end method

.method private transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 736
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/wm/WindowContainer;>;"
    .local p2, "outReasons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/wm/WindowContainer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    int-to-long v9, v3

    .local v9, "protoLogParam0":J
    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .local v3, "protoLogParam1":Z
    iget-object v11, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v11

    .local v11, "protoLogParam2":Z
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v13, 0x79ee0313

    const/16 v14, 0x3d

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-static {v12, v13, v14, v6, v15}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 740
    .end local v3    # "protoLogParam1":Z
    .end local v9    # "protoLogParam0":J
    .end local v11    # "protoLogParam2":Z
    :cond_3e
    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 741
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 743
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v9

    if-nez v9, :cond_199

    .line 751
    if-eqz v3, :cond_78

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_78

    iget-object v9, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 752
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayRotation;->needsUpdate()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 753
    sget-boolean v4, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v4, :cond_77

    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, 0x2572bb7a

    move-object v7, v6

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 755
    :cond_77
    return v8

    .line 757
    :cond_78
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_79
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v10

    if-ge v9, v10, :cond_134

    .line 758
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowContainer;

    .line 759
    .local v10, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-static {v10}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 772
    .local v11, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v11, :cond_90

    .line 773
    move/from16 v19, v4

    move v4, v5

    goto/16 :goto_128

    .line 776
    :cond_90
    iget-object v12, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v12, v12, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    if-ne v12, v1, :cond_a3

    iget-object v12, v10, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 778
    invoke-virtual {v12}, Lcom/android/server/wm/SurfaceFreezer;->isClosingChangeTransitMode()Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 779
    move/from16 v19, v4

    move v4, v5

    goto/16 :goto_128

    .line 782
    :cond_a3
    sget-boolean v12, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v12, :cond_ee

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    iget-boolean v14, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .local v14, "protoLogParam1":Z
    iget-boolean v15, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    .local v15, "protoLogParam2":Z
    iget-boolean v6, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .local v6, "protoLogParam3":Z
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v17

    .local v17, "protoLogParam4":Z
    iget-object v13, v11, Lcom/android/server/wm/ActivityRecord;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam5":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v8

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    aput-object v21, v5, v7

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v20, 0x2

    aput-object v21, v5, v20

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v19, 0x3

    aput-object v21, v5, v19

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/16 v18, 0x4

    aput-object v21, v5, v18

    const/16 v21, 0x5

    aput-object v13, v5, v21

    const/4 v1, 0x0

    const v7, 0x11488da1

    const/16 v8, 0x3fc

    invoke-static {v4, v7, v8, v1, v5}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f2

    .end local v6    # "protoLogParam3":Z
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam5":Ljava/lang/String;
    .end local v14    # "protoLogParam1":Z
    .end local v15    # "protoLogParam2":Z
    .end local v17    # "protoLogParam4":Z
    :cond_ee
    move/from16 v19, v4

    const/16 v18, 0x4

    .line 790
    :goto_f2
    iget-boolean v1, v11, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v1, :cond_fe

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_fe

    const/4 v1, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v1, 0x0

    .line 791
    .local v1, "allDrawn":Z
    :goto_ff
    if-nez v1, :cond_10b

    iget-boolean v4, v11, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v4, :cond_10b

    iget-boolean v4, v11, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v4, :cond_10b

    .line 792
    const/4 v4, 0x0

    return v4

    .line 794
    :cond_10b
    if-eqz v1, :cond_116

    .line 795
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_128

    .line 797
    :cond_116
    const/4 v4, 0x2

    .line 798
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v5, v5, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v5, :cond_11f

    .line 799
    const/4 v13, 0x1

    goto :goto_121

    .line 800
    :cond_11f
    move/from16 v13, v18

    .line 798
    :goto_121
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 797
    invoke-virtual {v2, v11, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .end local v1    # "allDrawn":Z
    .end local v10    # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v11    # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_128
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move v5, v4

    move/from16 v4, v19

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_79

    .line 805
    .end local v9    # "i":I
    :cond_134
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v1

    if-eqz v1, :cond_152

    .line 806
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_150

    sget-object v1, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v4, -0x3c25e891

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_151

    :cond_150
    const/4 v7, 0x0

    .line 807
    :goto_151
    return v7

    .line 810
    :cond_152
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v1

    if-nez v1, :cond_17e

    .line 811
    sget-boolean v1, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_17c

    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x1698204e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v8, v6}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17d

    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_17c
    const/4 v7, 0x0

    .line 813
    :goto_17d
    return v7

    .line 817
    :cond_17e
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    if-eqz v1, :cond_191

    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 818
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v1

    if-eqz v1, :cond_18f

    goto :goto_191

    :cond_18f
    const/4 v4, 0x0

    goto :goto_192

    :cond_191
    :goto_191
    const/4 v4, 0x1

    :goto_192
    move v1, v4

    .line 819
    .local v1, "wallpaperReady":Z
    if-eqz v1, :cond_197

    .line 820
    const/4 v4, 0x1

    return v4

    .line 822
    :cond_197
    const/4 v4, 0x0

    return v4

    .line 824
    .end local v1    # "wallpaperReady":Z
    :cond_199
    move v4, v7

    return v4
.end method


# virtual methods
.method getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .registers 6
    .param p1, "container"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    .line 304
    .local p3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    .line 305
    .local v0, "definition":Landroid/view/RemoteAnimationDefinition;
    if-eqz v0, :cond_d

    .line 306
    invoke-virtual {v0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 307
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_d

    .line 308
    return-object v1

    .line 311
    .end local v1    # "adapter":Landroid/view/RemoteAnimationAdapter;
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-nez v1, :cond_13

    .line 312
    const/4 v1, 0x0

    return-object v1

    .line 314
    :cond_13
    invoke-virtual {v1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    return-object v1
.end method

.method handleAppTransitionReady()V
    .registers 23

    .line 112
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 113
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 114
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_2cb

    .line 118
    :cond_21
    const-wide/16 v8, 0x20

    const-string v0, "AppTransitionReady"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 120
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v2, 0xf3d8ebc

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_39
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 122
    .local v10, "appTransition":Lcom/android/server/wm/AppTransition;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 123
    .local v0, "transit":I
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    if-eqz v2, :cond_4e

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 124
    const/4 v0, -0x1

    .line 126
    :cond_4e
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v1, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 127
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 129
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 131
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v1, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 133
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 134
    .local v2, "appCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_69
    if-ge v3, v2, :cond_7b

    .line 139
    iget-object v4, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 141
    .end local v3    # "i":I
    :cond_7b
    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 142
    .end local v2    # "appCount":I
    .local v11, "appCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_84
    if-ge v2, v11, :cond_a7

    .line 144
    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 145
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 144
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 146
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_a4

    .line 148
    iget-object v4, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 149
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a1

    goto :goto_a4

    .line 154
    :cond_a1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    .line 142
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_a4
    :goto_a4
    add-int/lit8 v2, v2, 0x1

    goto :goto_84

    .line 162
    .end local v2    # "i":I
    :cond_a7
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V

    .line 167
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_ba

    const/4 v2, 0x1

    goto :goto_bb

    :cond_ba
    move v2, v1

    :goto_bb
    move v13, v2

    .line 168
    .local v13, "hasWallpaperTarget":Z
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v7, v2}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_ca

    if-eqz v13, :cond_ca

    const/4 v2, 0x1

    goto :goto_cb

    :cond_ca
    move v2, v1

    :goto_cb
    move v14, v2

    .line 170
    .local v14, "openingAppHasWallpaper":Z
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {v7, v2}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_da

    if-eqz v13, :cond_da

    const/4 v2, 0x1

    goto :goto_db

    :cond_da
    move v2, v1

    :goto_db
    move v15, v2

    .line 173
    .local v15, "closingAppHasWallpaper":Z
    invoke-virtual {v7, v0}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToTranslucentAnim(I)I

    move-result v0

    .line 174
    invoke-direct {v7, v0, v14, v15}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToWallpaper(IZZ)I

    move-result v0

    .line 177
    if-nez v14, :cond_ec

    .line 182
    invoke-virtual {v7, v0}, Lcom/android/server/wm/AppTransitionController;->maybeUpdateTransitToHomeTaskClose(I)I

    move-result v0

    move v5, v0

    goto :goto_ed

    .line 177
    :cond_ec
    move v5, v0

    .line 190
    .end local v0    # "transit":I
    .local v5, "transit":I
    :goto_ed
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    iget-object v3, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-static {v0, v2, v3}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v4

    .line 192
    .local v4, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-direct {v7, v5, v4}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 193
    .local v3, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 194
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 195
    .local v2, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 196
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 197
    .local v6, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 198
    invoke-direct {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 199
    .local v8, "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 200
    .local v9, "animLp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v7, v3, v5, v4}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V

    .line 202
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_134

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 203
    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_135

    :cond_134
    const/4 v1, 0x1

    :cond_135
    move-object v12, v6

    .end local v6    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .local v12, "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    move v6, v1

    .line 206
    .local v6, "voiceInteraction":Z
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 209
    :try_start_13e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z
    :try_end_140
    .catchall {:try_start_13e .. :try_end_140} :catchall_2b8

    if-eqz v1, :cond_1ca

    :try_start_142
    invoke-static {v5}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v1

    if-eqz v1, :cond_1ca

    .line 212
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 213
    .local v1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v17, v16

    .line 214
    .local v17, "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_157
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/ActivityRecord;
    :try_end_163
    .catchall {:try_start_142 .. :try_end_163} :catchall_1bd

    move-object/from16 v19, v18

    .line 215
    .local v19, "opening":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v0, v19

    move-object/from16 v19, v2

    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v0, "opening":Lcom/android/server/wm/ActivityRecord;
    .local v19, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    :try_start_169
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mIsPopOver:Z

    if-eqz v2, :cond_18a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_18a

    .line 216
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2
    :try_end_177
    .catchall {:try_start_169 .. :try_end_177} :catchall_197

    move-object/from16 v20, v0

    .end local v0    # "opening":Lcom/android/server/wm/ActivityRecord;
    .local v20, "opening":Lcom/android/server/wm/ActivityRecord;
    :try_start_179
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;
    :try_end_17b
    .catchall {:try_start_179 .. :try_end_17b} :catchall_186

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    .end local v17    # "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local v3, "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local v21, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :try_start_17f
    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$r-swbqenftogMPWUl7z152DhSlI;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_190

    .line 259
    .end local v1    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v20    # "opening":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_186
    move-exception v0

    move-object/from16 v21, v3

    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1b0

    .line 215
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0    # "opening":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_18a
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    .line 224
    .end local v0    # "opening":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local v3, "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_190
    move-object/from16 v17, v3

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    goto :goto_157

    .line 259
    .end local v1    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_197
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v11, v19

    move-object/from16 v19, v4

    move v13, v5

    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_2c3

    .line 225
    .end local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v1    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v17    # "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_1a5
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v17    # "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local v3, "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V
    :try_end_1ae
    .catchall {:try_start_17f .. :try_end_1ae} :catchall_1af

    goto :goto_1ce

    .line 259
    .end local v1    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3    # "additionalApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_1af
    move-exception v0

    :goto_1b0
    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v11, v19

    move-object/from16 v17, v21

    move-object/from16 v19, v4

    move v13, v5

    goto/16 :goto_2c3

    .end local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v3, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_1bd
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v16, v11

    move/from16 v20, v13

    move-object v11, v2

    move v13, v5

    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_2c3

    .line 209
    .end local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_1ca
    move-object/from16 v19, v2

    move-object/from16 v21, v3

    .line 228
    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_1ce
    :try_start_1ce
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;
    :try_end_1d6
    .catchall {:try_start_1ce .. :try_end_1d6} :catchall_2ab

    move-object/from16 v1, p0

    move/from16 v16, v11

    move-object/from16 v11, v19

    .end local v19    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v11, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v16, "appCount":I
    move-object/from16 v17, v21

    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .local v17, "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v19, v4

    .end local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local v19, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move v4, v5

    move/from16 v20, v13

    move v13, v5

    .end local v5    # "transit":I
    .local v13, "transit":I
    .local v20, "hasWallpaperTarget":Z
    move-object v5, v9

    :try_start_1e5
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps()V

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps()V

    .line 232
    invoke-direct {v7, v13}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(I)V

    .line 234
    invoke-virtual {v10, v13, v11, v12, v8}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 238
    if-eqz v12, :cond_216

    if-eqz v11, :cond_216

    .line 240
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    if-eqz v0, :cond_204

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    if-nez v0, :cond_216

    .line 241
    :cond_204
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    .line 242
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->clearDimAnimation(Landroid/view/SurfaceControl$Transaction;)V

    .line 243
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->mDimAnimInfo:Lcom/android/server/wm/WindowContainer$DimAnimInfo;

    .line 244
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer$DimAnimInfo;->clearDimAnimation(Landroid/view/SurfaceControl$Transaction;)V

    .line 252
    :cond_216
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    .line 253
    .local v0, "flags":I
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v10, v13, v11, v1}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;)I

    move-result v1

    .line 255
    .local v1, "layoutRedo":I
    invoke-direct {v7, v13, v0}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 256
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 257
    invoke-virtual {v10}, Lcom/android/server/wm/AppTransition;->clear()V
    :try_end_22b
    .catchall {:try_start_1e5 .. :try_end_22b} :catchall_2a9

    .line 259
    .end local v0    # "flags":I
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 260
    nop

    .line 262
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 266
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/FreeformWindowController;->clearMinimizeAnimState(Landroid/util/ArraySet;)V

    .line 267
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFreeformWindowController:Lcom/android/server/wm/FreeformWindowController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/FreeformWindowController;->clearMinimizeAnimState(Landroid/util/ArraySet;)V

    .line 271
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 272
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 273
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 274
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 278
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 280
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 282
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    .line 285
    const/16 v0, 0x1c

    if-ne v13, v0, :cond_298

    .line 286
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransitionController$Il9FDC2f46RW4ytag0fRFWl_8WQ;

    invoke-direct {v2, v7}, Lcom/android/server/wm/-$$Lambda$AppTransitionController$Il9FDC2f46RW4ytag0fRFWl_8WQ;-><init>(Lcom/android/server/wm/AppTransitionController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 291
    :cond_298
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 293
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v3, v1, 0x1

    or-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 295
    return-void

    .line 259
    .end local v1    # "layoutRedo":I
    :catchall_2a9
    move-exception v0

    goto :goto_2c3

    .end local v16    # "appCount":I
    .end local v17    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v20    # "hasWallpaperTarget":Z
    .restart local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "transit":I
    .local v11, "appCount":I
    .local v13, "hasWallpaperTarget":Z
    .local v19, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_2ab
    move-exception v0

    move/from16 v16, v11

    move/from16 v20, v13

    move-object/from16 v11, v19

    move-object/from16 v17, v21

    move-object/from16 v19, v4

    move v13, v5

    .end local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "transit":I
    .end local v21    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .local v11, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v13, "transit":I
    .restart local v16    # "appCount":I
    .restart local v17    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .local v19, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v20    # "hasWallpaperTarget":Z
    goto :goto_2c3

    .end local v16    # "appCount":I
    .end local v17    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v20    # "hasWallpaperTarget":Z
    .restart local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "transit":I
    .local v11, "appCount":I
    .local v13, "hasWallpaperTarget":Z
    :catchall_2b8
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v16, v11

    move/from16 v20, v13

    move-object v11, v2

    move v13, v5

    .end local v2    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "transit":I
    .local v11, "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .local v13, "transit":I
    .restart local v16    # "appCount":I
    .restart local v17    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v19    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v20    # "hasWallpaperTarget":Z
    :goto_2c3
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 260
    throw v0

    .line 116
    .end local v6    # "voiceInteraction":Z
    .end local v8    # "topChangingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v9    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "appTransition":Lcom/android/server/wm/AppTransition;
    .end local v11    # "topOpeningApp":Lcom/android/server/wm/ActivityRecord;
    .end local v12    # "topClosingApp":Lcom/android/server/wm/ActivityRecord;
    .end local v13    # "transit":I
    .end local v14    # "openingAppHasWallpaper":Z
    .end local v15    # "closingAppHasWallpaper":Z
    .end local v16    # "appCount":I
    .end local v17    # "animLpActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v19    # "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v20    # "hasWallpaperTarget":Z
    :cond_2cb
    :goto_2cb
    return-void
.end method

.method isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .registers 7
    .param p1, "transit"    # I
    .param p2, "task"    # Lcom/android/server/wm/Task;

    .line 984
    const/4 v0, 0x0

    if-eqz p2, :cond_53

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 985
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_53

    .line 990
    :cond_e
    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_19

    const/16 v1, 0x12

    if-eq p1, v1, :cond_19

    .line 994
    return v0

    .line 997
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 998
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 999
    .local v3, "activityTask":Lcom/android/server/wm/Task;
    if-eq v3, p2, :cond_34

    .line 1000
    return v0

    .line 1002
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "activityTask":Lcom/android/server/wm/Task;
    :cond_34
    goto :goto_21

    .line 1003
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1004
    .restart local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eq v3, p2, :cond_50

    .line 1005
    return v0

    .line 1007
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_50
    goto :goto_3d

    .line 1008
    :cond_51
    const/4 v0, 0x1

    return v0

    .line 988
    :cond_53
    :goto_53
    return v0
.end method

.method public synthetic lambda$handleAppTransitionReady$1$AppTransitionController()V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifySingleTaskDisplayDrawn(I)V

    .line 288
    return-void
.end method

.method maybeUpdateTransitToHomeTaskClose(I)I
    .registers 7
    .param p1, "transit"    # I

    .line 1049
    const/16 v0, 0x8

    if-eq p1, v0, :cond_9

    const/16 v0, 0xa

    if-eq p1, v0, :cond_9

    .line 1050
    return p1

    .line 1053
    :cond_9
    const/4 v0, 0x1

    .line 1054
    .local v0, "hasOpeningHomeTask":Z
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_30

    .line 1055
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1056
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1057
    :cond_2c
    const/4 v0, 0x0

    .line 1054
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1061
    .end local v1    # "i":I
    :cond_30
    const/4 v1, 0x1

    .line 1062
    .local v1, "hasClosingStandardTask":Z
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3b
    if-ltz v2, :cond_57

    .line 1063
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1064
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandard()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1065
    :cond_53
    const/4 v1, 0x0

    .line 1062
    .end local v3    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_54
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    .line 1069
    .end local v2    # "i":I
    :cond_57
    if-eqz v0, :cond_5e

    if-eqz v1, :cond_5e

    .line 1070
    const/16 v2, 0x9

    return v2

    .line 1073
    :cond_5e
    return p1
.end method

.method maybeUpdateTransitToTranslucentAnim(I)I
    .registers 10
    .param p1, "transit"    # I

    .line 929
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 931
    return p1

    .line 933
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 934
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v2

    .line 935
    .local v0, "taskOrActivity":Z
    :goto_19
    const/4 v3, 0x1

    .line 936
    .local v3, "allOpeningVisible":Z
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    .line 937
    .local v4, "allTranslucentOpeningApps":Z
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_2c
    if-ltz v5, :cond_49

    .line 938
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 939
    .local v6, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v7

    if-nez v7, :cond_46

    .line 940
    const/4 v3, 0x0

    .line 941
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 942
    const/4 v4, 0x0

    .line 937
    .end local v6    # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_46
    add-int/lit8 v5, v5, -0x1

    goto :goto_2c

    .line 948
    .end local v5    # "i":I
    :cond_49
    const/4 v5, 0x0

    .line 950
    .local v5, "shouldApplyClosingAnim":Z
    iget-object v6, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    .line 951
    .local v6, "allTranslucentClosingApps":Z
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    sub-int/2addr v7, v2

    .local v7, "i":I
    :goto_5c
    if-ltz v7, :cond_85

    .line 954
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 955
    goto :goto_82

    .line 957
    :cond_6f
    const/4 v5, 0x1

    .line 962
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 963
    const/4 v6, 0x0

    .line 964
    goto :goto_85

    .line 951
    :cond_82
    :goto_82
    add-int/lit8 v7, v7, -0x1

    goto :goto_5c

    .line 968
    .end local v7    # "i":I
    :cond_85
    :goto_85
    if-eqz v0, :cond_8e

    if-eqz v6, :cond_8e

    if-eqz v3, :cond_8e

    .line 969
    const/16 v1, 0x19

    return v1

    .line 971
    :cond_8e
    if-eqz v0, :cond_a1

    if-eqz v4, :cond_a1

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9e

    if-nez v5, :cond_a1

    .line 973
    :cond_9e
    const/16 v1, 0x18

    return v1

    .line 975
    :cond_a1
    return p1
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2
    .param p1, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 106
    return-void
.end method
