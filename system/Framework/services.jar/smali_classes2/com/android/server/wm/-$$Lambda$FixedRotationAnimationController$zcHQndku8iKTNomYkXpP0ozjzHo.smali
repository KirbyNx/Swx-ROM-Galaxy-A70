.class public final synthetic Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FixedRotationAnimationController;

.field public final synthetic f$1:Lcom/android/server/wm/WindowToken;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FixedRotationAnimationController;Lcom/android/server/wm/WindowToken;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;->f$0:Lcom/android/server/wm/FixedRotationAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;->f$1:Lcom/android/server/wm/WindowToken;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;->f$0:Lcom/android/server/wm/FixedRotationAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$FixedRotationAnimationController$zcHQndku8iKTNomYkXpP0ozjzHo;->f$1:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/FixedRotationAnimationController;->lambda$fadeWindowToken$1$FixedRotationAnimationController(Lcom/android/server/wm/WindowToken;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
