.class public Lcom/android/server/pm/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/FastBitmapDrawable$State;
    }
.end annotation


# static fields
.field public static final CLICK_FEEDBACK_DURATION:I = 0x7d0

.field public static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FAST_SCROLL_HIGHLIGHT_DURATION:I = 0xe1

.field public static final FAST_SCROLL_INACTIVE_DURATION:I = 0x113

.field public static final FAST_SCROLL_UNHIGHLIGHT_DURATION:I = 0x96

.field public static final FAST_SCROLL_UNHIGHLIGHT_FROM_NORMAL_DURATION:I = 0xe1

.field private static final REDUCED_FILTER_VALUE_SPACE:I = 0x30

.field private static final sCachedFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mDesaturation:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I

.field private mPropertyAnimator:Landroid/animation/AnimatorSet;

.field private mState:Lcom/android/server/pm/FastBitmapDrawable$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/android/server/pm/FastBitmapDrawable$1;

    invoke-direct {v0}, Lcom/android/server/pm/FastBitmapDrawable$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    .line 78
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 94
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 82
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$State;->NORMAL:Lcom/android/server/pm/FastBitmapDrawable$State;

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    .line 87
    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    .line 88
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    .line 89
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 95
    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/android/server/pm/FastBitmapDrawable;->setBounds(IIII)V

    .line 97
    return-void
.end method

.method private cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 3
    .param p1, "animator"    # Landroid/animation/AnimatorSet;

    .line 336
    if-eqz p1, :cond_8

    .line 337
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 338
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 340
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDurationForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I
    .registers 8
    .param p0, "fromState"    # Lcom/android/server/pm/FastBitmapDrawable$State;
    .param p1, "toState"    # Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 209
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/16 v2, 0xe1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_39

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2b

    const/4 v2, 0x0

    if-eq v0, v4, :cond_18

    .line 231
    return v2

    .line 211
    :cond_18
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v1, :cond_2a

    if-eq v0, v3, :cond_27

    if-eq v0, v5, :cond_27

    goto :goto_3a

    .line 216
    :cond_27
    const/16 v0, 0x113

    return v0

    .line 213
    :cond_2a
    return v2

    .line 223
    :cond_2b
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_38

    .line 228
    const/16 v0, 0x96

    return v0

    .line 226
    :cond_38
    return v2

    .line 221
    :cond_39
    return v2

    .line 219
    :cond_3a
    :goto_3a
    const/16 v0, 0x7d0

    return v0
.end method

.method public static getStartDelayForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I
    .registers 4
    .param p0, "fromState"    # Lcom/android/server/pm/FastBitmapDrawable$State;
    .param p1, "toState"    # Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 238
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p1}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_17

    .line 240
    :cond_c
    sget-object v0, Lcom/android/server/pm/FastBitmapDrawable$2;->$SwitchMap$com$android$server$pm$FastBitmapDrawable$State:[I

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_19

    .line 245
    :goto_17
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_19
    const/16 v0, 0x25

    return v0
.end method

.method private updateFilter()V
    .registers 11

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "usePorterDuffFilter":Z
    const/4 v1, -0x1

    .line 284
    .local v1, "key":I
    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    if-lez v2, :cond_d

    .line 285
    shl-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    or-int v1, v2, v3

    goto :goto_16

    .line 286
    :cond_d
    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-lez v2, :cond_16

    .line 288
    const/high16 v3, 0x10000

    or-int v1, v2, v3

    .line 292
    const/4 v0, 0x1

    .line 296
    :cond_16
    :goto_16
    iget v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v1, v2, :cond_1b

    .line 297
    return-void

    .line 299
    :cond_1b
    iput v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 301
    const/4 v2, -0x1

    if-eq v1, v2, :cond_8d

    .line 302
    sget-object v2, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorFilter;

    .line 303
    .local v2, "filter":Landroid/graphics/ColorFilter;
    if-nez v2, :cond_87

    .line 304
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBrightness()F

    move-result v3

    .line 305
    .local v3, "brightnessF":F
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 306
    .local v4, "brightnessI":I
    if-eqz v0, :cond_43

    .line 307
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const/16 v6, 0xff

    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v2, v5

    goto :goto_82

    .line 310
    :cond_43
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getDesaturation()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 311
    .local v5, "saturationF":F
    sget-object v7, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v7, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 312
    iget v7, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-lez v7, :cond_7a

    .line 314
    sub-float/2addr v6, v3

    .line 315
    .local v6, "scale":F
    sget-object v7, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v7}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v7

    .line 316
    .local v7, "mat":[F
    const/4 v8, 0x0

    aput v6, v7, v8

    .line 317
    const/4 v8, 0x6

    aput v6, v7, v8

    .line 318
    const/16 v8, 0xc

    aput v6, v7, v8

    .line 319
    const/4 v8, 0x4

    int-to-float v9, v4

    aput v9, v7, v8

    .line 320
    const/16 v8, 0x9

    int-to-float v9, v4

    aput v9, v7, v8

    .line 321
    const/16 v8, 0xe

    int-to-float v9, v4

    aput v9, v7, v8

    .line 322
    sget-object v8, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v9, Lcom/android/server/pm/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v8, v9}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 324
    .end local v6    # "scale":F
    .end local v7    # "mat":[F
    :cond_7a
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v7, Lcom/android/server/pm/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v6, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object v2, v6

    .line 326
    .end local v5    # "saturationF":F
    :goto_82
    sget-object v5, Lcom/android/server/pm/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 328
    .end local v3    # "brightnessF":F
    .end local v4    # "brightnessI":I
    :cond_87
    iget-object v3, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 329
    .end local v2    # "filter":Landroid/graphics/ColorFilter;
    goto :goto_93

    .line 330
    :cond_8d
    iget-object v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 332
    :goto_93
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->invalidateSelf()V

    .line 333
    return-void
.end method


# virtual methods
.method public animateState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z
    .registers 9
    .param p1, "newState"    # Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 161
    .local v0, "prevState":Lcom/android/server/pm/FastBitmapDrawable$State;
    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    const/4 v2, 0x0

    if-eq v1, p1, :cond_5c

    .line 162
    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 164
    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v1}, Lcom/android/server/pm/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    .line 165
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    .line 166
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x1

    new-array v5, v4, [F

    iget v6, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    aput v6, v5, v2

    .line 168
    const-string v6, "desaturation"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v2

    new-array v5, v4, [F

    iget v6, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    aput v6, v5, v2

    .line 170
    const-string v2, "brightness"

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v4

    .line 166
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/server/pm/FastBitmapDrawable;->getDurationForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 173
    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v0, p1}, Lcom/android/server/pm/FastBitmapDrawable;->getStartDelayForStateChange(Lcom/android/server/pm/FastBitmapDrawable$State;Lcom/android/server/pm/FastBitmapDrawable$State;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 174
    iget-object v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 175
    return v4

    .line 177
    :cond_5c
    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBrightness()F
    .registers 3

    .line 275
    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getCurrentState()Lcom/android/server/pm/FastBitmapDrawable$State;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    return-object v0
.end method

.method public getDesaturation()F
    .registers 3

    .line 260
    iget v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 147
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcom/android/server/pm/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 111
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 116
    iput p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mAlpha:I

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    return-void
.end method

.method public setBrightness(F)V
    .registers 4
    .param p1, "brightness"    # F

    .line 267
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 268
    .local v0, "newBrightness":I
    iget v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    if-eq v1, v0, :cond_12

    .line 269
    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mBrightness:I

    .line 270
    invoke-direct {p0}, Lcom/android/server/pm/FastBitmapDrawable;->updateFilter()V

    .line 272
    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .line 107
    return-void
.end method

.method public setDesaturation(F)V
    .registers 4
    .param p1, "desaturation"    # F

    .line 252
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 253
    .local v0, "newDesaturation":I
    iget v1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    if-eq v1, v0, :cond_12

    .line 254
    iput v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mDesaturation:I

    .line 255
    invoke-direct {p0}, Lcom/android/server/pm/FastBitmapDrawable;->updateFilter()V

    .line 257
    :cond_12
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3
    .param p1, "filterBitmap"    # Z

    .line 122
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    return-void
.end method

.method public setState(Lcom/android/server/pm/FastBitmapDrawable$State;)Z
    .registers 3
    .param p1, "newState"    # Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    if-eq v0, p1, :cond_1a

    .line 187
    iput-object p1, p0, Lcom/android/server/pm/FastBitmapDrawable;->mState:Lcom/android/server/pm/FastBitmapDrawable$State;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->cancelAnimator(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/FastBitmapDrawable;->mPropertyAnimator:Landroid/animation/AnimatorSet;

    .line 191
    iget v0, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->desaturation:F

    invoke-virtual {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->setDesaturation(F)V

    .line 192
    iget v0, p1, Lcom/android/server/pm/FastBitmapDrawable$State;->brightness:F

    invoke-virtual {p0, v0}, Lcom/android/server/pm/FastBitmapDrawable;->setBrightness(F)V

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
