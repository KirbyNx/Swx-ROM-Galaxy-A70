.class final Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayMagnification"
.end annotation


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mDeleteAfterUnregister:Z

.field private final mDisplayId:I

.field private mIdOfLastServiceToMagnify:I

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private mRegistered:Z

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationController;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/MagnificationController;I)V
    .registers 7
    .param p2, "displayId"    # I

    .line 122
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 104
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 123
    iput p2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 124
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object p1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/MagnificationController$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 125
    return-void
.end method


# virtual methods
.method getCenterX()F
    .registers 3

    .line 206
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 207
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 206
    return v0
.end method

.method getCenterY()F
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 213
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getOffsetY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    .line 212
    return v0
.end method

.method getIdOfLastServiceToMagnify()I
    .registers 2

    .line 327
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method getMagnificationBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 345
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 346
    return-void
.end method

.method getMagnificationRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 351
    return-void
.end method

.method getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "outFrame"    # Landroid/graphics/Rect;

    .line 398
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentScale()F

    move-result v0

    .line 399
    .local v0, "scale":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentOffsetX()F

    move-result v1

    .line 400
    .local v1, "offsetX":F
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getSentOffsetY()F

    move-result v2

    .line 401
    .local v2, "offsetY":F
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 402
    neg-float v3, v1

    float-to-int v3, v3

    neg-float v4, v2

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 403
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 404
    return-void
.end method

.method getMaxOffsetXLocked()F
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMaxOffsetYLocked()F
    .registers 4

    .line 582
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method getMinOffsetXLocked()F
    .registers 6

    .line 563
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 564
    .local v0, "viewportWidth":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 565
    .local v1, "viewportLeft":F
    add-float v2, v1, v0

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method getMinOffsetYLocked()F
    .registers 6

    .line 575
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 576
    .local v0, "viewportHeight":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 577
    .local v1, "viewportTop":F
    add-float v2, v1, v0

    add-float v3, v1, v0

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    return v2
.end method

.method getOffsetX()F
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getOffsetY()F
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getScale()F
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method getSentOffsetX()F
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method getSentOffsetY()F
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method getSentScale()F
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    # getter for: Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method isMagnifying()Z
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRegistered()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    return v0
.end method

.method magnificationRegionContains(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 340
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    return v0
.end method

.method offsetMagnifiedRegion(FFI)V
    .registers 8
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "id"    # I

    .line 525
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_5

    .line 526
    return-void

    .line 529
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, p1

    .line 530
    .local v0, "nonNormOffsetX":F
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v1, p2

    .line 531
    .local v1, "nonNormOffsetY":F
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 532
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 534
    :cond_18
    const/4 v2, -0x1

    if-eq p3, v2, :cond_1d

    .line 535
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 537
    :cond_1d
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 538
    return-void
.end method

.method onMagnificationChangedLocked()V
    .registers 8

    .line 331
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getAms()Lcom/android/server/accessibility/AccessibilityManagerService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    .line 332
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result v6

    .line 331
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(ILandroid/graphics/Region;FFF)V

    .line 333
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 334
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->unregister(Z)V

    .line 336
    :cond_2c
    return-void
.end method

.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .line 251
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;

    .line 253
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    .line 251
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 259
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 259
    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 262
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public onRotationChanged(I)V
    .registers 6
    .param p1, "rotation"    # I

    .line 268
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 268
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method public onUserContextChanged()V
    .registers 5

    .line 275
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 275
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    return-void
.end method

.method register()Z
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    .line 137
    if-nez v0, :cond_2f

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set magnification callbacks fail, displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MagnificationController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_2f
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(ILandroid/graphics/Region;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 146
    return v1
.end method

.method requestRectangleOnScreen(IIII)V
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 354
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 355
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 356
    .local v1, "magnifiedFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 357
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-nez v2, :cond_14

    .line 358
    monitor-exit v0

    return-void

    .line 361
    :cond_14
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    .line 362
    .local v2, "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 366
    sub-int v3, p3, p1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_37

    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 369
    .local v3, "direction":I
    if-nez v3, :cond_31

    .line 370
    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v4, p1, v4

    int-to-float v4, v4

    .local v4, "scrollX":F
    goto :goto_36

    .line 372
    .end local v4    # "scrollX":F
    :cond_31
    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    int-to-float v4, v4

    .line 374
    .end local v3    # "direction":I
    .restart local v4    # "scrollX":F
    :goto_36
    goto :goto_4c

    .end local v4    # "scrollX":F
    :cond_37
    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-ge p1, v3, :cond_41

    .line 375
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, p1, v3

    int-to-float v4, v3

    .restart local v4    # "scrollX":F
    goto :goto_4c

    .line 376
    .end local v4    # "scrollX":F
    :cond_41
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-le p3, v3, :cond_4b

    .line 377
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p3, v3

    int-to-float v4, v3

    .restart local v4    # "scrollX":F
    goto :goto_4c

    .line 379
    .end local v4    # "scrollX":F
    :cond_4b
    const/4 v4, 0x0

    .line 382
    .restart local v4    # "scrollX":F
    :goto_4c
    sub-int v3, p4, p2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v3, v5, :cond_5a

    .line 383
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    .local v3, "scrollY":F
    goto :goto_6f

    .line 384
    .end local v3    # "scrollY":F
    :cond_5a
    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-ge p2, v3, :cond_64

    .line 385
    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    .restart local v3    # "scrollY":F
    goto :goto_6f

    .line 386
    .end local v3    # "scrollY":F
    :cond_64
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-le p4, v3, :cond_6e

    .line 387
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, p4, v3

    int-to-float v3, v3

    .restart local v3    # "scrollY":F
    goto :goto_6f

    .line 389
    .end local v3    # "scrollY":F
    :cond_6e
    const/4 v3, 0x0

    .line 392
    .restart local v3    # "scrollY":F
    :goto_6f
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result v5

    .line 393
    .local v5, "scale":F
    mul-float v6, v4, v5

    mul-float v7, v3, v5

    const/4 v8, -0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->offsetMagnifiedRegion(FFI)V

    .line 394
    .end local v1    # "magnifiedFrame":Landroid/graphics/Rect;
    .end local v2    # "magnifFrameInScreenCoords":Landroid/graphics/Rect;
    .end local v3    # "scrollY":F
    .end local v4    # "scrollX":F
    .end local v5    # "scale":F
    monitor-exit v0

    .line 395
    return-void

    .line 394
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7 .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method reset(Z)Z
    .registers 5
    .param p1, "animate"    # Z

    .line 416
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    .line 417
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 420
    .local v0, "spec":Landroid/view/MagnificationSpec;
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 421
    .local v1, "changed":Z
    if-eqz v1, :cond_16

    .line 422
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 425
    :cond_16
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 427
    return v1
.end method

.method sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .registers 7
    .param p1, "spec"    # Landroid/view/MagnificationSpec;
    .param p2, "animate"    # Z

    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J
    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationController;->access$500(Lcom/android/server/accessibility/MagnificationController;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 312
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_31

    .line 314
    :cond_18
    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$CXn5BYHEDMuDgWNKCgknaVOAyJ8;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$CXn5BYHEDMuDgWNKCgknaVOAyJ8;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 316
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 314
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 317
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    .end local v0    # "m":Landroid/os/Message;
    :goto_31
    return-void
.end method

.method setForceShowMagnifiableBounds(Z)V
    .registers 4
    .param p1, "show"    # Z

    .line 408
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-eqz v0, :cond_13

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(IZ)V

    .line 412
    :cond_13
    return-void
.end method

.method setScale(FFFZI)Z
    .registers 25
    .param p1, "scale"    # F
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 433
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_8

    .line 434
    const/4 v0, 0x0

    return v0

    .line 437
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    move/from16 v2, p1

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    .line 439
    .end local p1    # "scale":F
    .local v7, "scale":F
    iget-object v8, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    .line 440
    .local v8, "viewport":Landroid/graphics/Rect;
    iget-object v0, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 441
    iget-object v9, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 442
    .local v9, "spec":Landroid/view/MagnificationSpec;
    iget v10, v9, Landroid/view/MagnificationSpec;->scale:F

    .line 443
    .local v10, "oldScale":F
    nop

    .line 444
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, v9, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v0, v2

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float v11, v0, v10

    .line 445
    .local v11, "oldCenterX":F
    nop

    .line 446
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, v9, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v0, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    div-float v12, v0, v10

    .line 447
    .local v12, "oldCenterY":F
    iget v0, v9, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v0, p2, v0

    div-float v13, v0, v10

    .line 448
    .local v13, "normPivotX":F
    iget v0, v9, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v0, p3, v0

    div-float v14, v0, v10

    .line 449
    .local v14, "normPivotY":F
    sub-float v0, v11, v13

    div-float v1, v10, v7

    mul-float v15, v0, v1

    .line 450
    .local v15, "offsetX":F
    sub-float v0, v12, v14

    div-float v1, v10, v7

    mul-float v16, v0, v1

    .line 451
    .local v16, "offsetY":F
    add-float v17, v13, v15

    .line 452
    .local v17, "centerX":F
    add-float v18, v14, v16

    .line 453
    .local v18, "centerY":F
    move/from16 v5, p5

    iput v5, v6, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 454
    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->setScaleAndCenter(FFFZI)Z

    move-result v0

    return v0
.end method

.method setScaleAndCenter(FFFZI)Z
    .registers 8
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z
    .param p5, "id"    # I

    .line 460
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v0, :cond_6

    .line 461
    const/4 v0, 0x0

    return v0

    .line 470
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    .line 471
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v1, p4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 472
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, -0x1

    if-eq p5, v1, :cond_1a

    .line 473
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    .line 475
    :cond_1a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMagnification[mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregister(Z)V
    .registers 6
    .param p1, "delete"    # Z

    .line 159
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$000(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 164
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    .line 165
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDisplayId:I

    # invokes: Lcom/android/server/accessibility/MagnificationController;->unregisterCallbackLocked(IZ)V
    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/MagnificationController;->access$300(Lcom/android/server/accessibility/MagnificationController;IZ)V

    .line 167
    :cond_28
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 168
    return-void
.end method

.method unregisterPending(Z)V
    .registers 3
    .param p1, "delete"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mDeleteAfterUnregister:Z

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mUnregisterPending:Z

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->reset(Z)Z

    .line 182
    return-void
.end method

.method updateCurrentSpecWithOffsetsLocked(FF)Z
    .registers 7
    .param p1, "nonNormOffsetX"    # F
    .param p2, "nonNormOffsetY"    # F

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "changed":Z
    nop

    .line 548
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMinOffsetXLocked()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMaxOffsetXLocked()F

    move-result v2

    .line 547
    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 549
    .local v1, "offsetX":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1d

    .line 550
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->offsetX:F

    .line 551
    const/4 v0, 0x1

    .line 553
    :cond_1d
    nop

    .line 554
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMinOffsetYLocked()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getMaxOffsetYLocked()F

    move-result v3

    .line 553
    invoke-static {p2, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 555
    .local v2, "offsetY":F
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_39

    .line 556
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v2, v3, Landroid/view/MagnificationSpec;->offsetY:F

    .line 557
    const/4 v0, 0x1

    .line 559
    :cond_39
    return v0
.end method

.method updateMagnificationRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "magnified"    # Landroid/graphics/Region;

    .line 286
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/MagnificationController;

    # getter for: Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController;->access$100(Lcom/android/server/accessibility/MagnificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 287
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez v1, :cond_d

    .line 289
    monitor-exit v0

    return-void

    .line 291
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 292
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 293
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 296
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 298
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 300
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 302
    :cond_38
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 303
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method updateMagnificationSpecLocked(FFF)Z
    .registers 9
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 491
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 492
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterX()F

    move-result p2

    .line 494
    :cond_a
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 495
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getCenterY()F

    move-result p3

    .line 497
    :cond_14
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 498
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->getScale()F

    move-result p1

    .line 502
    :cond_1e
    const/4 v0, 0x0

    .line 504
    .local v0, "changed":Z
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 505
    .local v1, "normScale":F
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_36

    .line 506
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v1, v2, Landroid/view/MagnificationSpec;->scale:F

    .line 507
    const/4 v0, 0x1

    .line 510
    :cond_36
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    mul-float v4, p2, v1

    sub-float/2addr v2, v4

    .line 512
    .local v2, "nonNormOffsetX":F
    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    mul-float v3, p3, v1

    sub-float/2addr v4, v3

    .line 514
    .local v4, "nonNormOffsetY":F
    invoke-virtual {p0, v2, v4}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 516
    if-eqz v0, :cond_64

    .line 517
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->onMagnificationChangedLocked()V

    .line 520
    :cond_64
    return v0
.end method
