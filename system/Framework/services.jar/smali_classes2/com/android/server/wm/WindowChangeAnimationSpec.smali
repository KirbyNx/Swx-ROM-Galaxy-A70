.class public Lcom/android/server/wm/WindowChangeAnimationSpec;
.super Ljava/lang/Object;
.source "WindowChangeAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0x150

.field static final RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mIsAppAnimation:Z

.field private final mIsThumbnail:Z

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransitChangeMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 68
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V
    .registers 15
    .param p1, "startBounds"    # Landroid/graphics/Rect;
    .param p2, "endBounds"    # Landroid/graphics/Rect;
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "durationScale"    # F
    .param p5, "isAppAnimation"    # Z
    .param p6, "isThumbnail"    # Z

    .line 75
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZI)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZI)V
    .registers 10
    .param p1, "startBounds"    # Landroid/graphics/Rect;
    .param p2, "endBounds"    # Landroid/graphics/Rect;
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p4, "durationScale"    # F
    .param p5, "isAppAnimation"    # Z
    .param p6, "isThumbnail"    # Z
    .param p7, "changeTransitMode"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowChangeAnimationSpec$J5jIvng4n-ctFR8T6L2f_W3o1KU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowChangeAnimationSpec$J5jIvng4n-ctFR8T6L2f_W3o1KU;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 85
    iput-boolean p5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    .line 86
    iput-boolean p6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    .line 88
    iput p7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTransitChangeMode:I

    .line 89
    const/high16 v0, 0x43a80000    # 336.0f

    const/4 v1, 0x2

    if-ne p7, v1, :cond_32

    .line 91
    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createClosingAppBoundsInterpolator(J)V

    goto :goto_38

    .line 94
    :cond_32
    mul-float/2addr v0, p4

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/wm/WindowChangeAnimationSpec;->createBoundsInterpolator(JLandroid/view/DisplayInfo;)V

    .line 96
    :goto_38
    return-void
.end method

.method private createBoundsInterpolator(JLandroid/view/DisplayInfo;)V
    .registers 23
    .param p1, "duration"    # J
    .param p3, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 120
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ltz v4, :cond_26

    move v4, v5

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 122
    .local v4, "growing":Z
    :goto_27
    const v7, 0x3f333333    # 0.7f

    .line 123
    .local v7, "scalePart":F
    long-to-float v8, v1

    mul-float/2addr v8, v7

    float-to-long v8, v8

    .line 124
    .local v8, "scalePeriod":J
    iget-object v10, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    iget-object v11, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v7

    add-float/2addr v10, v12

    .line 126
    .local v10, "startScaleX":F
    iget-object v12, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    iget-object v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    sub-float v13, v11, v7

    add-float/2addr v12, v13

    .line 128
    .local v12, "startScaleY":F
    iget-boolean v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v13, :cond_af

    .line 129
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v6

    .line 130
    .local v5, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v13, 0x0

    invoke-direct {v6, v11, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 131
    .local v6, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 132
    if-nez v4, :cond_6f

    .line 133
    sub-long v13, v1, v8

    invoke-virtual {v6, v13, v14}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 135
    :cond_6f
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 136
    div-float v13, v11, v10

    .line 137
    .local v13, "endScaleX":F
    div-float/2addr v11, v12

    .line 138
    .local v11, "endScaleY":F
    new-instance v14, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v14, v13, v13, v11, v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    move-object v6, v14

    .line 139
    invoke-virtual {v6, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 140
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iput-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 144
    sget-object v14, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v14}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 147
    iget-object v14, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v15, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    move-object/from16 v16, v5

    .end local v5    # "animSet":Landroid/view/animation/AnimationSet;
    .local v16, "animSet":Landroid/view/animation/AnimationSet;
    iget-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v17, v6

    .end local v6    # "anim":Landroid/view/animation/Animation;
    .local v17, "anim":Landroid/view/animation/Animation;
    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    .line 148
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move/from16 v18, v7

    .end local v7    # "scalePart":F
    .local v18, "scalePart":F
    iget-object v7, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 147
    invoke-virtual {v14, v15, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 149
    .end local v11    # "endScaleY":F
    .end local v13    # "endScaleX":F
    .end local v16    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v17    # "anim":Landroid/view/animation/Animation;
    move/from16 v16, v4

    goto/16 :goto_127

    .line 150
    .end local v18    # "scalePart":F
    .restart local v7    # "scalePart":F
    :cond_af
    move/from16 v18, v7

    .end local v7    # "scalePart":F
    .restart local v18    # "scalePart":F
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v5, v7

    .line 151
    .restart local v5    # "animSet":Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v7, v10, v11, v12, v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 152
    .local v7, "scaleAnim":Landroid/view/animation/Animation;
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    if-nez v4, :cond_c6

    .line 154
    sub-long v13, v1, v8

    invoke-virtual {v7, v13, v14}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 156
    :cond_c6
    invoke-virtual {v5, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    iget-object v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-direct {v11, v13, v14, v15, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v6, v11

    .line 159
    .local v6, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v6, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 161
    new-instance v11, Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 162
    .local v11, "startClip":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v13, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 163
    .local v13, "endClip":Landroid/graphics/Rect;
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 164
    invoke-virtual {v13, v14, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 165
    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v14, v11, v13}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 166
    .local v14, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v14, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 167
    invoke-virtual {v5, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 168
    iput-object v5, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 171
    sget-object v15, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v15}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 174
    iget-object v15, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v0, v3, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v16, v4

    .end local v4    # "growing":Z
    .local v16, "growing":Z
    iget v4, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v15, v1, v2, v0, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 177
    .end local v5    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v6    # "translateAnim":Landroid/view/animation/Animation;
    .end local v7    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v11    # "startClip":Landroid/graphics/Rect;
    .end local v13    # "endClip":Landroid/graphics/Rect;
    .end local v14    # "clipAnim":Landroid/view/animation/Animation;
    :goto_127
    return-void
.end method

.method private createClosingAppBoundsInterpolator(J)V
    .registers 11
    .param p1, "duration"    # J

    .line 249
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 250
    .local v0, "animSet":Landroid/view/animation/AnimationSet;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_18

    .line 251
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 252
    .local v1, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 254
    .end local v1    # "anim":Landroid/view/animation/Animation;
    goto :goto_52

    .line 255
    :cond_18
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 256
    .local v1, "startClip":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 257
    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v1, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 258
    .local v2, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 259
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 261
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 263
    .local v3, "translateAnim":Landroid/view/animation/Animation;
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 265
    sget-object v4, Lcom/android/server/wm/WindowChangeAnimationSpec;->RESIZE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 267
    .end local v1    # "startClip":Landroid/graphics/Rect;
    .end local v2    # "clipAnim":Landroid/view/animation/Animation;
    .end local v3    # "translateAnim":Landroid/view/animation/Animation;
    :goto_52
    iput-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 268
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    .line 269
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 268
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 270
    return-void
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    .registers 2

    .line 56
    new-instance v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowChangeAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;

    .line 182
    .local v0, "tmp":Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsThumbnail:Z

    if-eqz v1, :cond_29

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 184
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 185
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_b8

    .line 187
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 188
    iget-object v1, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 189
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mFloats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 193
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    aput v6, v2, v3

    .line 194
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v3, 0x0

    aput v5, v2, v3

    .line 195
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 196
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v6, v6, v3

    div-float v6, v5, v6

    aput v6, v2, v3

    .line 197
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v6, v6, v4

    div-float/2addr v5, v6

    aput v5, v2, v4

    .line 198
    iget-object v2, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 199
    .local v2, "clipRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v7, v7, v3

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 200
    iget-object v5, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget-object v8, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v3, v8, v3

    mul-float/2addr v6, v3

    add-float/2addr v6, v7

    float-to-int v3, v6

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 201
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v6, v6, v4

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 202
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mVecs:[F

    aget v4, v6, v4

    mul-float/2addr v5, v4

    add-float/2addr v5, v7

    float-to-int v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 203
    iget-object v3, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 206
    iget-object v3, v0, Lcom/android/server/wm/WindowChangeAnimationSpec$TmpValues;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 210
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "clipRect":Landroid/graphics/Rect;
    :goto_b8
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 215
    .local v0, "uptime":J
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x3f7d70a4    # 0.99f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 232
    return-void
.end method

.method public dumpDebugInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 236
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 237
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 239
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/android/server/wm/WindowChangeAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method
