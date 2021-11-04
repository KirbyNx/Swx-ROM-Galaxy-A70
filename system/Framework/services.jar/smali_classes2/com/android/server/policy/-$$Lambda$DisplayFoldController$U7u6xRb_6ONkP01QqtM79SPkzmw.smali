.class public final synthetic Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Landroid/view/ITentModeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Landroid/view/ITentModeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput-object p2, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;->f$1:Landroid/view/ITentModeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget-object v1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$U7u6xRb_6ONkP01QqtM79SPkzmw;->f$1:Landroid/view/ITentModeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->lambda$registerTentModeListener$6$DisplayFoldController(Landroid/view/ITentModeListener;)V

    return-void
.end method
