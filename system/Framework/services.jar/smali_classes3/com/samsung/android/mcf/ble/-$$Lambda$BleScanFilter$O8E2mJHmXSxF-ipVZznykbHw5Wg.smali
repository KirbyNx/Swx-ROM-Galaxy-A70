.class public final synthetic Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/ble/BleScanFilter;

.field public final synthetic f$1:Landroid/bluetooth/le/ScanFilter$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/ble/BleScanFilter;Landroid/bluetooth/le/ScanFilter$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;->f$0:Lcom/samsung/android/mcf/ble/BleScanFilter;

    iput-object p2, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;->f$1:Landroid/bluetooth/le/ScanFilter$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;->f$0:Lcom/samsung/android/mcf/ble/BleScanFilter;

    iget-object v1, p0, Lcom/samsung/android/mcf/ble/-$$Lambda$BleScanFilter$O8E2mJHmXSxF-ipVZznykbHw5Wg;->f$1:Landroid/bluetooth/le/ScanFilter$Builder;

    check-cast p1, [B

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/mcf/ble/BleScanFilter;->lambda$toScanFilter$2$BleScanFilter(Landroid/bluetooth/le/ScanFilter$Builder;[B)V

    return-void
.end method
