.class public interface abstract Lcom/samsung/android/mcf/ble/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# virtual methods
.method public abstract startScan(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/mcf/ble/BleScanSettings;Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/ble/BleScanFilter;",
            ">;",
            "Lcom/samsung/android/mcf/ble/BleScanSettings;",
            "Lcom/samsung/android/mcf/ble/BleScanCallback;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract stopScan(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
.end method
