.class public final synthetic Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$zTdJDc8ojYyi7Nt8Lrksp60u3SY;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$getUsersKeystoreUnlocked$4$RollbackRefreshOperation(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
