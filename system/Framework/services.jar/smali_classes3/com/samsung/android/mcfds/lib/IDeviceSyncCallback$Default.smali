.class public Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Default;
.super Ljava/lang/Object;
.source "IDeviceSyncCallback.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeviceFound(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "myAccountDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method

.method public onDeviceLost(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "myAccountDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onDeviceUpdated(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "myAccountDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
