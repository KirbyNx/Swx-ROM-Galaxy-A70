.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$jEsVcK6-e5WgVzBPrvIwE_3NYIA;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setScreenOffOnHomeLongPressState$81$KnoxCustomManagerService(IZ)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
