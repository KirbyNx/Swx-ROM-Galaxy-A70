.class Lcom/android/server/wm/InsetsPolicy;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;,
        Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;,
        Lcom/android/server/wm/InsetsPolicy$BarWindow;
    }
.end annotation


# instance fields
.field private mAnimatingShown:Z

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private mFocusedWin:Lcom/android/server/wm/WindowState;

.field private mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

.field private final mShowingTransientTargetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowingTransientTypes:Landroid/util/IntArray;

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

.field private final mTmpFloat9:[F


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    .line 92
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$1;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 125
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 126
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$BarWindow;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/InsetsPolicy$BarWindow;-><init>(Lcom/android/server/wm/InsetsPolicy;I)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    .line 128
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    .line 750
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 133
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 134
    return-void
.end method

.method private abortTransient()V
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 380
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_17

    .line 381
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 382
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    .line 381
    invoke-interface {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 391
    .end local v0    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v0

    .line 392
    .local v0, "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    if-eqz v0, :cond_29

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->transientChanged(IZ)V

    .line 397
    .end local v0    # "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 404
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/InsetsPolicy;)Landroid/util/IntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/InsetsPolicy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/InsetsPolicy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;
    .param p1, "x1"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsPolicy;->mAnimatingShown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/WindowState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/InsetsPolicy;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mTmpFloat9:[F

    return-object v0
.end method

.method private static canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 463
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v2, v1, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_14

    move v2, v1

    goto :goto_15

    :cond_14
    move v2, v0

    .line 466
    .local v2, "nonAttachedAppWindow":Z
    :goto_15
    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFullyTransparent()Z

    move-result v3

    if-nez v3, :cond_37

    .line 467
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_37

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_POP_OVER:Z

    if-eqz v3, :cond_35

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isPopOver()Z

    move-result v3

    if-nez v3, :cond_37

    :cond_35
    move v0, v1

    goto :goto_38

    :cond_37
    nop

    .line 466
    :goto_38
    return v0
.end method

.method private checkAbortTransient(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V
    .registers 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 333
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_83

    .line 334
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 335
    .local v0, "abortTypes":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_58

    .line 336
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 337
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/InsetsStateController;->isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 338
    invoke-virtual {p2, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 341
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsControlTarget;

    .line 342
    .local v3, "target":Lcom/android/server/wm/InsetsControlTarget;
    if-eqz v3, :cond_44

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 344
    goto :goto_55

    .line 349
    .end local v3    # "target":Lcom/android/server/wm/InsetsControlTarget;
    :cond_44
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->remove(I)V

    .line 350
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 354
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v2    # "type":I
    :cond_55
    :goto_55
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 359
    .end local v1    # "i":I
    :cond_58
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_83

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 361
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    .line 360
    invoke-interface {v1, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerInternal;->abortTransient(I[I)V

    .line 364
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    .line 365
    .local v1, "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    if-eqz v1, :cond_83

    .line 366
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->transientChanged(IZ)V

    .line 372
    .end local v0    # "abortTypes":Landroid/util/IntArray;
    .end local v1    # "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    :cond_83
    return-void
.end method

.method private controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V
    .registers 7
    .param p1, "typesReady"    # I
    .param p3, "show"    # Z
    .param p4, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 584
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    new-instance v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;-><init>(Lcom/android/server/wm/InsetsPolicy;ZLjava/lang/Runnable;I)V

    .line 586
    .local v0, "listener":Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;
    iget-object v1, v0, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener;->mControlCallbacks:Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;

    # invokes: Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->controlAnimationUnchecked(ILandroid/util/SparseArray;Z)V
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;->access$400(Lcom/android/server/wm/InsetsPolicy$InsetsPolicyAnimationControlListener$InsetsPolicyAnimationControlCallbacks;ILandroid/util/SparseArray;Z)V

    .line 587
    return-void
.end method

.method private forceShowsNavigationBarTransiently()Z
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 518
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private forceShowsStatusBarTransiently()Z
    .registers 3

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 513
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_12

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private forceShowsSystemBarsForWindowingMode()Z
    .registers 2

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsSystemBarsForWindowingMode(Z)Z

    move-result v0

    return v0
.end method

.method private forceShowsSystemBarsForWindowingMode(Z)Z
    .registers 8
    .param p1, "isStatusBar"    # Z

    .line 532
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 533
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->isStackVisible(I)Z

    move-result v0

    .line 536
    .local v0, "isDockedStackVisible":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    .line 537
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 538
    .local v1, "isFreeformWinFocused":Z
    :goto_1a
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v4

    .line 543
    .local v4, "isResizing":Z
    if-nez v0, :cond_37

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_37

    :cond_2a
    if-nez v4, :cond_37

    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 546
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getForceShowSystemBars()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_37

    :cond_35
    move v2, v3

    goto :goto_38

    :cond_37
    :goto_37
    nop

    .line 543
    :goto_38
    return v2
.end method

.method private getFakeControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 4
    .param p1, "focused"    # Lcom/android/server/wm/WindowState;
    .param p2, "realControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p2, v0, :cond_6

    move-object v0, p1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0
.end method

.method private getFakeNavControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 4
    .param p1, "focused"    # Lcom/android/server/wm/WindowState;
    .param p2, "realControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 848
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 850
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 852
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getFakeControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    return-object v0
.end method

.method private getFakeStatusControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;
    .registers 4
    .param p1, "focused"    # Lcom/android/server/wm/WindowState;
    .param p2, "realControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 839
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 843
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->getFakeControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    return-object v0
.end method

.method private getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 5
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceShowsSystemBarsForWindowingMode"    # Z

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 486
    :cond_d
    nop

    .line 487
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    return-object v0

    .line 492
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_20

    .line 494
    return-object p1

    .line 496
    :cond_20
    if-eqz p2, :cond_24

    .line 500
    const/4 v0, 0x0

    return-object v0

    .line 502
    :cond_24
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsNavigationBarTransiently()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 508
    :cond_2d
    return-object p1
.end method

.method private getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;
    .registers 5
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceShowsSystemBarsForWindowingMode"    # Z

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 417
    :cond_d
    nop

    .line 418
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    return-object v0

    .line 423
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_20

    .line 425
    return-object p1

    .line 427
    :cond_20
    if-eqz p2, :cond_24

    .line 431
    const/4 v0, 0x0

    return-object v0

    .line 433
    :cond_24
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsStatusBarTransiently()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    return-object v0

    .line 440
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 441
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 442
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 443
    return-object p1

    .line 445
    :cond_42
    if-eqz p1, :cond_51

    .line 446
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    .line 452
    :cond_51
    invoke-static {p1}, Lcom/android/server/wm/InsetsPolicy;->canBeTopFullscreenOpaqueWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->topAppHidesStatusBar()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0

    .line 457
    :cond_66
    return-object p1
.end method

.method private static isKeyguardPresentation(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 888
    if-eqz p0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d9

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->behavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private needAbortTransientByPolicyControl(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;

    .line 856
    const/4 v0, 0x0

    if-eqz p1, :cond_58

    .line 857
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 858
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_58

    .line 862
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowTransient()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 863
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRequestedInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 864
    .local v1, "state":Landroid/view/InsetsState;
    invoke-virtual {v1, v0}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 865
    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v3

    if-nez v3, :cond_28

    .line 866
    :cond_27
    return v0

    .line 870
    .end local v1    # "state":Landroid/view/InsetsState;
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    .line 871
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    if-ne v1, v4, :cond_40

    .line 872
    return v2

    .line 875
    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_57

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    .line 876
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicyControlTarget:Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;

    if-ne v1, v3, :cond_57

    .line 877
    return v2

    .line 880
    :cond_57
    return v0

    .line 859
    :cond_58
    :goto_58
    return v0
.end method


# virtual methods
.method getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;
    .registers 7
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v0

    .line 311
    .local v0, "originalState":Landroid/view/InsetsState;
    move-object v1, v0

    .line 312
    .local v1, "state":Landroid/view/InsetsState;
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_24

    .line 313
    new-instance v3, Landroid/view/InsetsState;

    invoke-direct {v3, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    move-object v1, v3

    .line 314
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 312
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 316
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method hideTransient()V
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 275
    return-void

    .line 277
    :cond_9
    new-instance v0, Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 278
    .local v0, "state":Landroid/view/InsetsState;
    new-instance v1, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;Landroid/view/InsetsState;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    .line 295
    .local v1, "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    if-eqz v1, :cond_35

    .line 296
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->transientChanged(IZ)V

    .line 300
    .end local v1    # "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    :cond_35
    return-void
.end method

.method isHidden(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 205
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->hasWindow()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method isTransient(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public synthetic lambda$hideTransient$2$InsetsPolicy()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 280
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 286
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 288
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    return-void

    .line 288
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showTransient$0$InsetsPolicy()V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 255
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v1}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 256
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 257
    return-void

    .line 256
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$showTransient$1$InsetsPolicy(J)V
    .registers 7
    .param p1, "time"    # J

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 252
    new-instance v1, Landroid/view/InsetsState;

    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v2}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 253
    .local v1, "state":Landroid/view/InsetsState;
    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$LCR2QgJZxbNat6Qb0Be-JDpy3i0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$LCR2QgJZxbNat6Qb0Be-JDpy3i0;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/wm/InsetsPolicy;->startAnimation(ZLjava/lang/Runnable;Landroid/view/InsetsState;)V

    .line 258
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    .line 259
    .end local v1    # "state":Landroid/view/InsetsState;
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 260
    return-void

    .line 259
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V
    .registers 4
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "state"    # Landroid/view/InsetsState;

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/InsetsState;)V

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->checkAbortTransient(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 323
    return-void
.end method

.method showTransient([I)V
    .registers 3
    .param p1, "types"    # [I

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/InsetsPolicy;->showTransient([ILcom/android/server/wm/InsetsControlTarget;)V

    .line 211
    return-void
.end method

.method showTransient([ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 9
    .param p1, "types"    # [I
    .param p2, "controlTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "changed":Z
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_2d

    .line 217
    aget v3, p1, v1

    .line 218
    .local v3, "type":I
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->isHidden(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 219
    goto :goto_2a

    .line 221
    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    .line 222
    goto :goto_2a

    .line 224
    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->add(I)V

    .line 226
    if-eqz p2, :cond_29

    .line 227
    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTargetMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_29
    const/4 v0, 0x1

    .line 216
    .end local v3    # "type":I
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 232
    .end local v1    # "i":I
    :cond_2d
    if-eqz v0, :cond_6c

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 242
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 241
    invoke-interface {v1, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showTransient(I[I)V

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsPolicy;->updateBarControlTarget(Lcom/android/server/wm/WindowState;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;-><init>(Lcom/android/server/wm/InsetsPolicy;)V

    invoke-virtual {v1, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getCocktailBarManagerInternal()Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;

    move-result-object v1

    .line 265
    .local v1, "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    if-eqz v1, :cond_6c

    .line 266
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;->transientChanged(IZ)V

    .line 271
    .end local v1    # "cocktailBar":Lcom/samsung/android/cocktailbar/CocktailBarManagerInternal;
    :cond_6c
    return-void
.end method

.method startAnimation(ZLjava/lang/Runnable;Landroid/view/InsetsState;)V
    .registers 13
    .param p1, "show"    # Z
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "state"    # Landroid/view/InsetsState;

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "typesReady":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 567
    .local v1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy;->mShowingTransientTypes:Landroid/util/IntArray;

    .line 568
    .local v2, "showingTransientTypes":Landroid/util/IntArray;
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_40

    .line 569
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 570
    .local v4, "type":I
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v5

    .line 571
    .local v5, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy;->mDummyControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v6

    .line 572
    .local v6, "control":Landroid/view/InsetsSourceControl;
    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    if-nez v7, :cond_29

    .line 573
    goto :goto_3d

    .line 575
    :cond_29
    invoke-static {v4}, Landroid/view/InsetsState;->toPublicType(I)I

    move-result v7

    or-int/2addr v0, v7

    .line 576
    invoke-virtual {v6}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v7

    new-instance v8, Landroid/view/InsetsSourceControl;

    invoke-direct {v8, v6}, Landroid/view/InsetsSourceControl;-><init>(Landroid/view/InsetsSourceControl;)V

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    invoke-virtual {p3, v4, p1}, Landroid/view/InsetsState;->setSourceVisible(IZ)V

    .line 568
    .end local v4    # "type":I
    .end local v5    # "provider":Lcom/android/server/wm/InsetsSourceProvider;
    .end local v6    # "control":Landroid/view/InsetsSourceControl;
    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 579
    .end local v3    # "i":I
    :cond_40
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->controlAnimationUnchecked(ILandroid/util/SparseArray;ZLjava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method updateBarControlTarget(Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p1, "focusedWin"    # Lcom/android/server/wm/WindowState;

    .line 139
    const/4 v0, 0x0

    .line 142
    .local v0, "isDexMode":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    if-eq v1, p1, :cond_1f

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 145
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq p1, v1, :cond_1b

    .line 146
    :cond_f
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveStatus(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 147
    invoke-static {p1}, Lcom/android/server/wm/PolicyControl;->shouldApplyImmersiveNavigation(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 149
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    goto :goto_29

    .line 152
    :cond_1f
    nop

    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsPolicy;->needAbortTransientByPolicyControl(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 154
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->abortTransient()V

    .line 157
    :cond_29
    :goto_29
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy;->mFocusedWin:Lcom/android/server/wm/WindowState;

    .line 158
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy;->forceShowsSystemBarsForWindowingMode()Z

    move-result v1

    .line 160
    .local v1, "forceShowsSystemBarsForWindowingMode":Z
    const/4 v2, 0x0

    .line 162
    .local v2, "statusControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    nop

    .line 163
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/wm/InsetsPolicy;->forceShowsSystemBarsForWindowingMode(Z)Z

    move-result v4

    .line 164
    .local v4, "forceShowsStatusBarForWindowingMode":Z
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/InsetsPolicy;->getStatusControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v2

    .line 173
    .end local v4    # "forceShowsStatusBarForWindowingMode":Z
    const/4 v4, 0x0

    .line 180
    .local v4, "forceShowSystemBarsForDex":Z
    const/4 v5, 0x0

    if-nez v1, :cond_43

    if-eqz v4, :cond_41

    goto :goto_43

    :cond_41
    move v6, v5

    goto :goto_44

    :cond_43
    :goto_43
    move v6, v3

    :goto_44
    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/InsetsPolicy;->getNavControlTarget(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    .line 183
    .local v6, "navControlTarget":Lcom/android/server/wm/InsetsControlTarget;
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 186
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/InsetsPolicy;->getFakeStatusControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v8

    .line 192
    invoke-direct {p0, p1, v6}, Lcom/android/server/wm/InsetsPolicy;->getFakeNavControlTarget(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsControlTarget;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v9

    .line 183
    invoke-virtual {v7, v2, v8, v6, v9}, Lcom/android/server/wm/InsetsStateController;->onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V

    .line 195
    sget v7, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5b

    .line 196
    return-void

    .line 198
    :cond_5b
    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy;->mStatusBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    # invokes: Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    invoke-static {v7, v2, v5}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->access$300(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 199
    iget-object v5, p0, Lcom/android/server/wm/InsetsPolicy;->mNavBar:Lcom/android/server/wm/InsetsPolicy$BarWindow;

    # invokes: Lcom/android/server/wm/InsetsPolicy$BarWindow;->updateVisibility(Lcom/android/server/wm/InsetsControlTarget;I)V
    invoke-static {v5, v6, v3}, Lcom/android/server/wm/InsetsPolicy$BarWindow;->access$300(Lcom/android/server/wm/InsetsPolicy$BarWindow;Lcom/android/server/wm/InsetsControlTarget;I)V

    .line 200
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->updateHideNavInputEventReceiver()V

    .line 201
    return-void
.end method
