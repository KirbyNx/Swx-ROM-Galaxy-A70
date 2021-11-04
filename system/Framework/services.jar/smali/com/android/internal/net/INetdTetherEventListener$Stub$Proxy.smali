.class Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdTetherEventListener.java"

# interfaces
.implements Lcom/android/internal/net/INetdTetherEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/INetdTetherEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/net/INetdTetherEventListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 90
    # getter for: Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTetherStart()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 98
    .local v1, "_status":Z
    if-nez v1, :cond_26

    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->getDefaultImpl()Lcom/android/internal/net/INetdTetherEventListener;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 99
    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->getDefaultImpl()Lcom/android/internal/net/INetdTetherEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/INetdTetherEventListener;->onTetherStart()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    return-void

    .line 104
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    nop

    .line 106
    return-void

    .line 104
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw v1
.end method

.method public onTetherStop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/INetdTetherEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/internal/net/INetdTetherEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 113
    .local v1, "_status":Z
    if-nez v1, :cond_27

    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->getDefaultImpl()Lcom/android/internal/net/INetdTetherEventListener;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 114
    invoke-static {}, Lcom/android/internal/net/INetdTetherEventListener$Stub;->getDefaultImpl()Lcom/android/internal/net/INetdTetherEventListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/INetdTetherEventListener;->onTetherStop()V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    return-void

    .line 119
    .end local v1    # "_status":Z
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw v1
.end method
