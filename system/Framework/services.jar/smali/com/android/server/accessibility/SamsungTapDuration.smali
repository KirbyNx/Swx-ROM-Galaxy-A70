.class public Lcom/android/server/accessibility/SamsungTapDuration;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "SamsungTapDuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_THRESHOLD:F = 0.1f

.field private static final MAX_ARRAY_SIZE:I = 0x4

.field private static final MESSAGE_ON_ACTION_TAP:I = 0x1

.field private static final MULTI_FINGER_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SamsungTapDuration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownEvent:[Landroid/view/MotionEvent;

.field private mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public final mHandler:Landroid/os/Handler;

.field private mHoldingState:Z

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPolicyFlags:[I

.field private mRawEvent:[Landroid/view/MotionEvent;

.field private mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

.field public mTapDurationThreshold:F

.field public mTapDurationThresholdMilli:J

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 52
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    .line 40
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    .line 41
    new-array v1, v0, [Landroid/view/MotionEvent;

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 48
    new-array v0, v0, [Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 60
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTapDuration$1;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mUserId:I

    .line 55
    new-instance v0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;-><init>(Lcom/android/server/accessibility/SamsungTapDuration;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 56
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->start(Landroid/content/ContentResolver;)V

    .line 57
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTapDuration;->createDurationProgress()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/SamsungTapDuration;)[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungTapDuration;)[Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/SamsungTapDuration;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;

    .line 28
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/SamsungTapDuration;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/SamsungTapDuration;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;
    .param p1, "x1"    # I

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/accessibility/SamsungTapDuration;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTapDuration;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    return p1
.end method

.method private clearMotionEvents(I)V
    .registers 5
    .param p1, "id"    # I

    .line 246
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 247
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 248
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    aput-object v2, v0, p1

    .line 250
    :cond_10
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1f

    .line 251
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 252
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    aput-object v2, v0, p1

    .line 254
    :cond_1f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 255
    return-void
.end method

.method private createDurationProgress()V
    .registers 6

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_17

    .line 259
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v2, v1, v0

    if-nez v2, :cond_14

    .line 260
    new-instance v2, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 258
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_26

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inject this event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungTapDuration"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_21
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 243
    :cond_26
    return-void
.end method

.method private setXY(FFI)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .line 267
    const/4 v0, 0x3

    if-le p3, v0, :cond_c

    .line 268
    const-string v0, "SamsungTapDuration"

    const-string/jumbo v1, "setXY()_pointerId is invalid!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v1, v0, p3

    if-eqz v1, :cond_17

    .line 273
    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->updateView(FF)V

    .line 275
    :cond_17
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 216
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 218
    :cond_7
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 203
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 204
    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 206
    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    const/4 v0, 0x0

    .local v0, "pointerId":I
    :goto_7
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1d

    .line 225
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v3, v1, v0

    if-eqz v3, :cond_1a

    .line 226
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->destroy()V

    .line 227
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aput-object v2, v1, v0

    .line 224
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 230
    .end local v0    # "pointerId":I
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    if-eqz v0, :cond_26

    .line 231
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->stop()V

    .line 232
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationObserver:Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;

    .line 234
    :cond_26
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_7

    .line 197
    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 199
    :cond_7
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 100
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 101
    .local v1, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 103
    .local v2, "pointerCount":I
    const/4 v3, 0x3

    if-gt v2, v3, :cond_116

    if-lt v1, v3, :cond_13

    goto/16 :goto_116

    .line 107
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 108
    .local v3, "action":I
    const/4 v4, 0x4

    const-string v5, "SamsungTapDuration"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_c2

    if-eq v3, v6, :cond_94

    const/4 v4, 0x2

    if-eq v3, v4, :cond_76

    const/4 v4, 0x5

    if-eq v3, v4, :cond_43

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2b

    goto/16 :goto_115

    .line 161
    :cond_2b
    iget-boolean v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v4, :cond_33

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 163
    return-void

    .line 165
    :cond_33
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 166
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v5, v4, v1

    if-eqz v5, :cond_115

    .line 167
    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    goto/16 :goto_115

    .line 136
    :cond_43
    iget-boolean v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v4, :cond_4a

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 141
    :cond_4a
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    aput-object v5, v4, v1

    .line 142
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    aput-object v5, v4, v1

    .line 143
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, v4, v1

    .line 145
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v5, v4, v1

    if-eqz v5, :cond_69

    .line 146
    aget-object v4, v4, v1

    invoke-virtual {v4, v6}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    .line 148
    :cond_69
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    .line 150
    goto/16 :goto_115

    .line 152
    :cond_76
    iget-boolean v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v4, :cond_7d

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 155
    :cond_7d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7e
    if-ge v4, v2, :cond_92

    .line 156
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 159
    .end local v4    # "i":I
    :cond_92
    goto/16 :goto_115

    .line 171
    :cond_94
    iget-boolean v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    if-nez v8, :cond_9b

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTapDuration;->onActionTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 176
    :cond_9b
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 178
    const-string v6, "Finish checking if this tap is valid "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTapDuration;->clearMotionEvents(I)V

    .line 182
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ab
    if-ge v5, v4, :cond_115

    .line 183
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v8, v6, v5

    if-eqz v8, :cond_bf

    .line 184
    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->stopAnimation()V

    .line 185
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    .line 182
    :cond_bf
    add-int/lit8 v5, v5, 0x1

    goto :goto_ab

    .line 110
    .end local v5    # "i":I
    :cond_c2
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHoldingState:Z

    .line 111
    const-string v8, "Start checking if this tap is valid "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDownEvent:[Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    aput-object v8, v5, v7

    .line 115
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mRawEvent:[Landroid/view/MotionEvent;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    aput-object v8, v5, v7

    .line 116
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mPolicyFlags:[I

    aput p3, v5, v7

    .line 119
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mHandler:Landroid/os/Handler;

    iget-wide v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e5
    if-ge v5, v4, :cond_fe

    .line 123
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v9, v8, v5

    if-eqz v9, :cond_fb

    .line 124
    aget-object v8, v8, v5

    iget-wide v9, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    invoke-virtual {v8, v9, v10}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setDurationTime(J)V

    .line 125
    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v8, v8, v5

    invoke-virtual {v8}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->startAnimation()V

    .line 122
    :cond_fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_e5

    .line 129
    .end local v5    # "i":I
    :cond_fe
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    aget-object v5, v4, v7

    if-eqz v5, :cond_109

    .line 130
    aget-object v4, v4, v7

    invoke-virtual {v4, v6}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->setViewOnOff(Z)V

    .line 132
    :cond_109
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/accessibility/SamsungTapDuration;->setXY(FFI)V

    .line 134
    nop

    .line 191
    :cond_115
    :goto_115
    return-void

    .line 104
    .end local v3    # "action":I
    :cond_116
    :goto_116
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .line 210
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 211
    return-void
.end method
