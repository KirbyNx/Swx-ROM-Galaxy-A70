.class Lcom/android/server/sepunion/cover/CoverHideAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverHideAnimator;

    .line 122
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 126
    sget-boolean v0, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v0, :cond_10

    .line 127
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    # getter for: Lcom/android/server/sepunion/cover/CoverHideAnimator;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->access$000(Lcom/android/server/sepunion/cover/CoverHideAnimator;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onFadeOutAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_10
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/sepunion/cover/CoverHideAnimator;

    # invokes: Lcom/android/server/sepunion/cover/CoverHideAnimator;->removeViewFromWindow()V
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->access$800(Lcom/android/server/sepunion/cover/CoverHideAnimator;)V

    .line 131
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 132
    return-void
.end method
