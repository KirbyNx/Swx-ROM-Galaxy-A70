.class public final synthetic Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput p2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$1:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$3:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$4:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget v1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$1:I

    iget-object v2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$3:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$e3Hs7S0HeflOZ1MnhRKUxHUN5Zc;->f$4:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$refreshSystemKeyStoreAsUser$3$RollbackRefreshOperation(ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method
