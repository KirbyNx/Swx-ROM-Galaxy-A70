.class public Lcom/android/server/accessibility/SamsungBounceKeys;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungBounceKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_PERIOD:F

.field private mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

.field private mBounceKeysPeriod:F

.field private mBounceKeysPeriodMilli:J

.field private mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field private mIsBlocking:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mOldKeyCode:I

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-string v0, "SamsungBounceKeys"

    sput-object v0, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 41
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 23
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->DEFAULT_PERIOD:F

    .line 27
    new-instance v0, Lcom/android/server/accessibility/SamsungBounceKeys$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungBounceKeys$1;-><init>(Lcom/android/server/accessibility/SamsungBounceKeys;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    .line 42
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mUserId:I

    .line 44
    new-instance v0, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    iget v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;-><init>(Lcom/android/server/accessibility/SamsungBounceKeys;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    .line 45
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->start(Landroid/content/ContentResolver;)V

    .line 47
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    .line 49
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/SamsungBounceKeys;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungBounceKeys;
    .param p1, "x1"    # Z

    .line 20
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungBounceKeys;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungBounceKeys;

    .line 20
    iget v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriod:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/accessibility/SamsungBounceKeys;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungBounceKeys;
    .param p1, "x1"    # F

    .line 20
    iput p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriod:F

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/accessibility/SamsungBounceKeys;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungBounceKeys;
    .param p1, "x1"    # J

    .line 20
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    return-wide p1
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2
    .param p1, "inputSource"    # I

    .line 93
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    if-eqz v0, :cond_10

    .line 99
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;->stop()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysObserver:Lcom/android/server/accessibility/SamsungBounceKeys$BounceKeysObserver;

    .line 102
    :cond_10
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 62
    .local v1, "keyCode":I
    sget-object v2, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyEvent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mIsBlocking : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mOldKeyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_51

    .line 65
    iget v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    if-ne v2, v1, :cond_51

    .line 66
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 67
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    return-void

    .line 71
    :cond_51
    const/4 v2, 0x1

    if-ne v0, v2, :cond_66

    .line 72
    sget-object v4, Lcom/android/server/accessibility/SamsungBounceKeys;->TAG:Ljava/lang/String;

    const-string v5, "BounceKeys is activated"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mHandler:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mBounceKeysPeriodMilli:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    iput v1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mOldKeyCode:I

    .line 75
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mIsBlocking:Z

    .line 77
    :cond_66
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_6d

    .line 78
    invoke-interface {v2, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 80
    :cond_6d
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 53
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 54
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 56
    :cond_7
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 88
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 89
    return-void
.end method
