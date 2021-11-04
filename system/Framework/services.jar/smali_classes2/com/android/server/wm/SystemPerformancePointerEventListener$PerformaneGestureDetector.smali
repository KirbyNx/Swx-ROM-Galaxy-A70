.class final Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemPerformancePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SystemPerformancePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformaneGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Lcom/android/server/wm/SystemPerformancePointerEventListener$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;
    .param p2, "x1"    # Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 122
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$000(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 124
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v3

    const/high16 v4, 0x42b40000    # 90.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_72

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$100(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 125
    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$200(Lcom/android/server/wm/SystemPerformancePointerEventListener;)J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-ltz v3, :cond_72

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 126
    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$300(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$400(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 127
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$500(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$300(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$500(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$400(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # setter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J
    invoke-static {v3, v0, v1}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$202(Lcom/android/server/wm/SystemPerformancePointerEventListener;J)J

    .line 130
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$500(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;->this$0:Lcom/android/server/wm/SystemPerformancePointerEventListener;

    # getter for: Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/server/wm/SystemPerformancePointerEventListener;->access$300(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_72
    const/4 v3, 0x1

    return v3
.end method
