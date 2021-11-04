.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$sojo3IuMcAnRhazbqM-yTyefwi4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$sojo3IuMcAnRhazbqM-yTyefwi4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$sojo3IuMcAnRhazbqM-yTyefwi4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$sojo3IuMcAnRhazbqM-yTyefwi4;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-boolean v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$sojo3IuMcAnRhazbqM-yTyefwi4;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setLcdBacklightState$73$KnoxCustomManagerService(Z)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
