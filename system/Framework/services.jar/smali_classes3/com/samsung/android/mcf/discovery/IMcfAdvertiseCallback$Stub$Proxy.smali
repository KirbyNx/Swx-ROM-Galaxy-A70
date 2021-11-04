.class public Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcfAdvertiseCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

    return-object v0
.end method

.method public onAdvertiseStarted(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

    .line 100
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 103
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 104
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;->onAdvertiseStarted(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 109
    :cond_23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    throw p1
.end method

.method public onAdvertiseStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IMcfAdvertiseCallback"

    .line 116
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 119
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 120
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback;->onAdvertiseStopped(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 125
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw p1
.end method
