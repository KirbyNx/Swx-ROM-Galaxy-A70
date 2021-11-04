.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$7:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/ComponentName;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$1:I

    iput p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$2:I

    iput-object p4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$6:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$7:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$1:I

    iget v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$2:I

    iget-object v3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$6:Landroid/os/ParcelFileDescriptor;

    iget-object v7, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$GolZifQGQSPJ_OHOCR-Ra8cvHE8;->f$7:Landroid/content/ComponentName;

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$addDexURLShortcutExtend$1$KnoxCustomManagerService(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
