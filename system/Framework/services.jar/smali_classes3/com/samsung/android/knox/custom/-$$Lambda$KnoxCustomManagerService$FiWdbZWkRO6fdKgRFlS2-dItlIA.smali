.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$2:Z

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$1:I

    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$2:Z

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$FiWdbZWkRO6fdKgRFlS2-dItlIA;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setSettingsEnabledItems$26$KnoxCustomManagerService(IZI)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
