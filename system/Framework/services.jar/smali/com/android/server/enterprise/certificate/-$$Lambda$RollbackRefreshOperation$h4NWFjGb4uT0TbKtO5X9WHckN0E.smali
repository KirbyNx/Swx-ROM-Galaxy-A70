.class public final synthetic Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iput-object p2, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    iget-object v1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$h4NWFjGb4uT0TbKtO5X9WHckN0E;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->lambda$execute$0$RollbackRefreshOperation(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
