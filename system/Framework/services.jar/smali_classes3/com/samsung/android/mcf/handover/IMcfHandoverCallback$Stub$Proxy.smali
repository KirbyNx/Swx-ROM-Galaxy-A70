.class public Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcfHandoverCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    return-object v0
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    .line 263
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 269
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-object v2, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 273
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 274
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 279
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw p1
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    .line 240
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 246
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v2, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 250
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 251
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 256
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw p1
.end method

.method public onHandoverRequest(Landroid/os/PersistableBundle;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 181
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 182
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onHandoverRequest(Landroid/os/PersistableBundle;II)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_38

    .line 187
    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw p1
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    .line 217
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 219
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 223
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v2, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 227
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 228
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 233
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw p1
.end method

.method public onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.handover.IMcfHandoverCallback"

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 200
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v2, p0, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 204
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 205
    invoke-static {}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/handover/IMcfHandoverCallback;->onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 210
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    throw p1
.end method
