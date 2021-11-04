.class public final synthetic Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/hardware/usb/UsbDevice;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;->f$0:Landroid/hardware/usb/UsbDevice;

    iput p2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;->f$1:I

    iput-object p3, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;->f$0:Landroid/hardware/usb/UsbDevice;

    iget v1, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;->f$1:I

    iget-object v2, p0, Lcom/samsung/android/knox/custom/-$$Lambda$KnoxCustomManagerService$LoqCEZT2nHC3kDLv1AsGPuU-oUU;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setUsbDeviceDefaultPackage$50(Landroid/hardware/usb/UsbDevice;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
