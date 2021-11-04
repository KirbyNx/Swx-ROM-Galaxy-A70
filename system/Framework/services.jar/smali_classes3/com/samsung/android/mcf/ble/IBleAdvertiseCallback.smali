.class public interface abstract Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;
.super Ljava/lang/Object;
.source "IBleAdvertiseCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;,
        Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onAdvertisingStarted(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAdvertisingStopped()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
