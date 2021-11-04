.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$VRdyYSz0mCBN4pgcHJOSGmi8pCY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$Task$VRdyYSz0mCBN4pgcHJOSGmi8pCY;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$Task$VRdyYSz0mCBN4pgcHJOSGmi8pCY;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/Task;->lambda$applyAnimationUnchecked$14(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method
