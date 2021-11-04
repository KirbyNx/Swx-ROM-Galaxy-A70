.class public Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemInsyncEventListener.java"

# interfaces
.implements Lcom/samsung/android/net/ISemInsyncEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/net/ISemInsyncEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/net/ISemInsyncEventListener;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.net.ISemInsyncEventListener"

    return-object v0
.end method

.method public onConfirmed(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.net.ISemInsyncEventListener"

    .line 137
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v2, p0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 140
    invoke-static {}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 141
    invoke-static {}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/net/ISemInsyncEventListener;->onConfirmed(Z)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_32

    .line 147
    :goto_27
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 144
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_27

    .line 148
    :catchall_32
    move-exception p1

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw p1
.end method

.method public onTapEvent()Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.samsung.android.net.ISemInsyncEventListener"

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/samsung/android/net/ISemInsyncEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 115
    invoke-static {}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 116
    invoke-static {}, Lcom/samsung/android/net/ISemInsyncEventListener$Stub;->getDefaultImpl()Lcom/samsung/android/net/ISemInsyncEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/net/ISemInsyncEventListener;->onTapEvent()Landroid/content/Intent;

    move-result-object v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_40

    .line 127
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    .line 118
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 120
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_40

    goto :goto_25

    :cond_3e
    const/4 v2, 0x0

    goto :goto_25

    .line 128
    :catchall_40
    move-exception v2

    .line 127
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw v2
.end method
