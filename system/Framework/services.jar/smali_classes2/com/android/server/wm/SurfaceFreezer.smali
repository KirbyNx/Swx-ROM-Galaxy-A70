.class Lcom/android/server/wm/SurfaceFreezer;
.super Ljava/lang/Object;
.source "SurfaceFreezer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceFreezer$Freezable;,
        Lcom/android/server/wm/SurfaceFreezer$Snapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceFreezer"


# instance fields
.field private final mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

.field final mEndBounds:Landroid/graphics/Rect;

.field final mFreezeBounds:Landroid/graphics/Rect;

.field private mLeash:Landroid/view/SurfaceControl;

.field mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field mTransitChangeMode:I

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceFreezer$Freezable;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "animatable"    # Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRect:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRectF:Landroid/graphics/RectF;

    .line 82
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mTransitChangeMode:I

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SurfaceFreezer;)Lcom/android/server/wm/SurfaceFreezer$Freezable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SurfaceFreezer;

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    return-object v0
.end method

.method private static createSnapshotBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .registers 8
    .param p0, "target"    # Landroid/view/SurfaceControl;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "cropBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_d

    .line 200
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, v1

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 203
    :cond_d
    const/high16 v1, 0x3f800000    # 1.0f

    .line 204
    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    .line 206
    .local v1, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    goto :goto_1d

    .line 207
    :cond_1c
    move-object v4, v3

    :goto_1d
    nop

    .line 208
    .local v4, "buffer":Landroid/graphics/GraphicBuffer;
    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    if-le v5, v2, :cond_2e

    invoke-virtual {v4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-gt v5, v2, :cond_2d

    goto :goto_2e

    .line 211
    :cond_2d
    return-object v4

    .line 209
    :cond_2e
    :goto_2e
    return-object v3
.end method

.method static synthetic lambda$createTaskSnapshotLocked$0(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "sourceCropRect"    # Landroid/graphics/Rect;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 276
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 291
    invoke-static {p3, p2}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->deltaRotation(II)I

    move-result v0

    .line 292
    .local v0, "deltaRotation":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 296
    return-void
.end method


# virtual methods
.method createTaskSnapshotLocked(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 26
    .param p1, "target"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "sourceCropRect"    # Landroid/graphics/Rect;
    .param p3, "requestedLayer"    # Landroid/view/SurfaceControl;

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 225
    .local v11, "surfaceWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 226
    .local v12, "surfaceHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 227
    .local v13, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x0

    if-eqz v13, :cond_fb

    if-lez v11, :cond_fb

    if-lez v12, :cond_fb

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_1f

    goto/16 :goto_fb

    .line 230
    :cond_1f
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    .line 231
    .local v14, "displayId":I
    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3, v14}, Landroid/hardware/display/DisplayManagerInternal;->getRealDisplayToken(I)Landroid/os/IBinder;

    move-result-object v15

    .line 232
    .local v15, "displayToken":Landroid/os/IBinder;
    if-nez v15, :cond_44

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTaskSnapshotLocked: Cannot found displayToken #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SurfaceFreezer"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v2

    .line 236
    :cond_44
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 237
    .local v10, "displayInfo":Landroid/view/DisplayInfo;
    iget v9, v10, Landroid/view/DisplayInfo;->rotation:I

    .line 239
    .local v9, "rotation":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v8, v3

    .line 242
    .local v8, "finalSourceCropRect":Landroid/graphics/Rect;
    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget v4, v13, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 243
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerServiceExt;->hasOneHandOpSpec(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_91

    .line 244
    invoke-virtual {v8, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_70

    :cond_6f
    move-object v3, v2

    .line 247
    .local v3, "topFullActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_70
    if-eqz v3, :cond_77

    .line 248
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_78

    :cond_77
    nop

    .line 249
    .local v2, "topFullscreenWindow":Lcom/android/server/wm/WindowState;
    :goto_78
    if-eqz v2, :cond_8d

    .line 250
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 251
    .local v4, "offsetX":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 252
    .local v5, "offsetY":I
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 254
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    :cond_8d
    const/4 v2, 0x1

    .line 255
    .end local v3    # "topFullActivity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "useIdentityTransform":Z
    move/from16 v16, v2

    goto :goto_b4

    .line 257
    .end local v2    # "useIdentityTransform":Z
    :cond_91
    const/4 v2, 0x1

    if-eq v9, v2, :cond_99

    const/4 v3, 0x3

    if-ne v9, v3, :cond_98

    goto :goto_99

    :cond_98
    move v2, v4

    .line 258
    .local v2, "isRotated":Z
    :cond_99
    :goto_99
    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRect:Landroid/graphics/Rect;

    .line 259
    if-eqz v2, :cond_a0

    iget v5, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_a2

    :cond_a0
    iget v5, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 260
    :goto_a2
    if-eqz v2, :cond_a7

    iget v6, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_a9

    :cond_a7
    iget v6, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 258
    :goto_a9
    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iget-object v3, v0, Lcom/android/server/wm/SurfaceFreezer;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3, v9, v4, v8}, Lcom/android/server/wm/SurfaceFreezer;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 263
    const/4 v3, 0x0

    move/from16 v16, v3

    .line 268
    .end local v2    # "isRotated":Z
    .local v16, "useIdentityTransform":Z
    :goto_b4
    if-eqz p3, :cond_bb

    .line 269
    move-object/from16 v2, p3

    move-object/from16 v17, v2

    .local v2, "targetLayer":Landroid/view/SurfaceControl;
    goto :goto_df

    .line 271
    .end local v2    # "targetLayer":Landroid/view/SurfaceControl;
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 272
    .restart local v2    # "targetLayer":Landroid/view/SurfaceControl;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 273
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_dd

    .line 275
    new-instance v4, Lcom/android/server/wm/-$$Lambda$SurfaceFreezer$19-h80dF5X7d0y0HLz467-qdAlg;

    invoke-direct {v4, v1}, Lcom/android/server/wm/-$$Lambda$SurfaceFreezer$19-h80dF5X7d0y0HLz467-qdAlg;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 277
    .local v4, "topWindow":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_dd

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_dd

    .line 278
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_df

    .line 283
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "topWindow":Lcom/android/server/wm/WindowState;
    :cond_dd
    move-object/from16 v17, v2

    .end local v2    # "targetLayer":Landroid/view/SurfaceControl;
    .local v17, "targetLayer":Landroid/view/SurfaceControl;
    :goto_df
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object v2, v15

    move-object v3, v8

    move v4, v11

    move v5, v12

    move-object/from16 v6, v17

    move/from16 v7, v16

    move-object/from16 v20, v8

    .end local v8    # "finalSourceCropRect":Landroid/graphics/Rect;
    .local v20, "finalSourceCropRect":Landroid/graphics/Rect;
    move v8, v9

    move/from16 v21, v9

    .end local v9    # "rotation":I
    .local v21, "rotation":I
    move/from16 v9, v18

    move-object/from16 v18, v10

    .end local v10    # "displayInfo":Landroid/view/DisplayInfo;
    .local v18, "displayInfo":Landroid/view/DisplayInfo;
    move/from16 v10, v19

    invoke-static/range {v2 .. v10}, Landroid/view/SurfaceControl;->sec_screenshotToBuffer(Landroid/os/IBinder;Landroid/graphics/Rect;IILandroid/view/SurfaceControl;ZIZZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v2

    return-object v2

    .line 228
    .end local v14    # "displayId":I
    .end local v15    # "displayToken":Landroid/os/IBinder;
    .end local v16    # "useIdentityTransform":Z
    .end local v17    # "targetLayer":Landroid/view/SurfaceControl;
    .end local v18    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v20    # "finalSourceCropRect":Landroid/graphics/Rect;
    .end local v21    # "rotation":I
    :cond_fb
    :goto_fb
    return-object v2
.end method

.method freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "startBounds"    # Landroid/graphics/Rect;

    .line 109
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/SurfaceFreezer;->freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 110
    return-void
.end method

.method freeze(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 27
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "startBounds"    # Landroid/graphics/Rect;
    .param p3, "transitChangeMode"    # I
    .param p4, "endBounds"    # Landroid/graphics/Rect;
    .param p5, "requestedLayer"    # Landroid/view/SurfaceControl;

    .line 115
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move/from16 v10, p3

    iput v10, v7, Lcom/android/server/wm/SurfaceFreezer;->mTransitChangeMode:I

    .line 116
    if-nez v9, :cond_12

    .line 117
    iget-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_17

    .line 119
    :cond_12
    iget-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 123
    :goto_17
    iget-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mFreezeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v11, v7, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v11}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v12

    const/4 v14, 0x2

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    const/16 v19, 0x0

    iget-object v2, v7, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 125
    move-object/from16 v13, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move-object/from16 v20, v2

    invoke-static/range {v11 .. v20}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIIIIZLjava/util/function/Supplier;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 129
    iget-object v1, v7, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    move-object/from16 v11, p1

    invoke-interface {v1, v11, v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 131
    iget-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceFreezer$Freezable;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v12

    .line 132
    .local v12, "freezeTarget":Landroid/view/SurfaceControl;
    if-eqz v12, :cond_7f

    .line 135
    iget-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    move-object/from16 v13, p5

    invoke-virtual {v7, v0, v8, v13}, Lcom/android/server/wm/SurfaceFreezer;->createTaskSnapshotLocked(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v14

    .line 137
    .local v14, "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v14, :cond_81

    invoke-virtual {v14}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 138
    new-instance v15, Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    iget-object v0, v7, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceFactory:Ljava/util/function/Supplier;

    .line 139
    invoke-virtual {v14}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    iget-object v5, v7, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v14}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->containsSecureLayers()Z

    move-result v6

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;-><init>(Lcom/android/server/wm/SurfaceFreezer;Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/GraphicBuffer;Landroid/view/SurfaceControl;Z)V

    iput-object v15, v7, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    goto :goto_81

    .line 132
    .end local v14    # "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_7f
    move-object/from16 v13, p5

    .line 149
    :cond_81
    :goto_81
    return-void
.end method

.method getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method hasLeash()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isChangeTransitModeFromFreeform()Z
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mTransitChangeMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    goto :goto_b

    .line 425
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0
.end method

.method isClosingChangeTransitMode()Z
    .registers 3

    .line 412
    iget v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mTransitChangeMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method takeLeashForAnimation()Landroid/view/SurfaceControl;
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 157
    .local v0, "out":Landroid/view/SurfaceControl;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 158
    return-object v0
.end method

.method unfreeze(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mSnapshot:Lcom/android/server/wm/SurfaceFreezer$Snapshot;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 167
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/SurfaceFreezer$Snapshot;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 171
    :cond_8
    iput v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mTransitChangeMode:I

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_f

    .line 175
    return-void

    .line 177
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 178
    .local v0, "leash":Landroid/view/SurfaceControl;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mLeash:Landroid/view/SurfaceControl;

    .line 179
    iget-object v1, p0, Lcom/android/server/wm/SurfaceFreezer;->mAnimatable:Lcom/android/server/wm/SurfaceFreezer$Freezable;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/wm/SurfaceAnimator;->removeLeash(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$Animatable;Landroid/view/SurfaceControl;Z)Z

    move-result v1

    .line 181
    .local v1, "scheduleAnim":Z
    if-eqz v1, :cond_22

    .line 182
    iget-object v2, p0, Lcom/android/server/wm/SurfaceFreezer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 184
    :cond_22
    return-void
.end method
