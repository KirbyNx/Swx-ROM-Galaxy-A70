.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IIILjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$2:I

    iput p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$3:I

    iput-object p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$1:I

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$2:I

    iget v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$3:I

    iget-object v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$-UGvRr2YITDSn5IxQgO_rWedAVk;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setStatusBarText$85$KnoxCustomManagerService(IIILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
