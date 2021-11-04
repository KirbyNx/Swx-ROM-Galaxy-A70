.class public Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcfMessageCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    return-object v0
.end method

.method public onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    .line 180
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 186
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 191
    invoke-static {}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 192
    invoke-static {}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;->onMessageDeviceStatus(Landroid/os/PersistableBundle;II)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_39

    .line 197
    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_39
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw p1
.end method

.method public onMessageReceived(Landroid/os/PersistableBundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_18
    iget-object v2, p0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 167
    invoke-static {}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 168
    invoke-static {}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;->onMessageReceived(Landroid/os/PersistableBundle;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_33

    .line 173
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_33
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw p1
.end method

.method public onMessageResult(Landroid/os/PersistableBundle;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.messaging.IMcfMessageCallback"

    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 136
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v1, p0, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 145
    invoke-static {}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 146
    invoke-static {}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback;->onMessageResult(Landroid/os/PersistableBundle;II)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_38

    .line 151
    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw p1
.end method
