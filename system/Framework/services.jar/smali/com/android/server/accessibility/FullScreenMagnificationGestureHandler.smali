.class Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.super Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
.source "FullScreenMagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;,
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;,
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;,
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;,
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;,
        Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;
    }
.end annotation


# static fields
.field private static final DEBUG_ALL:Z = false

.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_EVENT_STREAM:Z = false

.field private static final DEBUG_PANNING_SCALING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FullScreenMagnificationGestureHandler"

.field private static final MAX_SCALE:F = 8.0f

.field private static final MIN_SCALE:F = 2.0f


# instance fields
.field mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

.field private final mDebugInputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDebugOutputEventHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

.field final mDetectShortcutTrigger:Z

.field final mDetectTripleTap:Z

.field final mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

.field private final mDisplayId:I

.field final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field final mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

.field mPreviousState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

.field private final mScreenStateReceiver:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field final mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;ZZI)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "magnificationController"    # Lcom/android/server/accessibility/MagnificationController;
    .param p3, "detectTripleTap"    # Z
    .param p4, "detectShortcutTrigger"    # Z
    .param p5, "displayId"    # I

    .line 187
    invoke-direct {p0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 195
    iput p5, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    .line 197
    new-instance v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;-><init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    .line 198
    new-instance v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;-><init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    .line 199
    new-instance v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;-><init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    .line 200
    new-instance v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;-><init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    .line 202
    iput-boolean p3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    .line 203
    iput-boolean p4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectShortcutTrigger:Z

    .line 205
    const/4 v0, 0x0

    if-eqz p4, :cond_35

    .line 206
    new-instance v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    .line 207
    invoke-virtual {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->register()V

    goto :goto_37

    .line 209
    :cond_35
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    .line 212
    :goto_37
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDebugInputEventHistory:Ljava/util/Queue;

    .line 213
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDebugOutputEventHistory:Ljava/util/Queue;

    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 216
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p1, "x1"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 124
    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 124
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->zoomOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # I

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p1, "x1"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # Landroid/view/MotionEvent;
    .param p4, "x4"    # I

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->zoomOn(FF)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/view/MotionEvent;

    .line 124
    invoke-static {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 340
    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 6
    .param p1, "size"    # I

    .line 351
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    goto :goto_8

    :cond_7
    move v0, v1

    .line 352
    .local v0, "oldSize":I
    :goto_8
    if-ge v0, p1, :cond_15

    .line 353
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 354
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 355
    if-eqz v2, :cond_15

    .line 356
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_15
    move v1, v0

    .local v1, "i":I
    :goto_16
    if-ge v1, p1, :cond_24

    .line 360
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 362
    .end local v1    # "i":I
    :cond_24
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 6
    .param p1, "size"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    array-length v0, v0

    goto :goto_8

    .line 367
    :cond_7
    move v0, v1

    :goto_8
    nop

    .line 368
    .local v0, "oldSize":I
    if-ge v0, p1, :cond_16

    .line 369
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 370
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 371
    if-eqz v2, :cond_16

    .line 372
    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_16
    move v1, v0

    .local v1, "i":I
    :goto_17
    if-ge v1, p1, :cond_25

    .line 377
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 379
    .end local v1    # "i":I
    :cond_25
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private handleEventWith(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "stateHandler"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "rawEvent"    # Landroid/view/MotionEvent;
    .param p4, "policyFlags"    # I

    .line 263
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->access$000(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->access$100(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 267
    return-void
.end method

.method private onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 236
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_10

    :cond_8
    const/16 v0, 0x1002

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 238
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 239
    return-void

    .line 244
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 245
    .local v0, "action":I
    const/4 v1, 0x7

    if-eq v0, v1, :cond_2e

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x8

    if-ne v0, v1, :cond_28

    goto :goto_2e

    .line 257
    .end local v0    # "action":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 258
    return-void

    .line 249
    .restart local v0    # "action":I
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 252
    :cond_37
    return-void
.end method

.method private static recycleAndNullify(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .line 1080
    if-eqz p0, :cond_5

    .line 1081
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    .line 1083
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static storeEventInto(Ljava/util/Queue;Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    .line 343
    .local p0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/MotionEvent;>;"
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 345
    :goto_7
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 346
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_7

    .line 348
    :cond_2c
    return-void
.end method

.method private transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 389
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 390
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 391
    return-void
.end method

.method private zoomOff()V
    .registers 4

    .line 1076
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->reset(IZ)Z

    .line 1077
    return-void
.end method

.method private zoomOn(FF)V
    .registers 13
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .line 1065
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 1066
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->getPersistedScale()F

    move-result v0

    .line 1065
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 1068
    .local v0, "scale":F
    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v5, v0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(IFFFZI)Z

    .line 1072
    return-void
.end method


# virtual methods
.method clearAndTransitionToStateDetecting()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 320
    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 321
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->clear()V

    .line 322
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;->clear()V

    .line 323
    return-void
.end method

.method public clearEvents(I)V
    .registers 3
    .param p1, "inputSource"    # I

    .line 271
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 275
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->clearEvents(I)V

    .line 276
    return-void
.end method

.method public magnificationDisactivate()V
    .registers 5

    .line 309
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    move-result v0

    .line 311
    .local v0, "wasMagnifying":Z
    if-eqz v0, :cond_f

    .line 312
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    goto :goto_17

    .line 314
    :cond_f
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(IZ)V

    .line 316
    :goto_17
    return-void
.end method

.method public notifyShortcutTriggered()V
    .registers 4

    .line 296
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectShortcutTrigger:Z

    if-eqz v0, :cond_18

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    move-result v0

    .line 299
    .local v0, "wasMagnifying":Z
    if-eqz v0, :cond_13

    .line 300
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    goto :goto_18

    .line 302
    :cond_13
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->toggleShortcutTriggered()V

    .line 305
    .end local v0    # "wasMagnifying":Z
    :cond_18
    :goto_18
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;

    if-eqz v0, :cond_7

    .line 286
    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ScreenStateReceiver;->unregister()V

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetAllIfNeeded(I)V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->clearAndTransitionToStateDetecting()V

    .line 292
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->onMotionEventInternal(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationGesture{mDetectingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDelegatingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnifiedInteractionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mViewportDraggingState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectTripleTap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDetectShortcutTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectShortcutTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mCurrentState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 1095
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPreviousState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;

    .line 1096
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;->nameOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    return-object v0
.end method
