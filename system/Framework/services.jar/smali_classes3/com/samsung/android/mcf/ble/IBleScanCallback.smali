.class public interface abstract Lcom/samsung/android/mcf/ble/IBleScanCallback;
.super Ljava/lang/Object;
.source "IBleScanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;,
        Lcom/samsung/android/mcf/ble/IBleScanCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onScanFailed(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
