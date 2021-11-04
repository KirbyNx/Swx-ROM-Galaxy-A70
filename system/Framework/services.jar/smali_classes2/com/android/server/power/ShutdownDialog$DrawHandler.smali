.class Lcom/android/server/power/ShutdownDialog$DrawHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawHandler"
.end annotation


# instance fields
.field private finished:Z

.field private maxSleep:I

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 682
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->init()V

    .line 683
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 691
    const-string v0, "ShutdownDialog"

    const-string v1, "DrawHandler.handleMessage"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_13

    .line 693
    iget v0, p1, Landroid/os/Message;->what:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    .line 694
    return-void

    .line 695
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_23

    .line 696
    const-string v0, "ShutdownDialog"

    const-string v1, "frame load finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iput-boolean v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    .line 698
    return-void

    .line 702
    :cond_23
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2300(Lcom/android/server/power/ShutdownDialog;)I

    move-result v1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_13a

    .line 703
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 705
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 706
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 707
    .local v0, "displayDeviceType":I
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    .line 708
    .local v1, "isFolded":Z
    if-nez v0, :cond_81

    .line 709
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 710
    const-string v3, "ShutdownDialog"

    const-string/jumbo v4, "main image draw"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ff

    .line 711
    :cond_81
    const/4 v3, 0x5

    if-ne v0, v3, :cond_a4

    .line 712
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->subbitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 713
    const-string v3, "ShutdownDialog"

    const-string/jumbo v4, "sub image draw"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 714
    :cond_a4
    if-nez v1, :cond_c6

    .line 715
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 716
    const-string v3, "ShutdownDialog"

    const-string/jumbo v4, "main image draw"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 717
    :cond_c6
    if-eqz v1, :cond_ff

    .line 718
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->subImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->subbitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->subDialog:Landroid/app/Presentation;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/app/Presentation;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->subImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 720
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->subDialog:Landroid/app/Presentation;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/app/Presentation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Presentation;->show()V

    .line 721
    const-string v3, "ShutdownDialog"

    const-string/jumbo v4, "sub image draw"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "displayDeviceType":I
    .end local v1    # "isFolded":Z
    :cond_ff
    :goto_ff
    goto :goto_117

    .line 724
    :cond_100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 726
    :goto_117
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 727
    :try_start_11e
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0x3

    # setter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v1, v3}, Lcom/android/server/power/ShutdownDialog;->access$2502(Lcom/android/server/power/ShutdownDialog;I)I

    .line 728
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 729
    monitor-exit v0

    goto :goto_15d

    :catchall_137
    move-exception v1

    monitor-exit v0
    :try_end_139
    .catchall {:try_start_11e .. :try_end_139} :catchall_137

    throw v1

    .line 732
    :cond_13a
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    if-eqz v0, :cond_147

    .line 733
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "image draw finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 736
    :cond_147
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "image buffer not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 740
    :goto_15d
    return-void
.end method

.method public init()V
    .registers 2

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    .line 687
    return-void
.end method
