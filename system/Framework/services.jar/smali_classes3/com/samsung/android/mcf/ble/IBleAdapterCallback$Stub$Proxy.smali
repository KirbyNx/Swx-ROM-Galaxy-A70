.class public Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBleAdapterCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/IBleAdapterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdapterCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.ble.IBleAdapterCallback"

    return-object v0
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ble.IBleAdapterCallback"

    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 105
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 106
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdapterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ble/IBleAdapterCallback;->onMcfServiceStateChanged(II)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 111
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    throw p1
.end method
