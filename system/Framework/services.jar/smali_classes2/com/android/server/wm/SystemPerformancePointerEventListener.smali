.class public Lcom/android/server/wm/SystemPerformancePointerEventListener;
.super Ljava/lang/Object;
.source "SystemPerformancePointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;
    }
.end annotation


# static fields
.field private static final REQUEST_SCROLL_BOOSTER_CHECKING_DURATION:I = 0x1f4

.field private static final REQUEST_SCROLL_BOOSTER_TIMEOUT:I = 0x3e8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mLastAcquireTime:J

.field private mScrollAcquireRunnable:Ljava/lang/Runnable;

.field private mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mScrollReleaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/android/server/wm/SystemPerformancePointerEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->TAG:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    .line 56
    const-string v0, "WM_SCROLL_DETECTED"

    const/16 v1, -0x3e7

    invoke-static {p1, v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 58
    if-eqz v0, :cond_81

    .line 59
    const v1, 0x10002001

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    move-result-object v0

    .line 60
    .local v0, "supportedLittleCoreNum":[I
    iget-object v2, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const v3, 0x10002003

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    move-result-object v2

    .line 61
    .local v2, "supportedCoreNum":[I
    iget-object v4, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const v5, 0x10002005

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    move-result-object v4

    .line 63
    .local v4, "supportedPrimeCoreNum":[I
    if-eqz v2, :cond_77

    array-length v6, v2

    if-lez v6, :cond_77

    .line 64
    iget-object v6, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v6, v3, v8}, Lcom/samsung/android/os/SemDvfsManager;->addRequest(II)V

    .line 66
    if-eqz v4, :cond_58

    array-length v3, v4

    if-lez v3, :cond_58

    .line 67
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v6, v4, v7

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->addRequest(II)V

    .line 69
    :cond_58
    if-eqz v0, :cond_64

    array-length v3, v0

    if-lez v3, :cond_64

    .line 70
    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    aget v5, v0, v7

    invoke-virtual {v3, v1, v5}, Lcom/samsung/android/os/SemDvfsManager;->addRequest(II)V

    .line 72
    :cond_64
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 73
    new-instance v1, Lcom/android/server/wm/-$$Lambda$SystemPerformancePointerEventListener$bcJTHmJ0QPLVNbIet4vKo7CvTGE;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SystemPerformancePointerEventListener$bcJTHmJ0QPLVNbIet4vKo7CvTGE;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iput-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    .line 79
    new-instance v1, Lcom/android/server/wm/-$$Lambda$SystemPerformancePointerEventListener$oHtFiDUJRXupml6H8qVUrT5MIiw;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SystemPerformancePointerEventListener$oHtFiDUJRXupml6H8qVUrT5MIiw;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    iput-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;

    goto :goto_81

    .line 85
    :cond_77
    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->TAG:Ljava/lang/String;

    const-string v3, "SemDvfsManager Not Initialized..."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    .line 90
    .end local v0    # "supportedLittleCoreNum":[I
    .end local v2    # "supportedCoreNum":[I
    .end local v4    # "supportedPrimeCoreNum":[I
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SystemPerformancePointerEventListener$Q9NtuKqWaqhBUkF41Vf5sZv3lEU;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SystemPerformancePointerEventListener$Q9NtuKqWaqhBUkF41Vf5sZv3lEU;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Lcom/samsung/android/os/SemDvfsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SystemPerformancePointerEventListener;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 38
    iget-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/SystemPerformancePointerEventListener;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;
    .param p1, "x1"    # J

    .line 38
    iput-wide p1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollAcquireRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/SystemPerformancePointerEventListener;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SystemPerformancePointerEventListener;

    .line 38
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public synthetic lambda$new$0$SystemPerformancePointerEventListener()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_b

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 78
    :cond_b
    return-void
.end method

.method public synthetic lambda$new$1$SystemPerformancePointerEventListener()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_7

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 83
    :cond_7
    return-void
.end method

.method public synthetic lambda$new$2$SystemPerformancePointerEventListener()V
    .registers 5

    .line 91
    new-instance v0, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;

    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener$PerformaneGestureDetector;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Lcom/android/server/wm/SystemPerformancePointerEventListener$1;)V

    iget-object v3, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/wm/SystemPerformancePointerEventListener$1;-><init>(Lcom/android/server/wm/SystemPerformancePointerEventListener;Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 93
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 101
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    goto :goto_30

    .line 105
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollReleaseRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_30

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mScrollDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/SystemPerformancePointerEventListener;->mLastAcquireTime:J

    .line 113
    :cond_30
    :goto_30
    return-void
.end method
