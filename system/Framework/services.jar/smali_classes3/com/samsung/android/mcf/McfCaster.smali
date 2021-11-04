.class public interface abstract Lcom/samsung/android/mcf/McfCaster;
.super Ljava/lang/Object;
.source "McfCaster.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract confirmUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/McfDevice;Z)Z
.end method

.method public abstract isNetworkEnabled(I)Z
.end method

.method public abstract openMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract registerAdvertiseData(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
.end method

.method public abstract registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
.end method

.method public abstract sendHandoverResponse(Lcom/samsung/android/mcf/handover/McfHandoverData;Z)Z
.end method

.method public abstract sendResponseMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
.end method

.method public abstract startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
.end method

.method public abstract startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
.end method

.method public abstract startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
.end method

.method public abstract stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
.end method

.method public abstract stopHandover()Z
.end method

.method public abstract stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
.end method

.method public abstract stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
.end method

.method public abstract unregisterAdvertiseData(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
.end method

.method public abstract unregisterHandoverCallback()V
.end method

.method public abstract updateAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
.end method
