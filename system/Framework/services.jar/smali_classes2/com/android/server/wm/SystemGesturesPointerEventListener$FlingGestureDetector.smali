.class final Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field private mOverscroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SystemGesturesPointerEventListener;)V
    .registers 3

    .line 346
    iput-object p1, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 347
    new-instance v0, Landroid/widget/OverScroller;

    # getter for: Lcom/android/server/wm/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$000(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    .line 348
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 20
    .param p1, "down"    # Landroid/view/MotionEvent;
    .param p2, "up"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 360
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 363
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_29

    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$100(Lcom/android/server/wm/SystemGesturesPointerEventListener;)J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    cmp-long v3, v1, v5

    if-lez v3, :cond_29

    .line 364
    iget-object v3, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 366
    :cond_29
    iget-object v5, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p3

    float-to-int v8, v3

    move/from16 v14, p4

    float-to-int v9, v14

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/high16 v12, -0x80000000

    const v13, 0x7fffffff

    invoke-virtual/range {v5 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 368
    iget-object v5, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getDuration()I

    move-result v5

    .line 369
    .local v5, "duration":I
    const/16 v6, 0x1388

    if-le v5, v6, :cond_4c

    .line 370
    const/16 v5, 0x1388

    .line 372
    :cond_4c
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    # setter for: Lcom/android/server/wm/SystemGesturesPointerEventListener;->mLastFlingTime:J
    invoke-static {v6, v1, v2}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$102(Lcom/android/server/wm/SystemGesturesPointerEventListener;J)J

    .line 375
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 378
    iget-object v6, v0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/wm/SystemGesturesPointerEventListener;

    # getter for: Lcom/android/server/wm/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;
    invoke-static {v6}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->access$200(Lcom/android/server/wm/SystemGesturesPointerEventListener;)Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    .line 379
    return v4
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/SystemGesturesPointerEventListener$FlingGestureDetector;->mOverscroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 355
    :cond_e
    return v1
.end method
