.class public interface abstract Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;
.super Ljava/lang/Object;
.source "IDeviceSyncCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;,
        Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onDeviceFound(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceLost(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDeviceUpdated(Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
