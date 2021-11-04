.class public Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;
.super Ljava/lang/Object;
.source "SamsungAccessibilityTappingUI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungAccessibilityTappingUI"

.field public static final TYPE_IGNORE_REPEAT:I = 0x1

.field public static final TYPE_TAP_DURATION:I


# instance fields
.field private durationTime:J

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mIgnoreImageView:Landroid/widget/ImageView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mProgressImageView:Landroid/widget/ImageView;

.field private mStandbyImageView:Landroid/widget/ImageView;

.field private mTapImageView:Landroid/widget/ImageView;

.field private mTapLayout:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private navigationBarHeight:I

.field private pointCorrection:I

.field private tappingType:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    .line 60
    iput-object p1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 61
    if-eqz p1, :cond_1b

    .line 62
    iput p2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->tappingType:I

    .line 63
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    .line 64
    iput v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    .line 65
    invoke-direct {p0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->makeView()V

    .line 66
    invoke-direct {p0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    .line 68
    :cond_1b
    return-void
.end method

.method static synthetic access$000(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 26
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 26
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 26
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private getNavigationBarHeight()I
    .registers 5

    .line 191
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11100d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 192
    .local v0, "hasNavigationBar":Z
    const/4 v1, 0x0

    .line 194
    .local v1, "navigationBarHeight":I
    if-eqz v0, :cond_1d

    .line 195
    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 197
    :cond_1d
    return v1
.end method

.method private makeView()V
    .registers 5

    .line 72
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 73
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    .line 75
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 76
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 77
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 78
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x708

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 83
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 84
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 87
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 89
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->inflater:Landroid/view/LayoutInflater;

    .line 90
    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x1090062

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 91
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 92
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 93
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x102058b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapLayout:Landroid/widget/FrameLayout;

    .line 98
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x102058e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x102058d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    .line 100
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x102058a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const v3, 0x102058c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 103
    iget v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->tappingType:I

    const/4 v3, 0x0

    if-eqz v0, :cond_c6

    if-eq v0, v1, :cond_b1

    goto :goto_e6

    .line 113
    :cond_b1
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    goto :goto_e6

    .line 105
    :cond_c6
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 110
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 111
    nop

    .line 123
    :goto_e6
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 183
    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 184
    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 39
    return-void
.end method

.method public setDurationTime(J)V
    .registers 3
    .param p1, "duration"    # J

    .line 167
    iput-wide p1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    .line 168
    return-void
.end method

.method public setIgnoreView(Z)V
    .registers 5
    .param p1, "ignore"    # Z

    .line 148
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    .line 149
    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1a

    .line 152
    :cond_10
    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :goto_1a
    return-void
.end method

.method public setViewOnOff(Z)V
    .registers 4
    .param p1, "on"    # Z

    .line 158
    if-eqz p1, :cond_9

    .line 159
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 162
    :cond_9
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :goto_10
    return-void
.end method

.method public startAnimation()V
    .registers 5

    .line 171
    iget-wide v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_22

    .line 172
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->durationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_39

    .line 174
    :cond_22
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 175
    :goto_39
    return-void
.end method

.method public stopAnimation()V
    .registers 4

    .line 178
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 179
    return-void
.end method

.method public updateView(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 127
    iget v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    if-nez v0, :cond_c

    .line 128
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->pointCorrection:I

    .line 130
    :cond_c
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 131
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_35

    .line 133
    :cond_27
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 136
    :goto_35
    iget-object v0, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    iget-object v2, p0, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 139
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;

    invoke-direct {v1, p0}, Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI$1;-><init>(Ljava/com/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method
