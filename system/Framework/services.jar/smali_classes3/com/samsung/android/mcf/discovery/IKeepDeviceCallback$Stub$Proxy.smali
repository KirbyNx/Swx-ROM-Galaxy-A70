.class public Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeepDeviceCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.discovery.IKeepDeviceCallback"

    return-object v0
.end method

.method public onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IKeepDeviceCallback"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 108
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 109
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback;->onKeepDeviceStateCallback(Landroid/os/PersistableBundle;I)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_35

    .line 114
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw p1
.end method
