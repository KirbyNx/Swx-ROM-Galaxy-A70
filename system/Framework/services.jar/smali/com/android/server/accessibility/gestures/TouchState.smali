.class public Lcom/android/server/accessibility/gestures/TouchState;
.super Ljava/lang/Object;
.source "TouchState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;,
        Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/gestures/TouchState$State;
    }
.end annotation


# static fields
.field public static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchState"

.field static final MAX_POINTER_COUNT:I = 0x20

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_DELEGATING:I = 0x4

.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_GESTURE_DETECTING:I = 0x5

.field public static final STATE_TOUCH_EXPLORING:I = 0x2

.field public static final STATE_TOUCH_INTERACTING:I = 0x1


# instance fields
.field private mDragPointerId:I

.field private mForceDragging:Z

.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedRawEvent:Landroid/view/MotionEvent;

.field private mLastTouchedWindowId:I

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDragPointerId:I

    .line 93
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mForceDragging:Z

    .line 97
    new-instance v0, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    .line 98
    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 321
    if-eqz p0, :cond_32

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_29

    const/4 v0, 0x4

    if-eq p0, v0, :cond_26

    const/4 v0, 0x5

    if-eq p0, v0, :cond_23

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 333
    :cond_23
    const-string v0, "STATE_GESTURE_DETECTING"

    return-object v0

    .line 331
    :cond_26
    const-string v0, "STATE_DELEGATING"

    return-object v0

    .line 329
    :cond_29
    const-string v0, "STATE_DRAGGING"

    return-object v0

    .line 327
    :cond_2c
    const-string v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    .line 325
    :cond_2f
    const-string v0, "STATE_TOUCH_INTERACTING"

    return-object v0

    .line 323
    :cond_32
    const-string v0, "STATE_CLEAR"

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 104
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_e

    .line 105
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 108
    :cond_e
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 109
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->clear()V

    .line 110
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 113
    iput v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDragPointerId:I

    .line 114
    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mForceDragging:Z

    .line 117
    return-void
.end method

.method public getDraggingPointerId()I
    .registers 2

    .line 296
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDragPointerId:I

    return v0
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .line 364
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .registers 2

    .line 369
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .line 355
    iget-wide v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 350
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastTouchedWindowId()I
    .registers 2

    .line 359
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    return v0
.end method

.method public getReceivedPointerTracker()Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 233
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    return v0
.end method

.method public isClear()Z
    .registers 2

    .line 313
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isDelegating()Z
    .registers 3

    .line 255
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isDragging()Z
    .registers 3

    .line 273
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isForceDragging()Z
    .registers 2

    .line 287
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mForceDragging:Z

    return v0
.end method

.method public isGestureDetecting()Z
    .registers 3

    .line 264
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 5
    .param p1, "pointerId"    # I

    .line 379
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 380
    .local v1, "pointerFlag":I
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isTouchExploring()Z
    .registers 3

    .line 246
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTouchInteracting()Z
    .registers 3

    .line 301
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public onInjectedAccessibilityEvent(I)V
    .registers 3
    .param p1, "type"    # I

    .line 207
    const/16 v0, 0x200

    if-eq p1, v0, :cond_2d

    const/16 v0, 0x400

    if-eq p1, v0, :cond_29

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_25

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_21

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_1d

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_19

    goto :goto_31

    .line 212
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    .line 213
    goto :goto_31

    .line 209
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 210
    goto :goto_31

    .line 224
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 225
    goto :goto_31

    .line 221
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startGestureDetecting()V

    .line 222
    goto :goto_31

    .line 218
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchInteracting()V

    .line 219
    goto :goto_31

    .line 215
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startTouchExploring()V

    .line 216
    nop

    .line 229
    :goto_31
    return-void
.end method

.method onInjectedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 142
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 143
    .local v1, "pointerId":I
    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 144
    .local v3, "pointerFlag":I
    if-eqz v0, :cond_5b

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5b

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4e

    const/4 v2, 0x7

    if-eq v0, v2, :cond_40

    const/16 v2, 0x9

    if-eq v0, v2, :cond_40

    const/16 v2, 0xa

    if-eq v0, v2, :cond_25

    goto :goto_67

    .line 165
    :cond_25
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2c

    .line 166
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 168
    :cond_2c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 169
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v2, :cond_39

    .line 170
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 172
    :cond_39
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_67

    .line 159
    :cond_40
    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_47

    .line 160
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 162
    :cond_47
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 163
    goto :goto_67

    .line 152
    :cond_4e
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    not-int v4, v3

    and-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 153
    if-nez v2, :cond_67

    .line 154
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_67

    .line 147
    :cond_5b
    iget v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    .line 149
    nop

    .line 178
    :cond_67
    :goto_67
    return-void
.end method

.method public onReceivedAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 184
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x80

    if-eq v0, v1, :cond_16

    const/16 v1, 0x100

    if-eq v0, v1, :cond_16

    const v1, 0x8000

    if-eq v0, v1, :cond_1d

    goto :goto_2b

    .line 195
    :cond_16
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    goto :goto_2b

    .line 187
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_27

    .line 188
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    .line 191
    :cond_27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    .line 192
    nop

    .line 198
    :goto_2b
    return-void
.end method

.method public onReceivedMotionEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "rawEvent"    # Landroid/view/MotionEvent;

    .line 125
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    .line 126
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 128
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 131
    :cond_e
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 132
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 133
    return-void
.end method

.method public setForceDragging(Z)V
    .registers 2
    .param p1, "force"    # Z

    .line 283
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mForceDragging:Z

    .line 284
    return-void
.end method

.method public setState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 238
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 242
    :cond_5
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    .line 243
    return-void
.end method

.method public startDelegating()V
    .registers 2

    .line 260
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 261
    return-void
.end method

.method public startDragging()V
    .registers 2

    .line 278
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 279
    return-void
.end method

.method public startDragging(I)V
    .registers 2
    .param p1, "pointerId"    # I

    .line 291
    iput p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mDragPointerId:I

    .line 292
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->startDragging()V

    .line 293
    return-void
.end method

.method public startGestureDetecting()V
    .registers 2

    .line 269
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 270
    return-void
.end method

.method public startTouchExploring()V
    .registers 2

    .line 251
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 252
    return-void
.end method

.method public startTouchInteracting()V
    .registers 2

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    .line 310
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchState { mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    invoke-static {v1}, Lcom/android/server/accessibility/gestures/TouchState;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
