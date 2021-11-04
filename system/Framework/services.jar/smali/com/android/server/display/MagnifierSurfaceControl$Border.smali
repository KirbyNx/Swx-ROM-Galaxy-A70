.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"


# instance fields
.field private final DEBUG:Z

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field private mDrawableBorder:Landroid/graphics/drawable/Drawable;

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 639
    const-string v0, "OverlayMagnifierBorder"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->DEBUG:Z

    .line 624
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 628
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    .line 629
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    .line 640
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 641
    new-instance v3, Landroid/view/SurfaceSession;

    invoke-direct {v3}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    .line 642
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 644
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    .line 647
    if-lt p3, v1, :cond_30

    if-ge p4, v1, :cond_55

    .line 648
    :cond_30
    :try_start_30
    const-string v3, "Magnifier.Border"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-ge p3, v1, :cond_52

    const/4 p3, 0x1

    .line 650
    :cond_52
    if-ge p4, v1, :cond_55

    const/4 p4, 0x1

    .line 653
    :cond_55
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    invoke-direct {v1, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 654
    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 655
    invoke-virtual {v1, p3, p4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const/4 v3, -0x2

    .line 656
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const v3, -0x7ffffffc

    .line 657
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    .line 659
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 660
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mCurrentDisplayId:I
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1500()I

    move-result v4

    .line 659
    invoke-static {v1, v3, v4, v0}, Lcom/android/server/display/MagnifierSurfaceControl;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 661
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 662
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 663
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_a3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_30 .. :try_end_a3} :catch_a6
    .catchall {:try_start_30 .. :try_end_a3} :catchall_a4

    goto :goto_aa

    .line 668
    :catchall_a4
    move-exception v0

    goto :goto_bf

    .line 665
    :catch_a6
    move-exception v0

    .line 666
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_a7
    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_a4

    .line 668
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_aa
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 669
    nop

    .line 671
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080641

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableBorder:Landroid/graphics/drawable/Drawable;

    .line 672
    invoke-virtual {v0, v2, v2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 673
    return-void

    .line 668
    :goto_bf
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 669
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/MagnifierDisplayPolicy;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 636
    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;III)V

    .line 637
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 5

    .line 722
    const-string v0, "Magnifier.Border"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_a
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_38

    .line 727
    :try_start_d
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 728
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->destroy()V

    .line 729
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 731
    :cond_19
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2c

    .line 732
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mTransaction:Landroid/view/SurfaceControl$Transaction;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1400()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 733
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_32

    .line 736
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 737
    nop

    .line 738
    monitor-exit v0

    .line 739
    return-void

    .line 736
    :catchall_32
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 737
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Border;
    throw v1

    .line 738
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Border;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getPadding()Landroid/graphics/Rect;
    .registers 2

    .line 676
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .registers 4

    .line 706
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    const/4 v1, 0x0

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 710
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_28

    .line 712
    :try_start_11
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 713
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_22

    .line 715
    :try_start_1c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 716
    nop

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 715
    :catchall_22
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 716
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Border;
    throw v1

    .line 717
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Border;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .registers 6
    .param p1, "pt"    # Landroid/graphics/Point;

    .line 680
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 682
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public show()V
    .registers 5

    .line 687
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 691
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 692
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 693
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 694
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_3a

    .line 696
    :try_start_22
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 697
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_34

    .line 699
    :try_start_2e
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 700
    nop

    .line 701
    .end local v1    # "c":Landroid/graphics/Canvas;
    monitor-exit v0

    .line 702
    return-void

    .line 699
    .restart local v1    # "c":Landroid/graphics/Canvas;
    :catchall_34
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 700
    nop

    .end local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Border;
    throw v2

    .line 701
    .end local v1    # "c":Landroid/graphics/Canvas;
    .restart local p0    # "this":Lcom/android/server/display/MagnifierSurfaceControl$Border;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw v1
.end method
