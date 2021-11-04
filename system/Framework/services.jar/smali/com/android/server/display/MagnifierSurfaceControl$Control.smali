.class Lcom/android/server/display/MagnifierSurfaceControl$Control;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Control"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Control"


# instance fields
.field private final DEBUG:Z

.field private mButtonBgLeftRightWidth:I

.field private mButtonBottomMargin:I

.field private mButtonHeight:I

.field private mButtonIconSize:I

.field private mButtonTopMargin:I

.field private mButtonWidth:I

.field private mContext:Landroid/content/Context;

.field private mControlFxSession:Landroid/view/SurfaceSession;

.field final mControlLock:Ljava/lang/Object;

.field private mControlSurface:Landroid/view/Surface;

.field private mControlSurfaceControl:Landroid/view/SurfaceControl;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableCloseBG:Landroid/graphics/drawable/Drawable;

.field private mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

.field private mDrawableHorizontalLockBG:Landroid/graphics/drawable/Drawable;

.field private mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

.field private mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 423
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v0, "OverlayMagnifierControl"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 396
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->DEBUG:Z

    .line 397
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    .line 401
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    .line 412
    iput v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    .line 413
    iput v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    .line 414
    iput v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    .line 415
    iput v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    .line 416
    iput v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    .line 417
    iput v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    .line 424
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    iput-object v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    .line 425
    new-instance v7, Landroid/view/SurfaceSession;

    invoke-direct {v7}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlFxSession:Landroid/view/SurfaceSession;

    .line 426
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501c8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501c5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501c4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBottomMargin:I

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501c7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    .line 437
    const/4 v7, -0x2

    if-lt v3, v5, :cond_8a

    if-ge v4, v5, :cond_b4

    .line 438
    :cond_8a
    :try_start_8a
    const-string v8, "Magnifier.Control"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v8, v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_8a .. :try_end_ae} :catch_114
    .catchall {:try_start_8a .. :try_end_ae} :catchall_10f

    .line 439
    if-ge v3, v5, :cond_b1

    const/4 v3, 0x1

    .line 440
    .end local p3    # "width":I
    .local v3, "width":I
    :cond_b1
    if-ge v4, v5, :cond_b4

    const/4 v4, 0x1

    .line 443
    .end local p4    # "height":I
    .local v4, "height":I
    :cond_b4
    :try_start_b4
    new-instance v8, Landroid/view/SurfaceControl$Builder;

    iget-object v9, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v8, v9}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 444
    invoke-virtual {v8, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    .line 445
    invoke-virtual {v8, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    .line 446
    invoke-virtual {v8, v7}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    const v9, -0x7ffffffc

    .line 447
    invoke-virtual {v8, v9}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    .line 448
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    .line 449
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    .line 450
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1500()I

    move-result v10

    .line 449
    invoke-static {v8, v9, v10, v0}, Lcom/android/server/display/MagnifierSurfaceControl;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 451
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_e5
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b4 .. :try_end_e5} :catch_10b
    .catchall {:try_start_b4 .. :try_end_e5} :catchall_106

    move/from16 v9, p2

    :try_start_e7
    invoke-virtual {v0, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 452
    iget-object v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 453
    iget-object v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    iget-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v8}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 454
    iget-object v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const v8, 0x1e8480

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_103
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_e7 .. :try_end_103} :catch_104
    .catchall {:try_start_e7 .. :try_end_103} :catchall_342

    goto :goto_11a

    .line 455
    :catch_104
    move-exception v0

    goto :goto_117

    .line 458
    :catchall_106
    move-exception v0

    move/from16 v9, p2

    goto/16 :goto_343

    .line 455
    :catch_10b
    move-exception v0

    move/from16 v9, p2

    goto :goto_117

    .line 458
    .end local v3    # "width":I
    .end local v4    # "height":I
    .restart local p3    # "width":I
    .restart local p4    # "height":I
    :catchall_10f
    move-exception v0

    move/from16 v9, p2

    goto/16 :goto_343

    .line 455
    :catch_114
    move-exception v0

    move/from16 v9, p2

    .line 456
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v3    # "width":I
    .restart local v4    # "height":I
    :goto_117
    :try_start_117
    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_342

    .line 458
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_11a
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 459
    nop

    .line 461
    iput-object v2, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x10800d9

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 467
    iget-object v0, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v8, "hover_zoom_magnifier_size"

    invoke-static {v0, v8, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 468
    .local v0, "size":I
    if-nez v0, :cond_14a

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x10800dc

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    goto :goto_167

    .line 470
    :cond_14a
    if-ne v0, v5, :cond_15a

    .line 471
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x10800db

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    goto :goto_167

    .line 473
    :cond_15a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x10800da

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    .line 476
    :goto_167
    iget-object v8, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "magnifier_window_horizontal_focus_lock"

    invoke-static {v8, v10, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 477
    .local v7, "horizontalLocked":I
    if-ne v7, v5, :cond_184

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10800d6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    goto :goto_191

    .line 480
    :cond_184
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10800d7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    .line 483
    :goto_191
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_200

    .line 484
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v8, v11

    iget v12, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    sub-int/2addr v8, v12

    iget v13, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    sub-int v14, v13, v10

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v3, 0x2

    div-int/lit8 v16, v10, 0x2

    sub-int v15, v15, v16

    sub-int/2addr v15, v11

    add-int/2addr v15, v10

    sub-int/2addr v15, v12

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    invoke-virtual {v5, v8, v14, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 485
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    sub-int v12, v11, v10

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v3, 0x2

    div-int/lit8 v14, v10, 0x2

    sub-int/2addr v13, v14

    add-int/2addr v13, v10

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    invoke-virtual {v5, v8, v12, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 486
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    add-int/2addr v8, v11

    iget v12, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    add-int/2addr v8, v12

    iget v13, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    sub-int v14, v13, v10

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v3, 0x2

    div-int/lit8 v16, v10, 0x2

    sub-int v15, v15, v16

    add-int/2addr v15, v11

    add-int/2addr v15, v10

    add-int/2addr v15, v12

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    invoke-virtual {v5, v8, v14, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_266

    .line 488
    :cond_200
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    sub-int/2addr v8, v11

    iget v12, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    sub-int/2addr v8, v12

    iget v13, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    sub-int v14, v13, v10

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v3, 0x2

    div-int/lit8 v16, v10, 0x2

    sub-int v15, v15, v16

    sub-int/2addr v15, v11

    add-int/2addr v15, v10

    sub-int/2addr v15, v12

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    invoke-virtual {v5, v8, v14, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    sub-int v12, v11, v10

    div-int/lit8 v12, v12, 0x2

    div-int/lit8 v13, v3, 0x2

    div-int/lit8 v14, v10, 0x2

    sub-int/2addr v13, v14

    add-int/2addr v13, v10

    sub-int/2addr v11, v10

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v10

    invoke-virtual {v5, v8, v12, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    iget-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonIconSize:I

    div-int/lit8 v11, v10, 0x2

    sub-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    add-int/2addr v8, v11

    iget v12, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    add-int/2addr v8, v12

    iget v13, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    sub-int v14, v13, v10

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v3, 0x2

    div-int/lit8 v16, v10, 0x2

    sub-int v15, v15, v16

    add-int/2addr v15, v11

    add-int/2addr v15, v10

    add-int/2addr v15, v12

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    invoke-virtual {v5, v8, v14, v15, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 493
    :goto_266
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10800d8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    .line 494
    div-int/lit8 v10, v3, 0x2

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    div-int/lit8 v12, v11, 0x2

    sub-int/2addr v10, v12

    iget v12, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    sub-int/2addr v10, v12

    sub-int/2addr v10, v11

    div-int/lit8 v13, v3, 0x2

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v13, v11

    sub-int/2addr v13, v12

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    invoke-virtual {v5, v10, v6, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLockBG:Landroid/graphics/drawable/Drawable;

    .line 497
    div-int/lit8 v10, v3, 0x2

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    div-int/lit8 v12, v11, 0x2

    sub-int/2addr v10, v12

    div-int/lit8 v12, v3, 0x2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v12, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    invoke-virtual {v5, v10, v6, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableCloseBG:Landroid/graphics/drawable/Drawable;

    .line 500
    div-int/lit8 v8, v3, 0x2

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonWidth:I

    div-int/lit8 v11, v10, 0x2

    add-int/2addr v8, v11

    iget v11, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonBgLeftRightWidth:I

    add-int/2addr v8, v11

    div-int/lit8 v12, v3, 0x2

    div-int/lit8 v13, v10, 0x2

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v12, v10

    iget v10, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonHeight:I

    invoke-virtual {v5, v8, v6, v12, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_sec_active_themepackage"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "theme_package":Ljava/lang/String;
    if-eqz v5, :cond_2dc

    if-eqz v5, :cond_2f9

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f9

    .line 505
    :cond_2dc
    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 506
    const v6, 0x106024c

    const-string/jumbo v8, "sem_btn_default_text_color_light"

    invoke-direct {v1, v2, v5, v8, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {v6}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1702(I)I

    .line 507
    const v6, 0x1060248

    const-string/jumbo v8, "sem_btn_background_color_light"

    invoke-direct {v1, v2, v5, v8, v6}, Lcom/android/server/display/MagnifierSurfaceControl$Control;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I
    invoke-static {v6}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1802(I)I

    .line 509
    :cond_2f9
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mThemePackage:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1600()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_341

    .line 510
    iget-object v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 511
    iget-object v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 512
    iget-object v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwPrimaryTextColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 513
    iget-object v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 514
    iget-object v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLockBG:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 515
    iget-object v6, v1, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableCloseBG:Landroid/graphics/drawable/Drawable;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTwScreenBackgroundColorLight:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()I

    move-result v8

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 517
    :cond_341
    return-void

    .line 458
    .end local v0    # "size":I
    .end local v5    # "theme_package":Ljava/lang/String;
    .end local v7    # "horizontalLocked":I
    :catchall_342
    move-exception v0

    :goto_343
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 459
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 420
    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Control;-><init>(Landroid/content/Context;III)V

    .line 421
    return-void
.end method

.method private getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme_package"    # Ljava/lang/String;
    .param p3, "color_name"    # Ljava/lang/String;
    .param p4, "colorid"    # I

    .line 520
    const-string v0, ".common"

    const-string v1, "Magnifier.Control"

    if-eqz p2, :cond_78

    .line 522
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "color"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p3, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 523
    .local v2, "color_id":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 524
    .local v0, "color":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getColor, color  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_62} :catch_6e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_62} :catch_63

    .line 525
    return v0

    .line 529
    .end local v0    # "color":I
    .end local v2    # "color_id":I
    :catch_63
    move-exception v0

    .line 530
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 531
    const-string/jumbo v2, "getColor, Resources.NotFoundException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 526
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_6e
    move-exception v0

    .line 527
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 528
    const-string/jumbo v2, "getColor, PackageManager.NameNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_78
    :goto_78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    .line 617
    .local v0, "layout_dir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method


# virtual methods
.method public dismiss()V
    .registers 5

    .line 596
    const-string v0, "Magnifier.Control"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_a
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_38

    .line 601
    :try_start_d
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 602
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 603
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    .line 605
    :cond_19
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2c

    .line 606
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 607
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_32

    .line 610
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 611
    nop

    .line 612
    monitor-exit v0

    .line 613
    return-void

    .line 610
    :catchall_32
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 611
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Control;
    throw v1

    .line 612
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Control;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public hide()V
    .registers 4

    .line 580
    const-string v0, "Magnifier.Control"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    .line 584
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_28

    .line 586
    :try_start_11
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 587
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_22

    .line 589
    :try_start_1c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 590
    nop

    .line 591
    monitor-exit v0

    .line 592
    return-void

    .line 589
    :catchall_22
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 590
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Control;
    throw v1

    .line 591
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Control;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public isShowing()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    return v0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .registers 8
    .param p1, "pt"    # Landroid/graphics/Point;

    .line 538
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "alpha":I
    :try_start_4
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    if-ge v2, v3, :cond_1f

    .line 541
    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    .line 542
    .end local v1    # "alpha":I
    .local v2, "alpha":I
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2d

    .line 545
    .end local v2    # "alpha":I
    .restart local v1    # "alpha":I
    :cond_1f
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mButtonTopMargin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 547
    .end local v1    # "alpha":I
    :goto_2d
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public show()V
    .registers 5

    .line 556
    const-string v0, "Magnifier.Control"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mShowing:Z

    .line 560
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 561
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSizeBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLockBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 563
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableCloseBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 564
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 565
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableWindowSize:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 566
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mDrawableHorizontalLock:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 567
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 568
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_53

    .line 570
    :try_start_3b
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 571
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Control;->mControlSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_4d

    .line 573
    :try_start_47
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 574
    nop

    .line 575
    .end local v1    # "c":Landroid/graphics/Canvas;
    monitor-exit v0

    .line 576
    return-void

    .line 573
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :catchall_4d
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 574
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Control;
    throw v2

    .line 575
    .end local v1    # "c":Landroid/graphics/Canvas;
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Control;
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_53

    throw v1
.end method
