.class final Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Lcom/android/server/wm/InsetsControlTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PolicyControlTarget"
.end annotation


# instance fields
.field private mPolicyState:Landroid/view/InsetsState;

.field final synthetic this$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/InsetsPolicy;

    .line 756
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    return-void
.end method

.method private updatePolicyState()V
    .registers 6

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 820
    .local v0, "statusWin":Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 821
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    invoke-virtual {v2, v1}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    .line 822
    .local v2, "statusSource":Landroid/view/InsetsSource;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 823
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 824
    invoke-virtual {v2, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 827
    .end local v2    # "statusSource":Landroid/view/InsetsSource;
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 828
    .local v2, "navWin":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_5f

    .line 829
    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 830
    .local v3, "navSource":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)V

    .line 831
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 832
    invoke-virtual {v3, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 834
    .end local v3    # "navSource":Landroid/view/InsetsSource;
    :cond_5f
    return-void
.end method


# virtual methods
.method public canShowTransient()Z
    .registers 2

    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public getRequestedInsetsState()Landroid/view/InsetsState;
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    return-object v0
.end method

.method public notifyInsetsControlChanged()V
    .registers 10

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mStateController:Lcom/android/server/wm/InsetsStateController;
    invoke-static {v0}, Lcom/android/server/wm/InsetsPolicy;->access$000(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 763
    .local v0, "controls":[Landroid/view/InsetsSourceControl;
    if-nez v0, :cond_d

    .line 764
    return-void

    .line 768
    :cond_d
    invoke-direct {p0}, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->updatePolicyState()V

    .line 772
    iget-object v1, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v1}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 773
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_ce

    aget-object v5, v0, v4

    .line 774
    .local v5, "control":Landroid/view/InsetsSourceControl;
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_ca

    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-nez v6, :cond_33

    .line 775
    goto/16 :goto_ca

    .line 777
    :cond_33
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 778
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v6

    if-nez v6, :cond_60

    .line 779
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    .line 780
    invoke-virtual {v8, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    .line 779
    invoke-virtual {v1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_ca

    .line 781
    :cond_60
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ca

    .line 782
    iget-object v6, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v6}, Lcom/android/server/wm/InsetsPolicy;->access$600(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/DisplayPolicy;->mNavigationBarPosition:I

    if-eq v6, v7, :cond_ac

    const/4 v7, 0x2

    if-eq v6, v7, :cond_92

    const/4 v7, 0x4

    if-eq v6, v7, :cond_78

    goto :goto_ca

    .line 794
    :cond_78
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    .line 795
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    .line 796
    invoke-virtual {v8}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 794
    invoke-virtual {v1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 797
    goto :goto_ca

    .line 789
    :cond_92
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    .line 790
    invoke-virtual {v7}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 791
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    .line 789
    invoke-virtual {v1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 792
    goto :goto_ca

    .line 784
    :cond_ac
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->mPolicyState:Landroid/view/InsetsState;

    .line 785
    invoke-virtual {v8, v7}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    .line 786
    invoke-virtual {v5}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    .line 784
    invoke-virtual {v1, v6, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 773
    .end local v5    # "control":Landroid/view/InsetsSourceControl;
    :cond_ca
    :goto_ca
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    .line 803
    :cond_ce
    iget-object v2, p0, Lcom/android/server/wm/InsetsPolicy$PolicyControlTarget;->this$0:Lcom/android/server/wm/InsetsPolicy;

    # getter for: Lcom/android/server/wm/InsetsPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    invoke-static {v2}, Lcom/android/server/wm/InsetsPolicy;->access$200(Lcom/android/server/wm/InsetsPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    .line 804
    return-void
.end method
