.class Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
.super Landroid/widget/FrameLayout;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClingWindowView"
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIM_DURATION_ALPHA_IN:I = 0xc8

.field private static final ANIM_DURATION_ALPHA_OUT:I = 0x12c

.field private static final ANIM_DURATION_TRANSLATE:I = 0x258

.field private static final ANIM_IMAGE_VIEW_PAUSE_TIME:I = 0x3e8

.field private static final ANIM_START_OFFSET:I = 0xc8

.field private static final BGCOLOR:I = -0x80000000

.field private static final MAX_FONT_SCALE:F = 1.25f

.field private static final OFFSET_DP:I = 0x60


# instance fields
.field private final SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

.field private final SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

.field private mButtonOkLand:Landroid/widget/Button;

.field private mButtonOkPort:Landroid/widget/Button;

.field private mClingHandler:Landroid/os/Handler;

.field private mClingLayout:Landroid/view/ViewGroup;

.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mImageArrow0:Landroid/widget/ImageView;

.field private mImageArrow270:Landroid/widget/ImageView;

.field private mImageArrow90:Landroid/widget/ImageView;

.field private mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLayoutLand:Landroid/widget/LinearLayout;

.field private mLayoutPort:Landroid/widget/LinearLayout;

.field private mNavBarCanMove:Z

.field private mNavBarPosition:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mShowOkButton:Z

.field private mTextLand:Landroid/widget/TextView;

.field private mTextPort:Landroid/widget/TextView;

.field private mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "confirm"    # Ljava/lang/Runnable;

    .line 425
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 426
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 383
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 388
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$1;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$2;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 416
    new-instance v0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$3;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 541
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 546
    iput-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    .line 548
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    .line 427
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 429
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->setImportantForAccessibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    .line 431
    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 435
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 436
    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {p1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    .line 439
    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 377
    iput-object p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method private startArrowAnimation(I)V
    .registers 10
    .param p1, "navBarPosition"    # I

    .line 614
    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    goto :goto_e

    .line 615
    :cond_7
    if-ne p1, v0, :cond_c

    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    goto :goto_e

    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    :goto_e
    nop

    .line 616
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_12

    .line 617
    return-void

    .line 620
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 623
    iget-boolean v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mShowOkButton:Z

    if-eqz v3, :cond_21

    .line 624
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    .line 625
    return-void

    .line 628
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10502bb

    .line 629
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 631
    .local v3, "animStartPos":I
    const/4 v4, 0x0

    .line 632
    .local v4, "translateAnim":Landroid/view/animation/TranslateAnimation;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v5, :cond_48

    if-eq p1, v0, :cond_40

    if-eq p1, v1, :cond_38

    goto :goto_50

    .line 634
    :cond_38
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v3

    invoke-direct {v0, v6, v6, v1, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v4, v0

    .line 635
    goto :goto_50

    .line 637
    :cond_40
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v3

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v4, v0

    .line 638
    goto :goto_50

    .line 640
    :cond_48
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v4, v0

    .line 643
    :goto_50
    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 644
    const-wide/16 v0, 0x258

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 647
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 648
    .local v0, "alphaOutAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v6, 0x708

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 649
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 650
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 652
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 653
    .local v1, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 654
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 655
    new-instance v5, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$6;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 674
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 675
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 676
    return-void
.end method

.method private startButtonAnimation(I)V
    .registers 6
    .param p1, "navBarPosition"    # I

    .line 679
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    goto :goto_8

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    .line 680
    .local v0, "v":Landroid/view/View;
    :goto_8
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2e

    .line 684
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 685
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 687
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    .local v1, "alphaInAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 689
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 690
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 691
    return-void

    .line 681
    .end local v1    # "alphaInAnim":Landroid/view/animation/AlphaAnimation;
    :cond_2e
    :goto_2e
    return-void
.end method

.method private updateLayout()V
    .registers 7

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 574
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 576
    .local v1, "navBarPosition":I
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutPort:Landroid/widget/LinearLayout;

    .line 577
    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_10

    move v5, v3

    goto :goto_11

    :cond_10
    move v5, v4

    .line 576
    :goto_11
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    .line 579
    if-eq v1, v4, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v4

    .line 578
    :goto_1a
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v2}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayPolicy;->mExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicyExt;->isNavigationGestureMode()Z

    move-result v2

    if-nez v2, :cond_6b

    .line 582
    const v2, 0x1040ac8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "guideText":Ljava/lang/String;
    if-ne v1, v4, :cond_4d

    .line 584
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    if-nez v3, :cond_47

    .line 585
    const v3, 0x1040ac9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 587
    :cond_47
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 589
    :cond_4d
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    const/4 v5, 0x2

    if-ne v1, v5, :cond_54

    const/4 v5, 0x5

    goto :goto_55

    :cond_54
    const/4 v5, 0x3

    :goto_55
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 590
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    :goto_67
    invoke-direct {p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startArrowAnimation(I)V

    goto :goto_98

    .line 597
    .end local v2    # "guideText":Ljava/lang/String;
    :cond_6b
    const v2, 0x1040ac7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2    # "guideText":Ljava/lang/String;
    if-ne v1, v4, :cond_7f

    .line 600
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_95

    .line 603
    :cond_7f
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :goto_95
    invoke-direct {p0, v1}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->startButtonAnimation(I)V

    .line 611
    :goto_98
    return-void
.end method

.method private updateTextSize()V
    .registers 6

    .line 561
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 562
    .local v0, "defaultSize":F
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 563
    .local v1, "fontScale":F
    const/high16 v2, 0x3fa00000    # 1.25f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_22

    const/high16 v1, 0x3fa00000    # 1.25f

    .line 565
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    mul-float v3, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 566
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 567
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 568
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    mul-float v3, v0, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 569
    return-void
.end method


# virtual methods
.method public synthetic lambda$onAttachedToWindow$0$ImmersiveModeConfirmation$ClingWindowView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$onAttachedToWindow$1$ImmersiveModeConfirmation$ClingWindowView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mConfirm:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$onConfigurationChanged$2$ImmersiveModeConfirmation$ClingWindowView()V
    .registers 1

    .line 704
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 7

    .line 443
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 445
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 446
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 447
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 449
    .local v1, "density":F
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 452
    nop

    .line 453
    invoke-virtual {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x109008e

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 457
    const v3, 0x1020331

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutPort:Landroid/widget/LinearLayout;

    .line 458
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020330

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mLayoutLand:Landroid/widget/LinearLayout;

    .line 459
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020446

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextPort:Landroid/widget/TextView;

    .line 460
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020369

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mTextLand:Landroid/widget/TextView;

    .line 461
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020447

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    .line 462
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102036a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    .line 463
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x1020329

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow0:Landroid/widget/ImageView;

    .line 464
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow90:Landroid/widget/ImageView;

    .line 465
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    const v3, 0x102032a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mImageArrow270:Landroid/widget/ImageView;

    .line 467
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkPort:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$bdM-FePhGcDG1GqRxcNap0uqkDk;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$bdM-FePhGcDG1GqRxcNap0uqkDk;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mButtonOkLand:Landroid/widget/Button;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4M204z5WiwobvGpnTqvy04Vuzm4;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$4M204z5WiwobvGpnTqvy04Vuzm4;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateTextSize()V

    .line 471
    invoke-direct {p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->updateLayout()V

    .line 482
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/wm/ImmersiveModeConfirmation;->getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v3}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$300(Lcom/android/server/wm/ImmersiveModeConfirmation;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 485
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingLayout:Landroid/view/ViewGroup;

    .line 486
    .local v2, "cling":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 487
    const/high16 v3, -0x3d400000    # -96.0f

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 489
    new-instance v3, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView$5;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 513
    .end local v2    # "cling":Landroid/view/View;
    goto :goto_e7

    .line 514
    :cond_e0
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 517
    :goto_e7
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 519
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 695
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v0}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v0

    .line 698
    .local v0, "navBarPosition":I
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->this$0:Lcom/android/server/wm/ImmersiveModeConfirmation;

    # getter for: Lcom/android/server/wm/ImmersiveModeConfirmation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;
    invoke-static {v1}, Lcom/android/server/wm/ImmersiveModeConfirmation;->access$500(Lcom/android/server/wm/ImmersiveModeConfirmation;)Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v1

    .line 700
    .local v1, "navBarCanMove":Z
    iget v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    if-ne v2, v0, :cond_1f

    iget-boolean v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    if-eq v2, v1, :cond_2d

    .line 702
    :cond_1f
    iput v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarPosition:I

    .line 703
    iput-boolean v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mNavBarCanMove:Z

    .line 704
    iget-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mClingHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$VErkWBE6RL2KIjNXt2G_Fzjeh60;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$ImmersiveModeConfirmation$ClingWindowView$VErkWBE6RL2KIjNXt2G_Fzjeh60;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    :cond_2d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .line 528
    const/4 v0, 0x1

    return v0
.end method
