.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$3:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$2:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$3:Landroid/os/ParcelFileDescriptor;

    iput p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$4:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget-object v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$2:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$3:Landroid/os/ParcelFileDescriptor;

    iget v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$xJp9iwI4DV6WkWNm4yZLvjxDanA;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setBootingAnimation$105$KnoxCustomManagerService(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
