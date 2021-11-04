.class Lcom/android/server/wm/TaskScreenshotAnimatable;
.super Ljava/lang/Object;
.source "TaskScreenshotAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskScreenshotAnim"


# instance fields
.field private mHeight:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTask:Lcom/android/server/wm/Task;

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/util/function/Function;Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .registers 16
    .param p2, "task"    # Lcom/android/server/wm/Task;
    .param p3, "screenshotBuffer"    # Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/SurfaceSession;",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Lcom/android/server/wm/Task;",
            "Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "surfaceControlFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/view/SurfaceSession;Landroid/view/SurfaceControl$Builder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p3, :cond_7

    .line 45
    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 46
    .local v0, "buffer":Landroid/graphics/GraphicBuffer;
    :goto_b
    iput-object p2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    .line 47
    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v2

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    iput v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    .line 48
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v2

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 49
    sget-boolean v2, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v2, :cond_4f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget v3, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    int-to-long v3, v3

    .local v3, "protoLogParam1":J
    iget v5, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    int-to-long v5, v5

    .local v5, "protoLogParam2":J
    sget-object v7, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/server/wm/ProtoLogGroup;

    const v8, 0x76489e36

    const/16 v9, 0x14

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    const/4 v1, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v1

    const-string v1, "Creating TaskScreenshotAnimatable: task: %s width: %d height: %d"

    invoke-static {v7, v8, v9, v1, v10}, Lcom/android/server/protolog/ProtoLogImpl;->d(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":J
    .end local v5    # "protoLogParam2":J
    :cond_4f
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Builder;

    .line 53
    const-string v2, "RecentTaskScreenshotSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    iget v3, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 54
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 55
    const-string v2, "TaskScreenshotAnimatable"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 57
    if-eqz v0, :cond_a2

    .line 58
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 59
    .local v1, "surface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 60
    invoke-virtual {p3}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 61
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 63
    .local v3, "scale":F
    iget-object v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 65
    .end local v1    # "surface":Landroid/view/Surface;
    .end local v3    # "scale":F
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 66
    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 76
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 113
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 81
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 89
    :cond_a
    return-void
.end method
