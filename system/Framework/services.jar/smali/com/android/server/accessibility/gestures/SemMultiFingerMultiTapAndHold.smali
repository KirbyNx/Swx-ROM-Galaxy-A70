.class Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;
.source "SemMultiFingerMultiTapAndHold.java"


# direct methods
.method constructor <init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fingers"    # I
    .param p3, "taps"    # I
    .param p4, "gestureId"    # I
    .param p5, "listener"    # Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 41
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;->mIsTargetFingerCountReached:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;->mTargetTapCount:I

    if-ne v0, v1, :cond_18

    .line 43
    const-wide/16 v3, 0x1388

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;->completeAfter(JLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 49
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;->mTargetFingerCount:I

    if-le v0, v1, :cond_23

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;->cancelGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 53
    :cond_23
    return-void
.end method
