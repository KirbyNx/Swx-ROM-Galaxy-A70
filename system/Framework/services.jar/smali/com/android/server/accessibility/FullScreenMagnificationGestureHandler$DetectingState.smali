.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_ON_TRIPLE_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2

.field private static final MESSAGE_TRANSITION_TO_PANNINGSCALING_STATE:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

.field mHandler:Landroid/os/Handler;

.field private mLastDetectingDownEventTime:J

.field mLastDown:Landroid/view/MotionEvent;

.field private mLastUp:Landroid/view/MotionEvent;

.field final mLongTapMinDelay:I

.field final mMultiTapMaxDelay:I

.field final mMultiTapMaxDistance:I

.field private mPreLastDown:Landroid/view/MotionEvent;

.field private mPreLastUp:Landroid/view/MotionEvent;

.field private mSecondPointerDownLocation:Landroid/graphics/PointF;

.field mShortcutTriggered:Z

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/content/Context;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
    .param p2, "context"    # Landroid/content/Context;

    .line 675
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 673
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 676
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 677
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 678
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 680
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 681
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 682
    iput-object p2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    .line 683
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_11

    .line 910
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 911
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    goto :goto_22

    .line 912
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 914
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 917
    :cond_22
    :goto_22
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    .line 919
    .local v0, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v1, :cond_2d

    .line 920
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    goto :goto_3d

    .line 922
    :cond_2d
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 923
    .local v1, "tail":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :goto_2f
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 924
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    goto :goto_2f

    .line 926
    :cond_3a
    # setter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v1, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$602(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 928
    .end local v1    # "tail":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    :goto_3d
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .registers 3

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_10

    .line 954
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 955
    .local v0, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 956
    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 957
    .end local v0    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    goto :goto_0

    .line 958
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 959
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 960
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 961
    iput-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 962
    return-void
.end method

.method private isMagnifying()Z
    .registers 3

    .line 993
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    return v0
.end method

.method private isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;

    .line 850
    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/gestures/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result v0

    return v0
.end method

.method private onTripleTap(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "up"    # Landroid/view/MotionEvent;

    .line 976
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 977
    .local v0, "isShortcutTriggered":Z
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 980
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 981
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->zoomOff()V
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V

    goto :goto_42

    .line 983
    :cond_1f
    if-nez v0, :cond_35

    .line 984
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x2

    const-string v4, "accessibility_magnification_activated"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 986
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mContext:Landroid/content/Context;

    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-static {v1, v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->updateProfile(Landroid/content/Context;Ljava/lang/String;)V

    .line 988
    :cond_35
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->zoomOn(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$800(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;FF)V

    .line 990
    :goto_42
    return-void
.end method

.method private removePendingDelayedMessages()V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    return-void
.end method

.method private secondPointerDownValid()Z
    .registers 2

    .line 822
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private sendDelayedMotionEvents()V
    .registers 9

    .line 931
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v0, :cond_5

    .line 932
    return-void

    .line 939
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v2, v2

    .line 938
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 942
    .local v0, "offset":J
    :goto_13
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 943
    .local v2, "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 945
    iget-object v3, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 946
    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v4, v3, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    iget-object v5, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v6, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v7, v2, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->handleEventWith(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 948
    invoke-virtual {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 949
    .end local v2    # "info":Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;
    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    if-nez v2, :cond_3c

    .line 950
    return-void

    .line 949
    :cond_3c
    goto :goto_13
.end method

.method private storeSecondPointerDownLocation(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 817
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 818
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 819
    return-void
.end method

.method private timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J
    .registers 7
    .param p1, "a"    # Landroid/view/MotionEvent;
    .param p2, "b"    # Landroid/view/MotionEvent;

    .line 858
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 859
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private timeOf(Landroid/view/MotionEvent;)J
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 871
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    :goto_9
    return-wide v0
.end method

.method private transitToPanningScalingStateAndClear()V
    .registers 3

    .line 827
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$PanningScalingState;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 829
    return-void
.end method


# virtual methods
.method public afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 887
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 889
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 888
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 890
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 887
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 891
    return-void
.end method

.method public afterMultiTapTimeoutTransitionToDelegatingState()V
    .registers 5

    .line 880
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 883
    return-void
.end method

.method public clear()V
    .registers 3

    .line 895
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 896
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 897
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clearDelayedMotionEvents()V

    .line 898
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 899
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 687
    iget v0, p1, Landroid/os/Message;->what:I

    .line 688
    .local v0, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_26

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    .line 700
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    .line 702
    goto :goto_35

    .line 704
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 698
    goto :goto_35

    .line 690
    :cond_2a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 691
    .local v2, "down":Landroid/view/MotionEvent;
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 692
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 694
    .end local v2    # "down":Landroid/view/MotionEvent;
    nop

    .line 707
    :goto_35
    return v1
.end method

.method public isFingerDown()Z
    .registers 2

    .line 854
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMultiTapTriggered(I)Z
    .registers 7
    .param p1, "numTaps"    # I

    .line 834
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    add-int/2addr v0, v3

    if-lt v0, p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 836
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    if-eqz v0, :cond_32

    .line 837
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    if-lt v0, p1, :cond_32

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 838
    invoke-direct {p0, v0, v4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 839
    invoke-direct {p0, v0, v4}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    move v0, v1

    .line 842
    .local v0, "multitapTriggered":Z
    if-eqz v0, :cond_49

    if-le p1, v3, :cond_49

    .line 843
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    .line 844
    .local v1, "enabled":Z
    invoke-static {v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 846
    .end local v1    # "enabled":Z
    :cond_49
    return v0
.end method

.method isTapOutOfDistanceSlop()Z
    .registers 7

    .line 1043
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1044
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-nez v2, :cond_11

    goto :goto_38

    .line 1047
    :cond_11
    nop

    .line 1048
    invoke-static {v0, v2}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    .line 1049
    .local v0, "outOfDistanceSlop":Z
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 1050
    return v0

    .line 1054
    :cond_28
    if-eqz v0, :cond_37

    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v4, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget v5, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 1055
    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/gestures/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v3

    if-nez v3, :cond_37

    .line 1056
    return v2

    .line 1058
    :cond_37
    return v1

    .line 1045
    .end local v0    # "outOfDistanceSlop":Z
    :cond_38
    :goto_38
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 712
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_f5

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9f

    if-eq v0, v1, :cond_47

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_18

    goto/16 :goto_14e

    .line 760
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 762
    goto/16 :goto_14e

    .line 749
    :cond_1d
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v3, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 751
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->storeSecondPointerDownLocation(Landroid/view/MotionEvent;)V

    .line 752
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 753
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v3, v1

    .line 752
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14e

    .line 755
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 758
    goto/16 :goto_14e

    .line 764
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 765
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v4

    iget v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_81

    .line 772
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_6b

    .line 773
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    goto/16 :goto_14e

    .line 774
    :cond_6b
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_7c

    .line 776
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    goto/16 :goto_14e

    .line 778
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_14e

    .line 780
    :cond_81
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_14e

    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->secondPointerDownValid()Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    .line 781
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distanceClosestPointerToPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14e

    .line 784
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitToPanningScalingStateAndClear()V

    goto/16 :goto_14e

    .line 790
    :cond_9f
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 793
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 792
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 795
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_14e

    .line 797
    :cond_c1
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 799
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->onTripleTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_14e

    .line 801
    :cond_cc
    nop

    .line 803
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 805
    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_f1

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 806
    invoke-static {v0, v1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_14e

    .line 808
    :cond_f1
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_14e

    .line 716
    :cond_f5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mLastDetectingDownEventTime:J

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 720
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 719
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 722
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_14e

    .line 724
    :cond_11c
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 727
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V

    goto :goto_14e

    .line 729
    :cond_126
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->isTapOutOfDistanceSlop()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 731
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_14e

    .line 733
    :cond_130
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_14b

    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 737
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    if-eqz v0, :cond_147

    goto :goto_14b

    .line 744
    :cond_147
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 747
    goto :goto_14e

    .line 739
    :cond_14b
    :goto_14b
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->afterMultiTapTimeoutTransitionToDelegatingState()V

    .line 814
    :cond_14e
    :goto_14e
    return-void
.end method

.method setShortcutTriggered(Z)V
    .registers 4
    .param p1, "state"    # Z

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_5

    .line 1028
    return-void

    .line 1032
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 1033
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(IZ)V

    .line 1034
    return-void
.end method

.method public tapCount()I
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{tapCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;

    .line 1018
    invoke-static {v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    return-object v0
.end method

.method toggleShortcutTriggered()V
    .registers 2

    .line 1023
    iget-boolean v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 1024
    return-void
.end method

.method transitionToDelegatingStateAndClear()V
    .registers 3

    .line 965
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 966
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->sendDelayedMotionEvents()V

    .line 967
    invoke-direct {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 968
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->mSecondPointerDownLocation:Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 969
    return-void
.end method

.method transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "down"    # Landroid/view/MotionEvent;

    .line 999
    invoke-virtual {p0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->clear()V

    .line 1001
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 1002
    # getter for: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDisplayId:I
    invoke-static {v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    .line 1005
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    iget-boolean v0, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1006
    .local v0, "enabled":Z
    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logMagnificationTripleTap(Z)V

    .line 1008
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->zoomOn(FF)V
    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$800(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;FF)V

    .line 1010
    iget-object v1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$ViewportDraggingState;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    invoke-static {v1, v2}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 1011
    return-void
.end method
