.class Lcom/android/server/wm/DisplayContent$WindowContainers;
.super Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowContainers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 5381
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 5382
    invoke-direct {p0, p3}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 5383
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->mName:Ljava/lang/String;

    .line 5384
    return-void
.end method

.method static synthetic lambda$assignChildLayers$0(Lcom/android/server/wm/WindowState;)Z
    .registers 5
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 5431
    nop

    .line 5432
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    .line 5433
    .local v0, "isMultiWindowHandler":Z
    :goto_13
    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_22

    move v1, v2

    :cond_22
    return v1
.end method


# virtual methods
.method addChildren()V
    .registers 3

    .line 5459
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent$WindowContainers;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 5460
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayAreaPolicy;->attachDisplayAreas()V

    .line 5461
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5388
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$ImeContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$ImeContainer;->setNeedsLayer()V

    .line 5390
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;
    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayArea$Root;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5392
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 5418
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_82

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_25

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5419
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v1

    if-nez v1, :cond_82

    .line 5420
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 5422
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isAppTransitioning()Z

    move-result v1

    if-nez v1, :cond_82

    .line 5423
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 5426
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_74

    .line 5427
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-nez v1, :cond_74

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5428
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 5429
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 5430
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$WindowContainers$yPYydTQBRDe560EYFtGH1th3KF4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$WindowContainers$yPYydTQBRDe560EYFtGH1th3KF4;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 5435
    .local v1, "candidateImeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_6e

    .line 5436
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_72

    :cond_6e
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    :goto_72
    move-object v1, v2

    .line 5437
    .local v1, "imeTargetSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_78

    .line 5438
    .end local v1    # "imeTargetSurfaceControl":Landroid/view/SurfaceControl;
    :cond_74
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 5440
    .restart local v1    # "imeTargetSurfaceControl":Landroid/view/SurfaceControl;
    :goto_78
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$ImeContainer;
    invoke-static {v2}, Lcom/android/server/wm/DisplayContent;->access$300(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$ImeContainer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Lcom/android/server/wm/DisplayContent$ImeContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 5450
    .end local v1    # "imeTargetSurfaceControl":Landroid/view/SurfaceControl;
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    # getter for: Lcom/android/server/wm/DisplayContent;->mRootDisplayArea:Lcom/android/server/wm/DisplayArea$Root;
    invoke-static {v1}, Lcom/android/server/wm/DisplayContent;->access$400(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayArea$Root;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayArea$Root;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5451
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 5455
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$WindowContainers;->mName:Ljava/lang/String;

    return-object v0
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 5467
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$WindowContainers;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5468
    return-void
.end method
