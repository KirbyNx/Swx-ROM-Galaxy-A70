.class Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISimpleCallback.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 88
    const-string v0, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    return-object v0
.end method

.method public onCallback(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.common.ISimpleCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 96
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/os/Message;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 100
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_17
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 103
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 104
    invoke-static {}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/mcfds/lib/common/ISimpleCallback;->onCallback(Landroid/os/Message;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 109
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    nop

    .line 111
    return-void

    .line 109
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 110
    throw v1
.end method
