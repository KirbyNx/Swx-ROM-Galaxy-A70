.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;->f$1:I

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$s9UehJyl6L799X9kaWn2rUpJH6U;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setHideNotificationMessages$16$KnoxCustomManagerService(II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
