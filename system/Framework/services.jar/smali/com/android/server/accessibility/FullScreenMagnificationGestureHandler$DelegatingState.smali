.class final Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;
.super Ljava/lang/Object;
.source "FullScreenMagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelegatingState"
.end annotation


# instance fields
.field public mLastDelegatedDownEventTime:J

.field final synthetic this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    .line 609
    iput-object p1, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    goto :goto_22

    .line 623
    :cond_d
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDetectingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DetectingState;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 625
    goto :goto_22

    .line 628
    :cond_15
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V
    invoke-static {v0, v1}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$State;)V

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    .line 633
    :goto_22
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 640
    iget-wide v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 641
    iget-object v0, p0, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler$DelegatingState;->this$0:Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;

    # invokes: Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;->access$500(Lcom/android/server/accessibility/FullScreenMagnificationGestureHandler;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 643
    :cond_34
    return-void
.end method
