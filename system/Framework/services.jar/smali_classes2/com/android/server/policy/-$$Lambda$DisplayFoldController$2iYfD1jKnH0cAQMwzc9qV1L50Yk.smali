.class public final synthetic Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$2iYfD1jKnH0cAQMwzc9qV1L50Yk;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->lambda$setTentMode$5$DisplayFoldController(Z)V

    return-void
.end method
