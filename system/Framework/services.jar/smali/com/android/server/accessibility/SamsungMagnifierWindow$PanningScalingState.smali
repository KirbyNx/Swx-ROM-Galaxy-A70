.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanningScalingState"
.end annotation


# instance fields
.field mInitialScaleFactor:F

.field private mMovingEnabledByMultiPan:Z

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaling:Z

.field final mScalingThreshold:F

.field private final mScrollGestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/content/Context;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow;
    .param p2, "context"    # Landroid/content/Context;

    .line 1972
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1967
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    .line 1973
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1974
    .local v0, "scaleValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500c0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1977
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScalingThreshold:F

    .line 1978
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1979
    invoke-virtual {v1, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 1980
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    .line 1981
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    .line 1982
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/ScaleGestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    .line 1956
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;)Landroid/view/GestureDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    .line 1956
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScrollGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private clearMultiFingerPanning()V
    .registers 4

    .line 2047
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 2048
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 2050
    :cond_18
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    .line 2051
    return-void
.end method

.method private handleMultiFingerPanning(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2011
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->isShowWindow()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    if-eqz v0, :cond_d

    goto :goto_70

    .line 2016
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    if-eq v0, v1, :cond_30

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x5

    if-eq v0, v2, :cond_39

    const/4 v2, 0x6

    if-eq v0, v2, :cond_30

    goto :goto_6f

    .line 2027
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_6f

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    if-eqz v0, :cond_6f

    .line 2028
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->moveWindow(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4900(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;)V

    goto :goto_6f

    .line 2034
    :cond_30
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clearMultiFingerPanning()V

    .line 2035
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;I)V

    goto :goto_6f

    .line 2019
    :cond_39
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isOnMagnifierWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_6f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 2020
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    .line 2021
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->handleTouchEventAction(Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4800(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;I)V

    .line 2022
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    .line 2040
    :cond_6f
    :goto_6f
    return-void

    .line 2012
    :cond_70
    :goto_70
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "handleMultiFingerPanning ignored"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 2119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    .line 2120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    .line 2121
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clearMultiFingerPanning()V

    .line 2122
    return-void
.end method

.method public isMovingByMultiPanning()Z
    .registers 2

    .line 2043
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mMovingEnabledByMultiPan:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .line 1986
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->handleMultiFingerPanning(Landroid/view/MotionEvent;)V

    .line 1988
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 1989
    return-void

    .line 1992
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1994
    .local v0, "action":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    .line 1995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_38

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    .line 1996
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPreviousState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4600(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;
    invoke-static {v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    move-result-object v2

    if-ne v1, v2, :cond_38

    .line 1997
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mViewportDraggingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4700(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$ViewportDraggingState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    goto :goto_44

    .line 1998
    :cond_38
    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 1999
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mDetectingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$DetectingState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->persistScaleAndTransitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    .line 2001
    :cond_44
    :goto_44
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 10
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2069
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    const/4 v1, 0x1

    if-nez v0, :cond_29

    .line 2070
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_14

    .line 2071
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    .line 2072
    return v2

    .line 2075
    :cond_14
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    sub-float/2addr v0, v3

    .line 2076
    .local v0, "deltaScale":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScalingThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_28

    .line 2077
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    .line 2078
    return v1

    .line 2080
    :cond_28
    return v2

    .line 2084
    .end local v0    # "deltaScale":F
    :cond_29
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPolicy:Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1100(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getScale()F

    move-result v0

    .line 2085
    .local v0, "initialScale":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v0

    .line 2090
    .local v2, "targetScale":F
    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v3, v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_47

    cmpl-float v3, v2, v0

    if-lez v3, :cond_47

    .line 2092
    const/high16 v3, 0x41000000    # 8.0f

    .local v3, "scale":F
    goto :goto_53

    .line 2093
    .end local v3    # "scale":F
    :cond_47
    cmpg-float v3, v2, v4

    if-gez v3, :cond_52

    cmpg-float v3, v2, v0

    if-gez v3, :cond_52

    .line 2095
    const/high16 v3, 0x3f800000    # 1.0f

    .restart local v3    # "scale":F
    goto :goto_53

    .line 2100
    .end local v3    # "scale":F
    :cond_52
    move v3, v2

    .line 2102
    .restart local v3    # "scale":F
    :goto_53
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sub-float v4, v3, v4

    const/4 v6, -0x2

    const-string/jumbo v7, "hover_zoom_value"

    invoke-static {v5, v7, v4, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2103
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2108
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .line 2113
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clear()V

    .line 2115
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .param p1, "first"    # Landroid/view/MotionEvent;
    .param p2, "second"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 2056
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mCurrentState:Lcom/android/server/accessibility/SamsungMagnifierWindow$State;
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4500(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->mPanningScalingState:Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$4000(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    .line 2057
    return v2

    .line 2064
    :cond_10
    return v2
.end method

.method public persistScaleAndTransitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    .registers 3
    .param p1, "state"    # Lcom/android/server/accessibility/SamsungMagnifierWindow$State;

    .line 2006
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->clear()V

    .line 2007
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->transitionTo(Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V
    invoke-static {v0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$3700(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$State;)V

    .line 2008
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PanningScalingStateHandler{mInitialScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mInitialScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mScaling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$PanningScalingState;->mScaling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
