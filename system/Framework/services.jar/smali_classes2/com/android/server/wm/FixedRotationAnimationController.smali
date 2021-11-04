.class public Lcom/android/server/wm/FixedRotationAnimationController;
.super Ljava/lang/Object;
.source "FixedRotationAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAnimatedWindowToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDeferredFinishCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowToken;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mNavigationBar:Lcom/android/server/wm/WindowState;

.field private final mStatusBar:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    .line 73
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 75
    .local v0, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mStatusBar:Lcom/android/server/wm/WindowState;

    .line 77
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 78
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_2d

    .line 79
    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iput-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FixedRotationAnimationController;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/FixedRotationAnimationController;

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 169
    new-instance v0, Lcom/android/server/wm/FixedRotationAnimationController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/FixedRotationAnimationController$1;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V
    .registers 12
    .param p1, "show"    # Z
    .param p2, "windowToken"    # Lcom/android/server/wm/WindowToken;

    .line 143
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_48

    .line 147
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mContext:Landroid/content/Context;

    .line 148
    if-eqz p1, :cond_10

    const/high16 v1, 0x10a0000

    goto :goto_13

    :cond_10
    const v1, 0x10a0001

    .line 147
    :goto_13
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 149
    .local v0, "animation":Landroid/view/animation/Animation;
    nop

    .line 150
    invoke-direct {p0, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->createAnimationSpec(Landroid/view/animation/Animation;)Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    move-result-object v7

    .line 152
    .local v7, "windowAnimationSpec":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    new-instance v8, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;

    .line 153
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v4

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V

    move-object v3, v8

    .line 157
    .local v3, "animationAdapter":Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
    if-eqz p1, :cond_34

    new-instance v1, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;Lcom/android/server/wm/WindowToken;)V

    move-object v6, v1

    goto :goto_36

    .line 162
    :cond_34
    const/4 v1, 0x0

    move-object v6, v1

    :goto_36
    nop

    .line 163
    .local v6, "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/16 v5, 0x40

    move-object v1, p2

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    return-void

    .line 144
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v3    # "animationAdapter":Lcom/android/server/wm/FixedRotationAnimationController$FixedRotationAnimationAdapter;
    .end local v6    # "finishedCallback":Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .end local v7    # "windowAnimationSpec":Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method cancelFadeAnimation(Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 6
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 128
    .local v0, "windowToken":Lcom/android/server/wm/WindowToken;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_39

    .line 132
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 133
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v1, :cond_35

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FixedRotationAnimationController#cancelFadeAnimation, w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_35
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 139
    :cond_38
    return-void

    .line 129
    :cond_39
    :goto_39
    return-void
.end method

.method hide()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mNavigationBar:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 99
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mStatusBar:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_13

    .line 102
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 107
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$oZmCPm2L4iI7ctM7YepVuUDKsgg;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$oZmCPm2L4iI7ctM7YepVuUDKsgg;-><init>(Lcom/android/server/wm/FixedRotationAnimationController;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 112
    return-void
.end method

.method hideSystemWindow(Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 5
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "reason"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicyExt;->shouldHideWindowOnFixedRotationAnim(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 117
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 118
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_3e

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedRotationAnimationController#hideSystemWindow, w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3e
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 124
    :cond_44
    return-void
.end method

.method public synthetic lambda$fadeWindowToken$1$FixedRotationAnimationController(Lcom/android/server/wm/WindowToken;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p1, "windowToken"    # Lcom/android/server/wm/WindowToken;
    .param p2, "t"    # I
    .param p3, "r"    # Lcom/android/server/wm/AnimationAdapter;

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mDeferredFinishCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 159
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_d

    .line 160
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 162
    :cond_d
    return-void
.end method

.method public synthetic lambda$hide$0$FixedRotationAnimationController(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 108
    const-string/jumbo v0, "hide"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FixedRotationAnimationController;->hideSystemWindow(Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method show()V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 91
    iget-object v2, p0, Lcom/android/server/wm/FixedRotationAnimationController;->mAnimatedWindowToken:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 92
    .local v2, "windowToken":Lcom/android/server/wm/WindowToken;
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/FixedRotationAnimationController;->fadeWindowToken(ZLcom/android/server/wm/WindowToken;)V

    .line 90
    .end local v2    # "windowToken":Lcom/android/server/wm/WindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 94
    .end local v0    # "i":I
    :cond_18
    return-void
.end method
