.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FORCE_1STEP_DELTA_TIME:F = 0.016f


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:F

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:F

.field private mTarget:F

.field private mTargetValue:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 157
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 58
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # J

    .line 33
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)Landroid/util/FloatProperty;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/RampAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .line 33
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/RampAnimator;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # F

    .line 33
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;

    .line 33
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/RampAnimator;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method private cancelAnimationCallback()V
    .registers 5

    .line 154
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    .line 150
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 151
    return-void
.end method


# virtual methods
.method public animateTo(FF)Z
    .registers 8
    .param p1, "target"    # F
    .param p2, "rate"    # F

    .line 73
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "targetChanged":Z
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_a

    .line 75
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    .line 76
    const/4 v0, 0x1

    .line 81
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_5c

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_16

    goto :goto_5c

    .line 108
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_38

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_38

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_2c

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_38

    :cond_2c
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3a

    cmpg-float v1, v2, p1

    if-gtz v1, :cond_3a

    .line 112
    :cond_38
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 115
    :cond_3a
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_41

    move v4, v3

    :cond_41
    move v1, v4

    .line 116
    .local v1, "changed":Z
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 119
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_5b

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v4, p1, v2

    if-eqz v4, :cond_5b

    .line 120
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 121
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 123
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 126
    :cond_5b
    return v1

    .line 82
    .end local v1    # "changed":Z
    :cond_5c
    :goto_5c
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_6a

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_6a

    if-eqz v0, :cond_69

    goto :goto_6a

    .line 98
    :cond_69
    return v4

    .line 84
    :cond_6a
    :goto_6a
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 85
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 86
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:F

    .line 87
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 88
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 89
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_82

    .line 90
    iput-boolean v4, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 91
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 93
    :cond_82
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v1, :cond_89

    .line 94
    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 96
    :cond_89
    return v3
.end method

.method public getTarget()F
    .registers 2

    .line 138
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTarget:F

    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 133
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/server/display/RampAnimator$Listener;

    .line 146
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 147
    return-void
.end method
