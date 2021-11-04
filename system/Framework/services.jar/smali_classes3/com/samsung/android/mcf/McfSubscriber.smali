.class public interface abstract Lcom/samsung/android/mcf/McfSubscriber;
.super Ljava/lang/Object;
.source "McfSubscriber.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract closeMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract getMessagingDeviceRssi(JLcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract isNetworkEnabled(I)Z
.end method

.method public abstract keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
.end method

.method public abstract openMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
.end method

.method public abstract sendMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
.end method

.method public abstract setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
.end method

.method public abstract setTargetUwbParam(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Ljava/lang/String;[BI)Z
.end method

.method public abstract startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
.end method

.method public abstract startHandover(Lcom/samsung/android/mcf/handover/McfHandoverData;)Z
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

.method public abstract stopScanWithFlush(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
.end method

.method public abstract stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
.end method

.method public abstract unregisterHandoverCallback()V
.end method
