.class public Lcom/android/server/accessibility/SamsungTouchBlocker;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DEFAULT_PERIOD:F

.field private mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field private mIsBlocking:Z

.field private mIsLastEventDown:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

.field private mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

.field public mTouchBlockingPeriod:F

.field public mTouchBlockingPeriodMilli:J

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string v0, "SamsungTouchBlocker"

    sput-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 92
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 75
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->DEFAULT_PERIOD:F

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 103
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchBlocker$1;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 95
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mUserId:I

    .line 96
    new-instance v1, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mUserId:I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 97
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->start(Landroid/content/ContentResolver;)V

    .line 99
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 101
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchBlocker;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    return p1
.end method

.method private offTapIgnore()V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_8

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    .line 187
    :cond_8
    return-void
.end method

.method private onTapIgnore()V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 171
    new-instance v0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_23

    .line 175
    iget-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    if-eqz v2, :cond_1a

    .line 176
    invoke-virtual {v0, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setIgnoreView(Z)V

    goto :goto_1e

    .line 178
    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setIgnoreView(Z)V

    .line 179
    :goto_1e
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    invoke-virtual {v0, v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    .line 181
    :cond_23
    return-void
.end method

.method private setXY(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 190
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    if-eqz v0, :cond_7

    .line 191
    invoke-virtual {v0, p1, p2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V

    .line 193
    :cond_7
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 2
    .param p1, "inputSource"    # I

    .line 214
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 205
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 219
    invoke-virtual {v0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->destroy()V

    .line 220
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 222
    :cond_a
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    if-eqz v0, :cond_13

    .line 223
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->stop()V

    .line 224
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 226
    :cond_13
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 199
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 201
    :cond_7
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 121
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_31

    .line 122
    if-eqz v0, :cond_21

    if-eq v0, v3, :cond_1d

    if-eq v0, v2, :cond_11

    goto :goto_30

    .line 127
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 128
    goto :goto_30

    .line 124
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    .line 125
    goto :goto_30

    .line 130
    :cond_21
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 132
    nop

    .line 136
    :goto_30
    return-void

    .line 139
    :cond_31
    if-eqz v0, :cond_5f

    if-eq v0, v3, :cond_44

    if-eq v0, v2, :cond_38

    goto :goto_70

    .line 150
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 151
    goto :goto_70

    .line 141
    :cond_44
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->offTapIgnore()V

    .line 142
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    if-eqz v1, :cond_70

    .line 143
    sget-object v1, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    const-string v4, "Touch Blocker is activated"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 146
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    goto :goto_70

    .line 153
    :cond_5f
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 154
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 156
    nop

    .line 160
    :cond_70
    :goto_70
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_95

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_90

    .line 162
    sget-object v1, Lcom/android/server/accessibility/SamsungTouchBlocker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inject this event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_90
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 166
    :cond_95
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 209
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 210
    return-void
.end method
