.class public final synthetic Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$TrustedStoreOperation$7jjEUCBWrQvESFHnrFEfEdJeIIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$TrustedStoreOperation$7jjEUCBWrQvESFHnrFEfEdJeIIY;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/-$$Lambda$RollbackRefreshOperation$TrustedStoreOperation$7jjEUCBWrQvESFHnrFEfEdJeIIY;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->lambda$doInBackground$0$RollbackRefreshOperation$TrustedStoreOperation()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
