.class public final synthetic Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput p2, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget v1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$irbVkit6W0P93e4Q0tV_8cbpT70;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->lambda$sendFoldStateChangedEvent$4$DisplayFoldController(I)V

    return-void
.end method
