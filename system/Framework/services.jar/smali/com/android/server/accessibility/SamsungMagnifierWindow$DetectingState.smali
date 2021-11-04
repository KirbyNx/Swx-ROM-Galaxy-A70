.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x1


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field mHandler:Landroid/os/Handler;

.field private mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

.field mLastDown:Landroid/view/MotionEvent;

.field final mMultiTapMaxDistance:I

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p2, "context"    # Landroid/content/Context;

    .line 1722
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1720
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    .line 1723
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mSwipeMinDistance:I

    .line 1724
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mMultiTapMaxDistance:I

    .line 1725
    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    .line 1708
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    return-object v0
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 1825
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v0

    .line 1827
    .local v0, "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-nez v1, :cond_d

    .line 1828
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1829
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    goto :goto_14

    .line 1831
    :cond_d
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    # setter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    invoke-static {v1, v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->access$4202(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1832
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1834
    :goto_14
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .registers 3

    .line 1847
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-eqz v0, :cond_10

    .line 1848
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1849
    .local v0, "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->access$4200(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1850
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->recycle()V

    .line 1851
    .end local v0    # "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    goto :goto_0

    .line 1852
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 1853
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1854
    return-void
.end method

.method private clearLastDownEvent()V
    .registers 2

    .line 1818
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 1819
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 1822
    :cond_a
    return-void
.end method

.method private clearTapDetectionState()V
    .registers 1

    .line 1814
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearLastDownEvent()V

    .line 1815
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .registers 7

    .line 1837
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    if-eqz v0, :cond_1f

    .line 1838
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1839
    .local v0, "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->mNext:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->access$4200(Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1840
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v5, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->policyFlags:I

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleEventWith(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4400(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1841
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;->recycle()V

    .line 1842
    .end local v0    # "info":Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;
    goto :goto_0

    .line 1843
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLast:Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventInfo;

    .line 1844
    return-void
.end method

.method private transitionToDelegatingStateAndClear()V
    .registers 3

    .line 1857
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDelegatingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4300(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DelegatingState;

    move-result-object v1

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    .line 1858
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->sendDelayedMotionEvents()V

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clear()V

    .line 1860
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1808
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1809
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearTapDetectionState()V

    .line 1810
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearDelayedMotionEvents()V

    .line 1811
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1729
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1730
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 1732
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 1733
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "handler MESSAGE_TRANSITION_TO_DELEGATING_STATE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    nop

    .line 1740
    return v1

    .line 1737
    :cond_14
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
.end method

.method public isFingerDown()Z
    .registers 2

    .line 1803
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 1745
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1746
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6f

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_31

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1f

    goto/16 :goto_8e

    .line 1768
    :cond_1f
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearDelayedMotionEvents()V

    .line 1770
    goto :goto_8e

    .line 1772
    :cond_23
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 1773
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/BaseEventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4101(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_8e

    .line 1758
    :cond_31
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1759
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clear()V

    goto :goto_8e

    .line 1762
    :cond_4a
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 1765
    goto :goto_8e

    .line 1777
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 1778
    invoke-static {v0, p1}, Lcom/android/server/accessibility/gestures/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_8e

    .line 1779
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_8e

    .line 1790
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->isFingerDown()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1791
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_8e

    .line 1748
    :cond_6f
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1749
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1751
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1753
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->clearLastDownEvent()V

    .line 1754
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 1756
    .end local v0    # "message":Landroid/os/Message;
    nop

    .line 1800
    :cond_8e
    :goto_8e
    return-void
.end method
