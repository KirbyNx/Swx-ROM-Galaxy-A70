.class public Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDiscoveryResultCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/IDiscoveryResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/IDiscoveryResultCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.IDiscoveryResultCallback"

    return-object v0
.end method

.method public onDeviceDiscoverd(Landroid/os/PersistableBundle;IILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.IDiscoveryResultCallback"

    .line 102
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 114
    invoke-static {}, Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/IDiscoveryResultCallback;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 115
    invoke-static {}, Lcom/samsung/android/mcf/IDiscoveryResultCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/IDiscoveryResultCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/mcf/IDiscoveryResultCallback;->onDeviceDiscoverd(Landroid/os/PersistableBundle;IILjava/lang/String;)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_3b

    .line 120
    :cond_37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3b
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw p1
.end method
