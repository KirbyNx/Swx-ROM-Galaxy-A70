.class Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;
.super Ljava/lang/Object;
.source "ScreenRotationAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenRotationAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceRotationAnimationController"
.end annotation


# instance fields
.field private mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field private mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field final synthetic this$0:Lcom/android/server/wm/ScreenRotationAnimation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 661
    iput-object p1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;
    .registers 6
    .param p1, "mAnimation"    # Landroid/view/animation/Animation;

    .line 813
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    return-object v0
.end method

.method private initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .registers 4

    .line 711
    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    invoke-direct {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 712
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$CkqCuQmAGdLOVExbosZfF3sXdHQ;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$CkqCuQmAGdLOVExbosZfF3sXdHQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 713
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$CvWmQaXToMTllLb80KQ9WdJHYXo;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$CvWmQaXToMTllLb80KQ9WdJHYXo;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 714
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$IamNNBZp056cXLajnE4zHKSqj-c;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$IamNNBZp056cXLajnE4zHKSqj-c;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 711
    return-object v0
.end method

.method public static synthetic lambda$mryOPi3UUpYZkQThzDJyjGBpl5c(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->onAnimationEnd(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method private onAnimationEnd(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 19
    .param p1, "type"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 847
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->isAnimating()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_92

    .line 849
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_c9

    if-eqz v0, :cond_8b

    move/from16 v6, p1

    int-to-long v7, v6

    .local v7, "protoLogParam0":J
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, v5

    :goto_2e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v9, :cond_41

    iget-object v9, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v9}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_42

    :cond_41
    move-object v9, v5

    :goto_42
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v10, :cond_55

    iget-object v10, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_56

    :cond_55
    move-object v10, v5

    :goto_56
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam3":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v11, :cond_69

    iget-object v11, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_6a

    :cond_69
    move-object v11, v5

    :goto_6a
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam4":Ljava/lang/String;
    sget-object v12, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v13, 0x5047ffcc

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    aput-object v0, v14, v3

    const/4 v4, 0x2

    aput-object v9, v14, v4

    const/4 v4, 0x3

    aput-object v10, v14, v4

    const/4 v4, 0x4

    aput-object v11, v14, v4

    invoke-static {v12, v13, v3, v5, v14}, Lcom/android/server/protolog/ProtoLogImpl;->v(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8d

    .end local v0    # "protoLogParam1":Ljava/lang/String;
    .end local v7    # "protoLogParam0":J
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    .end local v10    # "protoLogParam3":Ljava/lang/String;
    .end local v11    # "protoLogParam4":Ljava/lang/String;
    :cond_8b
    move/from16 v6, p1

    .line 865
    :goto_8d
    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_1e .. :try_end_8e} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 867
    :cond_92
    move/from16 v6, p1

    :try_start_94
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v0, :cond_a3

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/server/wm/ProtoLogGroup;

    const v7, 0xbf86b21

    move-object v8, v5

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v4, v5, v8}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 868
    :cond_a3
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 869
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 870
    iput-object v5, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 871
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v5, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/2addr v3, v5

    iput v3, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 872
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 873
    iget-object v0, v1, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 874
    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_94 .. :try_end_c5} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 875
    return-void

    .line 874
    :catchall_c9
    move-exception v0

    move/from16 v6, p1

    :goto_cc
    :try_start_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d1
    move-exception v0

    goto :goto_cc
.end method

.method private startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;
    .registers 10
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .param p2, "animationSpec"    # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p3, "animationFinishedCallback"    # Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 830
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 831
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    .line 833
    .local v0, "animator":Lcom/android/server/wm/SurfaceAnimator;
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 834
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, p2, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 835
    .local v1, "localAnimationAdapter":Lcom/android/server/wm/LocalAnimationAdapter;
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    .line 838
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_INFORM_SCREEN_ROTATION_ANIMATION_STARTED_FOR_CAPTURED_BLUR:Z

    if-eqz v2, :cond_42

    .line 839
    invoke-virtual {v1}, Lcom/android/server/wm/LocalAnimationAdapter;->getDurationHint()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDuration:J
    invoke-static {v4}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1200(Lcom/android/server/wm/ScreenRotationAnimation;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_42

    .line 840
    iget-object v2, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/LocalAnimationAdapter;->getDurationHint()J

    move-result-wide v3

    # setter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDuration:J
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1202(Lcom/android/server/wm/ScreenRotationAnimation;J)J

    .line 843
    :cond_42
    return-object v0
.end method

.method private startColorAnimation()V
    .registers 20

    .line 764
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$900(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 766
    .local v10, "colorTransitionMs":I
    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 767
    .local v11, "runner":Lcom/android/server/wm/SurfaceAnimationRunner;
    const/4 v0, 0x3

    new-array v12, v0, [F

    .line 768
    .local v12, "rgbTmpFloat":[F
    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mStartLuma:F
    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1000(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v13

    .line 769
    .local v13, "startColor":I
    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v1

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mEndLuma:F
    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$1100(Lcom/android/server/wm/ScreenRotationAnimation;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v14

    .line 770
    .local v14, "endColor":I
    int-to-long v0, v10

    iget-object v2, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v2

    float-to-long v2, v2

    mul-long v15, v0, v2

    .line 771
    .local v15, "duration":J
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v17

    .line 772
    .local v17, "va":Landroid/animation/ArgbEvaluator;
    new-instance v8, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide v2, v15

    move-object/from16 v4, v17

    move v5, v13

    move v6, v14

    move-object v7, v12

    move-object/from16 v18, v12

    move-object v12, v8

    .end local v12    # "rgbTmpFloat":[F
    .local v18, "rgbTmpFloat":[F
    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController$1;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;JLandroid/animation/ArgbEvaluator;II[FI)V

    iget-object v0, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 809
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 772
    const/4 v2, 0x0

    invoke-virtual {v11, v12, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 810
    return-void
.end method

.method private startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 718
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 719
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 720
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 721
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 722
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 723
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 725
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$400(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 718
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 741
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 742
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mEnterBlackFrameLayer:Landroid/view/SurfaceControl;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$700(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 743
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 745
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mRotateEnterAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$400(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 741
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startScreenshotAlphaAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 730
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 731
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$500(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 732
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 733
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 734
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 736
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mRotateAlphaAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$600(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 730
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method

.method private startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;
    .registers 4

    .line 750
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->initializeBuilder()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 751
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mScreenshotLayer:Landroid/view/SurfaceControl;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$500(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 752
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$300(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 754
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mRotateExitAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$800(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->createWindowAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$ScreenRotationAnimation$SurfaceRotationAnimationController$mryOPi3UUpYZkQThzDJyjGBpl5c;-><init>(Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;)V

    .line 750
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startAnimation(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_7

    .line 879
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 881
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_e

    .line 882
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 885
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_15

    .line 886
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 889
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1c

    .line 890
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 893
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 896
    :cond_35
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_14

    .line 900
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1e

    .line 901
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2a

    .line 903
    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 899
    :goto_2b
    return v0
.end method

.method startCustomAnimation()V
    .registers 3

    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 675
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mRotateScreenAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 680
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mEnteringBlackFrame:Lcom/android/server/wm/BlackFrame;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$100(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 682
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startEnterBlackFrameAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mEnterBlackFrameAnimator:Lcom/android/server/wm/SurfaceAnimator;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_32

    .line 685
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 686
    nop

    .line 687
    return-void

    .line 685
    :catchall_32
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 686
    throw v0
.end method

.method startScreenRotationAnimation()V
    .registers 3

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 696
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startDisplayRotation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mDisplayAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 697
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startScreenshotRotationAnimation()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->mScreenshotRotationAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 700
    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mBackColorSurface:Landroid/view/SurfaceControl;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$200(Lcom/android/server/wm/ScreenRotationAnimation;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 702
    invoke-direct {p0}, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->startColorAnimation()V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_2f

    .line 706
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 707
    nop

    .line 708
    return-void

    .line 706
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenRotationAnimation$SurfaceRotationAnimationController;->this$0:Lcom/android/server/wm/ScreenRotationAnimation;

    # getter for: Lcom/android/server/wm/ScreenRotationAnimation;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->access$000(Lcom/android/server/wm/ScreenRotationAnimation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 707
    throw v0
.end method
