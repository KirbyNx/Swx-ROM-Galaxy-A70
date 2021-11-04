.class public Lcom/android/server/accessibility/SamsungSlowKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungSlowKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MESSAGE_SLOW_KEY_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SamsungSlowKeys"


# instance fields
.field private final DEFAULT_PERIOD:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentKeyEvent:Landroid/view/KeyEvent;

.field public final mHandler:Landroid/os/Handler;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicyFlags:I

.field private mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

.field private mSlowKeysPeriod:F

.field private mSlowKeysPeriodMilli:J

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 52
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 24
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->DEFAULT_PERIOD:F

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 36
    new-instance v1, Lcom/android/server/accessibility/SamsungSlowKeys$1;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungSlowKeys$1;-><init>(Lcom/android/server/accessibility/SamsungSlowKeys;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mUserId:I

    .line 55
    new-instance v1, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    iget v2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mUserId:I

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;-><init>(Lcom/android/server/accessibility/SamsungSlowKeys;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    .line 56
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->start(Landroid/content/ContentResolver;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/SamsungSlowKeys;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 19
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungSlowKeys;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungSlowKeys;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 19
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungSlowKeys;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 19
    iget v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungSlowKeys;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;

    .line 19
    iget v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriod:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/accessibility/SamsungSlowKeys;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;
    .param p1, "x1"    # F

    .line 19
    iput p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriod:F

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/accessibility/SamsungSlowKeys;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungSlowKeys;
    .param p1, "x1"    # J

    .line 19
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J

    return-wide p1
.end method

.method private debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 99
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 100
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 102
    :cond_7
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 88
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 90
    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    if-eqz v0, :cond_10

    .line 108
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;->stop()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysObserver:Lcom/android/server/accessibility/SamsungSlowKeys$SlowKeysObserver;

    .line 111
    :cond_10
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 65
    .local v0, "action":I
    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 66
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 67
    iput p2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mPolicyFlags:I

    .line 68
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mSlowKeysPeriodMilli:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void

    .line 72
    :cond_13
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    if-nez v2, :cond_23

    .line 74
    invoke-interface {v1, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 76
    :cond_23
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 81
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 83
    :cond_7
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 94
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 95
    return-void
.end method
