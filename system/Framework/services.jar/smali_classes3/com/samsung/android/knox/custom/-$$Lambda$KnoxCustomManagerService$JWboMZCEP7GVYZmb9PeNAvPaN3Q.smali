.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ILjava/util/List;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$2:Ljava/util/List;

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$2:Ljava/util/List;

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$JWboMZCEP7GVYZmb9PeNAvPaN3Q;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setDexForegroundModePackageList$9$KnoxCustomManagerService(ILjava/util/List;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
