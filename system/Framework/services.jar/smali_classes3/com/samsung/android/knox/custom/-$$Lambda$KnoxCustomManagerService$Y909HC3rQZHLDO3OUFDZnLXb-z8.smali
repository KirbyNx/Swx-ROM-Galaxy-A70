.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$2:I

    iput-boolean p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$1:I

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$2:I

    iget-boolean v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$Y909HC3rQZHLDO3OUFDZnLXb-z8;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarClockState$114$KnoxCustomManagerService(IIZ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
