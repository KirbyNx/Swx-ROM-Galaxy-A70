.class public Lcom/android/server/sepunion/cover/CoverHideAnimator;
.super Ljava/lang/Object;
.source "CoverHideAnimator.java"


# instance fields
.field private final FADE_IN_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_DURATION:J

.field private final FADE_OUT_ANIMATION_START_DELAY:J

.field private final MSG_SEND_COVER_CANCEL_ANIMATION:I

.field private final MSG_SEND_COVER_START_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private mAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mCallbackRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCoverHideView:Landroid/view/View;

.field private mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mIsNeedWakeUp:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    .line 45
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->FADE_IN_ANIMATION_DURATION:J

    .line 46
    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->FADE_OUT_ANIMATION_START_DELAY:J

    .line 47
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->FADE_OUT_ANIMATION_DURATION:J

    .line 49
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->MSG_SEND_COVER_START_ANIMATION:I

    .line 50
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->MSG_SEND_COVER_CANCEL_ANIMATION:I

    .line 52
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 99
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$2;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 122
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 65
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    .line 66
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    .line 68
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    .line 69
    const-string v1, "clear cover animation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 71
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 74
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 75
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 76
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x4080008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 79
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 80
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mPowerManager:Landroid/os/PowerManager;

    .line 81
    new-instance v0, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/sepunion/cover/CoverHideAnimator$1;-><init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->handleStartAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->handleCancelAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/sepunion/cover/CoverHideAnimator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/animation/AnimatorListenerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeOutAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 42
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    return-void
.end method

.method private handleCancelAnimation()V
    .registers 4

    .line 184
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1d

    .line 185
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCancelAnimation() mCoverHideView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 189
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    .line 191
    :cond_2b
    return-void
.end method

.method private handleStartAnimation()V
    .registers 4

    .line 164
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_c

    .line 165
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleStartAnimation()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 168
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleStartAnimation : mCoverHideView is not null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V

    .line 172
    :cond_1b
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mFadeInAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 180
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    return-void
.end method

.method private removeViewFromWindow()V
    .registers 5

    .line 136
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_1d

    .line 137
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeViewFromWindow() mCoverHideView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1d
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 140
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 143
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCoverHideView:Landroid/view/View;

    .line 144
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mIsNeedWakeUp:Z

    if-eqz v0, :cond_46

    .line 145
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeViewFromWindow : wakeup"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->semWakeUp(JI)V

    .line 149
    :cond_46
    return-void
.end method


# virtual methods
.method cancelHideAnimation()V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string v1, "cancelHideAnimation()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    return-void
.end method

.method playCoverHideAnimation(Ljava/lang/Runnable;Z)V
    .registers 5
    .param p1, "callbackRunnable"    # Ljava/lang/Runnable;
    .param p2, "isNeedWakeUp"    # Z

    .line 157
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playCoverHideAnimation()"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mIsNeedWakeUp:Z

    .line 159
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 160
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    return-void
.end method
