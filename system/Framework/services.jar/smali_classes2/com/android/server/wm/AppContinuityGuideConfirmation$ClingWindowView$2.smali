.class Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$2;
.super Ljava/lang/Object;
.source "AppContinuityGuideConfirmation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->lambda$onAttachedToWindow$2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    .line 361
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 364
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 365
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView$2;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;

    # getter for: Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-static {v1}, Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;->access$600(Lcom/android/server/wm/AppContinuityGuideConfirmation$ClingWindowView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 366
    return-void
.end method
